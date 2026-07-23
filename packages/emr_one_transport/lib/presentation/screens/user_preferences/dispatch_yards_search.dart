import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_default_search_panel.dart';
import 'package:emr_one_transport/data/controllers/user_preferences/dispatch_yards_search_controller.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DispatchYardsSearch extends StatefulWidget with OmniSearch {
  const DispatchYardsSearch({super.key});

  @override
  State<DispatchYardsSearch> createState() => _DispatchYardsSearchState();
}

class _DispatchYardsSearchState extends State<DispatchYardsSearch> {
  late DispatchYardsSearchController controller;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    controller = Provider.of<DispatchYardsSearchController>(
      context,
      listen: false,
    );
    controller.getUserDispatchYards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Consumer<DispatchYardsSearchController>(
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
                            context.l10n.dispatchYard,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          trailing: Text(
                            context.l10n.myDispatchYards,
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
                                  itemCount:
                                      controller.filteredDispatchYards.length,
                                  itemBuilder: (context, index) {
                                    final yard =
                                        controller.filteredDispatchYards[index];
                                    return SelectionArea(
                                      child: SizedBox(
                                        height: 50,
                                        child: CheckboxListTile(
                                          title: Text(
                                            '${yard.yardCode}  - '
                                            '${yard.yardName}',
                                          ),
                                          value: yard.isDispatchYard,
                                          onChanged: (bool? value) {
                                            controller.toggleSelection(
                                              yard.yardCode!,
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
                          EmrPageControl(controller.pageControlEvents),
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
    final result = await controller.saveUserDispatchYards();
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
    controller.search(searchText);
  }
}
