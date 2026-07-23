import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/mixins/emr_filled_button.dart';
import 'package:emr_one_core/mixins/omni_search.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_search_panel.dart';
import 'package:emr_one_core/widgets/pagination/emr_page_control.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/haulier_settings/haulier_settings_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/haulier_settings/haulier_settings.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HaulierSettingsScreen extends StatefulWidget with OmniSearch {
  const HaulierSettingsScreen({super.key});

  @override
  State<HaulierSettingsScreen> createState() => _HaulierSettingsScreenState();
}

class _HaulierSettingsScreenState extends State<HaulierSettingsScreen> {
  late HaulierSettingsController controller;
  late EmrQueryLayoutController<HaulierSettings> _queryLayoutController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    controller = Provider.of<HaulierSettingsController>(context, listen: false);
    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<HaulierSettings>>(
          context,
          listen: false,
        );
    controller.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Consumer<HaulierSettingsController>(
      builder: (context, val, child) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter / 2,
              right: Insets.gutter * 2,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      EmrQueryLayoutDefaultSearchPanel(
                        searchController: _searchController,
                        searchChanged: () =>
                            _searchChanged(_searchController.text),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Insets.gutter,
                          top: Insets.gutter,
                          bottom: Insets.gutter / 2,
                          right: Insets.gutter,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                context.l10n.thirdPartyHauliers,
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall,
                              ),
                            ),
                            Text(
                              StringConstants.managedDisplay,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Insets.gutter,
                          vertical: Insets.gutter / 2,
                        ),
                        child: Divider(height: 1),
                      ),
                      Expanded(
                        child: Scrollbar(
                          thumbVisibility: true,
                          controller: scrollController,
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: controller.filteredHauliers.length,
                                  itemBuilder: (context, index) {
                                    final haulier =
                                        controller.filteredHauliers[index];
                                    return SelectionArea(
                                      child: SizedBox(
                                        height: 50,
                                        child: CheckboxListTile(
                                          title: Text(
                                            '${haulier.accountNo} '
                                            '- ${haulier.name}',
                                            style: const TextStyle(
                                              fontSize: Insets.gutter,
                                            ),
                                          ),
                                          value: haulier.isManagedHaulier,
                                          onChanged: (bool? value) {
                                            controller.toggleManagedSelection(
                                              haulier.accountId,
                                              haulier.accountNo ?? '',
                                              haulier.name ?? '',
                                              value: value!,
                                            );
                                          },
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Spacer(flex: 2),
                          EmrPageControl(
                            _queryLayoutController.pageControlEvents,
                          ),
                          const Spacer(flex: 2),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: Insets.gutter,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (context.userHasPermission(
                                  UserPermissions.haulierSettingsWrite,
                                ))
                                  FilledButton(
                                    style: EmrButtonStyles.cta(),
                                    onPressed: () => save(context),
                                    child: Text(context.l10n.save),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (controller.isLoading) const LoadingIndicator(),
        ],
      ),
    );
  }

  Future<void> save(BuildContext context) async {
    final result = await controller.saveHaulierSettings();
    if (context.mounted) {
      if (result.status == ActionStatus.apiSuccess) {
        await SuccessAlertWidget.showSuccessMessage(
          context,
          context.l10n.preferencesSavedSuccessfully,
        );
      } else {
        await ErrorAlertWidget.showErrorMessage(
          context,
          result.errorMessage.toString(),
        );
      }
    }
  }

  void _searchChanged(String searchText) {
    controller.searchChanged(searchText);
  }
}
