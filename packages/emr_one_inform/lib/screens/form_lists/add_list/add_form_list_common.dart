import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_controller.dart';
import 'package:emr_one_inform/widgets/inform_assign_multiple.dart';
import 'package:emr_one_inform/widgets/inform_textbox.dart';
import 'package:flutter/material.dart';

abstract class AddFormListCommon extends BasePage<AddFormListController> {
  AddFormListCommon({required this.listId, super.key});

  final _formKey = GlobalKey<FormState>();
  final _listNameController = TextEditingController();

  final int listId;

  @override
  String getTitle(BuildContext context) {
    return listId > 0 ? context.l10n.editList : context.l10n.addList;
  }

  @override
  void initState(BuildContext context) {
    if (listId > 0) {
      controller.getListById(listId: listId);
    }
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    if (controller.listName != '') {
      _listNameController.text = controller.listName;
      _listNameController.selection = TextSelection.fromPosition(
        TextPosition(offset: _listNameController.text.length),
      );
    }

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: parentWidget(
          Wrap(
            runSpacing: 10,
            children: [
              InformTextBox(
                controller: _listNameController,
                hintText: context.l10n.listNameHint,
                labelText: context.l10n.listNameLabel,
                onChanged: (value) => controller.setListName(value ?? ''),
                validationMessage: context.l10n.listNameValidation,
              ),
              InformMultipleFreeTextSelection(
                key: UniqueKey(),
                defaultSelectedItems: controller.tags,
                onSuggestionSelected: controller.tags.add,
                onItemDeleted: controller.tags.remove,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onActionButtonPressed(BuildContext context) async {
    await controller.saveList();

    if (context.mounted) {
      context.pop();
    }
  }

  Widget parentWidget(Widget child);
}
