import 'package:collection/collection.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/guide_price_lists/tag_template.dart';
import 'package:emr_one_crm/screens/pricing-admin/tag_template_controller.dart';
import 'package:flutter/material.dart';

class TagTemplatesSearch extends StatelessWidget {
  const TagTemplatesSearch({
    required this.queryLayoutController,
    required this.controller,
    required this.gridController,
    required this.settingsController,
    super.key,
  });
  final TagTemplateController controller;
  final EmrQueryLayoutController<TagTemplates> queryLayoutController;
  final EmrGridController<TagTemplates> gridController;
  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    final territories = settingsController
        .allowedTerritories('')
        ?.map((terr) => terr.code)
        .toList();
    final selectedTerritory = ValueNotifier<String?>(null);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter,
                top: Insets.gutter,
              ),
              child: Text(
                context.l10n.tagTemplates,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter,
                right: Insets.gutter,
              ),
              child: ElevatedButton(
                onPressed: () {
                  final errorMsg = ValueNotifier<String>('');
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Center(
                          child: Text(context.l10n.createTagTemplate),
                        ),
                        content: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: context.l10n.tagCategory,
                                ),
                                onChanged: (category) {
                                  controller.tagTemplate.value =
                                      controller.tagTemplate.value.copyWith(
                                    tagCategory: category,
                                  );
                                  errorMsg.value = '';
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: Insets.gutter,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: context.l10n.tagReason,
                                  ),
                                  onChanged: (reason) {
                                    controller.tagTemplate.value =
                                        controller.tagTemplate.value.copyWith(
                                      tagReason: reason,
                                    );
                                    errorMsg.value = '';
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: Insets.gutter,
                                ),
                                child: FormRow(
                                  children: [
                                    Text(
                                      context.l10n.tagTerritory,
                                      style: headerTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              FormRow(
                                children: territories!.map((label) {
                                  return Row(
                                    children: [
                                      ValueListenableBuilder<String?>(
                                        valueListenable: selectedTerritory,
                                        builder: (context, value, child) {
                                          return Checkbox(
                                            value: value == label,
                                            onChanged: (bool? selected) {
                                              if (selected != null &&
                                                  selected) {
                                                selectedTerritory.value = label;
                                                controller.tagTemplate.value =
                                                    controller.tagTemplate.value
                                                        .copyWith(
                                                  tagTerritory: label,
                                                );
                                              } else {
                                                selectedTerritory.value = null;
                                                controller.tagTemplate.value =
                                                    controller.tagTemplate.value
                                                        .copyWith(
                                                  tagTerritory: '',
                                                );
                                              }
                                              errorMsg.value = '';
                                            },
                                          );
                                        },
                                      ),
                                      Text(label),
                                    ],
                                  );
                                }).toList(),
                              ),
                              ValueListenableBuilder<String>(
                                valueListenable: errorMsg,
                                builder: (context, value, child) {
                                  if (value == '') {
                                    return Container();
                                  } else {
                                    return Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(
                                              Insets.gutter / 2,
                                            ),
                                            child: Text(
                                              value,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text(context.l10n.cancel),
                            onPressed: () {
                              context.pop();
                            },
                          ),
                          ValueListenableBuilder<TagTemplates>(
                            valueListenable: controller.tagTemplate,
                            builder: (context, value, child) {
                              final isEnabled = value.tagCategory.isNotEmpty &&
                                  value.tagReason.isNotEmpty &&
                                  value.tagTerritory.isNotEmpty;

                              return TextButton(
                                onPressed: isEnabled
                                    ? () {
                                        final isValid =
                                            !gridController.data.value.any(
                                          (item) =>
                                              item.tagCategory.toLowerCase() ==
                                                  controller.tagCategory
                                                      .toLowerCase() &&
                                              item.tagReason.toLowerCase() ==
                                                  controller.tagReason
                                                      .toLowerCase() &&
                                              item.tagTerritory.toLowerCase() ==
                                                  controller.tagTemplate.value
                                                      .tagTerritory
                                                      .toLowerCase(),
                                        );
                                        if (isValid) {
                                          controller.saveTagTemplates();
                                          context.pop();
                                        } else {
                                          errorMsg.value =
                                              'Tag Template already exists';
                                        }
                                      }
                                    : null,
                                child: Text(context.l10n.save),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  side: const BorderSide(),
                ),
                child: Text(
                  context.l10n.createNewTag
                      .substring(0, context.l10n.createNewTag.length - 4),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: EmrQueryLayout<TagTemplates>.grid(
            queryLayoutController: queryLayoutController,
            gridController: gridController,
            columns: [
              columnBuilderWidget(
                headerWidget: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.edit),
                ),
                cellWidget: (rowItem) => IconButton(
                  onPressed: () {
                    editTagTemplatePopup(
                      context,
                      rowItem,
                    );
                  },
                  icon: const Icon(Icons.edit),
                ),
                getSortIcon: () => sortIcon('tags'),
                onSortTap: () =>
                    queryLayoutController.dataSource.sortBy('tags'),
              ),
              columnBuilder(
                headerText: context.l10n.category,
                cellText: (rowItem) => rowItem.tagCategory,
                getSortIcon: () => sortIcon('category'),
                onSortTap: () =>
                    queryLayoutController.dataSource.sortBy('category'),
              ),
              columnBuilder(
                headerText: context.l10n.reason,
                cellText: (rowItem) => rowItem.tagReason,
                getSortIcon: () => sortIcon('reason'),
                onSortTap: () =>
                    queryLayoutController.dataSource.sortBy('reason'),
              ),
              columnBuilder(
                headerText: context.l10n.territory,
                cellText: (rowItem) => rowItem.tagTerritory,
                getSortIcon: () => sortIcon('territory'),
                onSortTap: () =>
                    queryLayoutController.dataSource.sortBy('territory'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget sortIcon(String field) {
    final value =
        queryLayoutController.dataSource.queryScope.sortOrder.firstWhereOrNull(
      (element) => element.field == field,
    );

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
            ? const Icon(Icons.arrow_drop_up)
            : const Icon(Icons.arrow_drop_down);
  }

  EmrGridColumn<TagTemplates> columnBuilderWidget({
    required Widget headerWidget,
    required Widget Function(
      TagTemplates,
    ) cellWidget,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 20,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => GestureDetector(
        onTap: onSortTap,
        child: Row(
          children: [
            headerWidget,
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (TagTemplates rowItem) => GestureDetector(
        child: cellWidget.call(rowItem),
      ),
    );
  }

  EmrGridColumn<TagTemplates> columnBuilder({
    required String headerText,
    required String Function(
      TagTemplates,
    ) cellText,
    String Function(
      TagTemplates,
    )? toolTipMsg,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 30,
  }) {
    toolTipMsg ??= (TagTemplates line) => '';
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => GestureDetector(
        onTap: onSortTap,
        child: Row(
          children: [
            Expanded(
              child: Text(
                headerText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (TagTemplates rowItem) => GestureDetector(
        child: Tooltip(
          message: toolTipMsg!.call(rowItem),
          child: Text(
            cellText.call(rowItem),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  void editTagTemplatePopup(BuildContext context, TagTemplates tagTemplate) {
    final tempTagTemplate = TagTemplates(
      id: tagTemplate.id,
      tagCategory: tagTemplate.tagCategory,
      tagReason: tagTemplate.tagReason,
      tagTerritory: tagTemplate.tagTerritory,
    );

    final tagCategoryController =
        TextEditingController(text: tagTemplate.tagCategory);
    final tagReasonController =
        TextEditingController(text: tagTemplate.tagReason);

    final isSaveEnabled = ValueNotifier<bool>(
      tagTemplate.tagCategory.isNotEmpty && tagTemplate.tagReason.isNotEmpty,
    );

    tagCategoryController.addListener(() {
      tempTagTemplate.tagCategory = tagCategoryController.text;
      isSaveEnabled.value = tempTagTemplate.tagCategory.isNotEmpty &&
          tempTagTemplate.tagReason.isNotEmpty;
    });

    tagReasonController.addListener(() {
      tempTagTemplate.tagReason = tagReasonController.text;
      isSaveEnabled.value = tempTagTemplate.tagCategory.isNotEmpty &&
          tempTagTemplate.tagReason.isNotEmpty;
    });
    final errorMsg = ValueNotifier<String>('');
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(context.l10n.editTagTemplate),
          content: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.sizeOf(context).width * 0.3,
            child: Column(
              children: [
                TextField(
                  controller: tagCategoryController,
                  decoration: InputDecoration(
                    labelText: context.l10n.tagCategory,
                  ),
                  onChanged: (value) {
                    errorMsg.value = '';
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: Insets.gutter,
                    bottom: Insets.gutter,
                  ),
                  child: TextField(
                    controller: tagReasonController,
                    decoration: InputDecoration(
                      labelText: context.l10n.tagReason,
                    ),
                    onChanged: (value) {
                      errorMsg.value = '';
                    },
                  ),
                ),
                ValueListenableBuilder<String>(
                  valueListenable: errorMsg,
                  builder: (context, value, child) {
                    if (value == '') {
                      return Container();
                    } else {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(
                                Insets.gutter / 2,
                              ),
                              child: Text(
                                value,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(context.l10n.cancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isSaveEnabled,
              builder: (context, value, child) {
                return TextButton(
                  onPressed: value
                      ? () {
                          final isValid = !gridController.data.value.any(
                            (item) =>
                                item.tagCategory.toLowerCase() ==
                                    tempTagTemplate.tagCategory.toLowerCase() &&
                                item.tagReason.toLowerCase() ==
                                    tempTagTemplate.tagReason.toLowerCase() &&
                                item.tagTerritory.toLowerCase() ==
                                    tempTagTemplate.tagTerritory.toLowerCase(),
                          );
                          if (isValid) {
                            tagTemplate.tagCategory =
                                tempTagTemplate.tagCategory;
                            tagTemplate.tagReason = tempTagTemplate.tagReason;
                            controller.updateTagTemplates(tagTemplate);
                            context.pop();
                          } else {
                            errorMsg.value = 'Tag Template already exists';
                          }
                        }
                      : null,
                  child: Text(context.l10n.save),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
