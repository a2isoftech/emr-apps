import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_crm/keys.dart';
import 'package:emr_one_crm/screens/parties/parties_filter_controller.dart';
import 'package:emr_one_crm/screens/parties/parties_screen_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class PartiesScreen extends StatefulWidget {
  PartiesScreen({
    required this.client,
    required this.appConfig,
    required this.userInfoService,
    required this.settingsController,
    super.key,
  });

  final BaseClient client;

  final AppConfig appConfig;

  final UserInfoService userInfoService;
  final SettingsController settingsController;

  final ScrollController scrollController = ScrollController();

  @override
  State<PartiesScreen> createState() => _PartiesScreenState();
}

class _PartiesScreenState extends State<PartiesScreen> {
  late final PartiesScreenController controller;

  @override
  void initState() {
    super.initState();

    controller = PartiesScreenController(
      client: widget.client,
      appConfig: widget.appConfig,
      userInfoService: widget.userInfoService,
      settingsController: widget.settingsController,
      coreApiService: context.coreApi,
    );

    final accountTypeFilter = EmrFilterModel<List<String>>(
      key: PartiesFilterController.kAccountType,
      name: 'AccountType',
      text: 'Business',
      value: const ['TaxRegistered'],
    );
    controller.filterController.filters.value = [
      ...controller.filterController.filters.value,
      accountTypeFilter,
    ];
  }

  @override
  void dispose() {
    controller.dispose();
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.scrollController.addListener(
      () {
        final nextPageTrigger =
            0.8 * widget.scrollController.position.maxScrollExtent;
        if (widget.scrollController.position.pixels > nextPageTrigger) {
          controller.searchChanged(loadNext: true);
        }
      },
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            right: Insets.gutter,
            left: Insets.gutter,
          ),
          child: TextField(
            key: K.partySearchTextField,
            autofocus: kIsWeb,
            autocorrect: false,
            decoration: FormStyles.textFieldDecoration(context)
                .copyWith(labelText: context.l10n.search),
            onChanged: (query) {
              controller.query = query.trim();

              controller.searchChanged();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: EmrFilter(
            controller: controller.filterController,
          ),
        ),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: controller.busy,
            builder: (BuildContext context, value, Widget? child) {
              return ValueListenableBuilder(
                valueListenable: controller.gridController.data,
                builder: (BuildContext context2, value2, Widget? child2) {
                  return Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: _grid(context2),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _grid(BuildContext context) {
    if (controller.busy.value && !controller.isLoadingNextPage.value) {
      return const Center(child: CircularProgressIndicator());
    }

    if (controller.gridController.data.value.isEmpty) {
      return Center(child: Text(context.l10n.noResults));
    }

    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);

    final appConfig = Provider.of<AppConfig>(context);
    final theme = Theme.of(context);

    return Stack(
      children: [
        Positioned(
          child: RefreshIndicator(
            onRefresh: () => controller.searchChanged(
              forceLoad: true,
              setBusy: false,
            ),
            child: EmrGrid<Account>(
              controller: controller.gridController,
              onRowTapped: (row) {
                context.goNamed(
                  NamedRoutes.traderParty,
                  params: {
                    'partyAccountNo': row.code ?? '',
                  },
                );
              },
              verticalScrollController: widget.scrollController,
              columns: [
                EmrGridColumn(
                  flex: 4,
                  headerBuilder: () => Text(
                    context.l10n.partyAccountNo,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (Account rowItem) => Text(
                    rowItem.code ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                EmrGridColumn(
                  flex: 6,
                  headerBuilder: () => Text(
                    context.l10n.partyName,
                    style: headerTextStyle,
                  ),
                  cellBuilder: (Account rowItem) => Text(
                    rowItem.name ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (appConfig.isWeb)
          Positioned(
            bottom: Insets.gutter,
            right: Insets.gutter,
            child: Tooltip(
              message: context.l10n.reloadResults,
              child: FloatingActionButton(
                onPressed: () => controller.searchChanged(forceLoad: true),
                child: const Icon(
                  Icons.refresh,
                ),
              ),
            ),
          ),
        if (controller.isLoadingNextPage.value)
          Positioned(
            bottom: Insets.gutter,
            right: Insets.gutter,
            left: Insets.gutter,
            height: 100,
            child: SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(color: theme.colorScheme.surface),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
