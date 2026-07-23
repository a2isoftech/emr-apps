import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/lists/controllers/lists_controller.dart';
import 'package:emr_one_eam/widgets/eam_textbox.dart';
import 'package:emr_one_eam/widgets/update_list_value_widget.dart';
import 'package:flutter/material.dart';

class ListEditView extends BasePage {
  ListEditView({required super.controller, super.key});
  @override
  State<StatefulWidget> createState() => ListEditViewState();
}

class ListEditViewState extends BasePageState<ListEditView, IListsController> {
  late IListEditController listEditController;
  @override
  Widget build(BuildContext context) {
    final editScroll = ScrollController();
    return ValueListenableBuilder(
      valueListenable: listEditController.isBusy,
      builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                if (ConstantLists.blockedListsNames.contains(
                                  controller.selectedList.value.name,
                                ))
                                  const Icon(Icons.lock)
                                else
                                  const Icon(Icons.lock_open),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: EAMTextBox(
                                    isEnabled: !ConstantLists.blockedListsNames
                                        .contains(
                                      controller.selectedList.value.name,
                                    ),
                                    validationMessage:
                                        context.l10n.listnameCanNotBeBlank,
                                    controller: TextEditingController(
                                      text:
                                          controller.selectedList.value.name ??
                                              '',
                                    ),
                                    labelText: context.l10n.listNameLabel,
                                    onChanged: (text) {
                                      if (ConstantLists.blockedListsNames
                                          .contains(
                                        text,
                                      )) {
                                        return;
                                      }
                                      listEditController
                                          .setListName(text ?? '');
                                    },
                                  ),
                                ),
                                const Spacer(),
                                ValueListenableBuilder(
                                  valueListenable:
                                      listEditController.isSaveEnabled,
                                  builder: (context, saveEnabled, child) {
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          onPressed: !saveEnabled
                                              ? null
                                              : () {
                                                  listEditController
                                                      .addNewBlankListValue();
                                                  editScroll.position.animateTo(
                                                    editScroll.position
                                                            .maxScrollExtent +
                                                        100,
                                                    duration: const Duration(
                                                      milliseconds: 300,
                                                    ),
                                                    curve: Curves.bounceIn,
                                                  );
                                                },
                                          child: const Icon(
                                            Icons.add,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        ElevatedButton(
                                          onPressed: saveEnabled
                                              ? () async {
                                                  await _updateList();
                                                }
                                              : null,
                                          child: Text(context.l10n.save),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    context.l10n.text,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    context.l10n.value,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    context.l10n.orderIndex,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.45,
                              child: ValueListenableBuilder(
                                valueListenable: controller.selectedList,
                                builder: (context, list, child) {
                                  return ListView.builder(
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    controller: editScroll,
                                    shrinkWrap: true,
                                    itemCount: list.values?.length ?? 0,
                                    itemBuilder: (context, index) {
                                      final textEnabled = ValueNotifier<bool>(
                                        list.values?[index].newValue?.active ??
                                            true,
                                      );
                                      return ValueListenableBuilder(
                                        valueListenable: textEnabled,
                                        builder: (context1, isEnabled, child1) {
                                          return UpdateListValueWidget(
                                            value: list.values?[index].newValue,
                                            index: index,
                                            textEnabled: textEnabled,
                                            onTextChanged: (changedText) {
                                              listEditController
                                                  .setListValueText(
                                                index,
                                                changedText ?? '',
                                              );
                                            },
                                            onValueChanged: (value1) {
                                              listEditController
                                                  .setListValueValue(
                                                index,
                                                value1!,
                                              );
                                            },
                                            onOrderIndexChanged: (value1) {
                                              listEditController
                                                  .setListValueOrderIndex(
                                                index,
                                                int.parse(value1!),
                                              );
                                            },
                                            onActiveInactiveClicked: () {
                                              listEditController
                                                  .setListValueActive(
                                                changedValue: !isEnabled,
                                                index: index,
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _updateList() async {
    final result = await listEditController.updateList();
    if (result && context.mounted) {
      await showSuccessDialog();
      controller.setEditVisible(
        value: false,
      );
    }
  }

  Future<void> showSuccessDialog() async {
    await EmrDialog.ok(
      context,
      titleText: context.l10n.success,
      contentText: context.l10n.listUpdatedSuccessfully,
    );
  }

  @override
  void initState() {
    super.initState();
    listEditController = controller as IListEditController;
    listEditController.isBusy.value = false;
  }
}
