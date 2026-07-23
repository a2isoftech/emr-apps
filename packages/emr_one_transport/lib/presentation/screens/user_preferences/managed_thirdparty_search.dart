import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_search_panel.dart';
import 'package:emr_one_transport/data/controllers/user_preferences/managed_thirdparty_search_controller.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManagedThirdpartyHauliersSearch extends StatefulWidget with OmniSearch {
  const ManagedThirdpartyHauliersSearch({super.key});

  @override
  State<ManagedThirdpartyHauliersSearch> createState() =>
      _ManagedThirdpartyHauliersSearchState();
}

class _ManagedThirdpartyHauliersSearchState
    extends State<ManagedThirdpartyHauliersSearch> {
  late ManagedThirdPartyHaulierSearchController controller;
  late EmrQueryLayoutController<UserManagedHauliers> _queryLayoutController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    controller = Provider.of<ManagedThirdPartyHaulierSearchController>(
      context,
      listen: false,
    );
    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<UserManagedHauliers>>(
          context,
          listen: false,
        );
    controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    controller.clearListeners();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Consumer<ManagedThirdPartyHaulierSearchController>(
      builder: (context, val, child) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter / 2,
              right: Insets.gutter,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmrQueryLayoutDefaultSearchPanel(
                        searchController: _searchController,
                        searchChanged: () =>
                            _searchChanged(_searchController.text),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: Insets.gutter,
                          bottom: Insets.gutter / 2,
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: Insets.gutter,
                          ),
                          leading: Text(
                            context.l10n.haulier,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          trailing: Text(
                            context.l10n.myManagedThirdPartyHauliers,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          dense: true,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: Insets.gutter / 2,
                          right: Insets.gutter / 2,
                          bottom: Insets.gutter / 4,
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
                                  itemCount: controller
                                      .filteredManagedThirdPartyHauliers
                                      .length,
                                  itemBuilder: (context, idx) {
                                    final haulier = controller
                                        .filteredManagedThirdPartyHauliers[idx];
                                    return SelectionArea(
                                      child: SizedBox(
                                        height: 50,
                                        child: CheckboxListTile(
                                          title: Text(
                                            '${haulier.haulierCode}  - '
                                            '${haulier.haulierName}',
                                          ),
                                          value: haulier.isMyManagedHaulier,
                                          onChanged: (bool? value) {
                                            controller.toggleSelection(
                                              haulier.accountId,
                                              haulier.haulierCode!,
                                              haulier.haulierName ?? '',
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
                          const Spacer(flex: 3),
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
                                FilledButton(
                                  style: EmrButtonStyles.cta(),
                                  onPressed: () => save(context),
                                  child: Text(context.l10n.save),
                                ),
                                const SizedBox(height: Insets.gutter / 2),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      context.l10n.selectionReflectNote,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium,
                                    ),
                                  ],
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
    final result = await controller.saveUserManagedHauliers();
    if (context.mounted) {
      if (result.isSuccess) {
        await SuccessAlertWidget.showSuccessMessage(
          context,
          context.l10n.preferencesSavedSuccessfully,
        );
      } else {
        await ErrorAlertWidget.showErrorMessage(
          context,
          result.errorMessage.isNotEmpty
              ? result.errorMessage
              : context.l10n.errorAndTryAgainMsg,
        );
      }
    }
  }

  void _searchChanged(String searchText) {
    controller.searchChanged(searchText);
  }
}
