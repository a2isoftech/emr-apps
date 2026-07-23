import 'package:emr_one_eam/base/base_controller.dart';
import 'package:emr_one_eam/lists/services/list_service.dart';
import 'package:emr_one_eam/models/update_list_model.dart';
import 'package:flutter/material.dart';

abstract class IListEditController {
  ValueNotifier<bool> get isBusy;
  ValueNotifier<bool> get isSaveEnabled;
  Future<bool> updateList();
  void setListValueText(int index, String changedText);
  void setListValueValue(int index, String changedValue);
  void setListValueOrderIndex(int index, int changedOrderIndex);
  void setListValueActive({bool changedValue, int index});

  void setListName(String changedListName);

  void addNewBlankListValue();
}

abstract class IListsController extends BaseController<IListService> {
  IListsController({required super.service});

  ValueNotifier<bool> get isEditVisible;

  ValueNotifier<UpdateListModel> get selectedList;

  void setEditVisible({bool value});
  void setSelectedList(UpdateListModel? selectedList);
}

class ListsController extends IListsController implements IListEditController {
  ListsController({required super.service});

  final ValueNotifier<bool> _isEditVisible = ValueNotifier(false);
  final ValueNotifier<UpdateListModel> _selectedList =
      ValueNotifier(UpdateListModel());

  final ValueNotifier<bool> _isSaveEnabled = ValueNotifier(false);

  @override
  ValueNotifier<bool> get isEditVisible => _isEditVisible;

  final ValueNotifier<bool> _isBusy = ValueNotifier(false);

  @override
  ValueNotifier<bool> get isBusy => _isBusy;

  @override
  ValueNotifier<UpdateListModel> get selectedList => _selectedList;

  @override
  void setSelectedList(UpdateListModel? selectedList) {
    _selectedList.value = selectedList ?? UpdateListModel(values: []);
    setEditVisible();
  }

  @override
  void setEditVisible({bool value = true}) {
    _isEditVisible.value = value;
  }

  @override
  void setListValueText(int index, String changedText) {
    selectedList.value.values?[index].newValue?.text = changedText;
  }

  @override
  void setListValueOrderIndex(int index, int changedOrderIndex) {
    selectedList.value.values?[index].newValue?.orderIndex = changedOrderIndex;
  }

  @override
  void setListValueValue(int index, String changedValue) {
    selectedList.value.values?[index].newValue?.value = changedValue;
  }

  @override
  void setListValueActive({bool changedValue = true, int index = 0}) {
    final newVal = selectedList.value.values?[index].newValue;
    if ((newVal?.text?.trim() == '' || newVal?.text == null) &&
        (newVal?.value?.trim() == '' || newVal?.value == null)) {
      selectedList.value.values?.removeAt(index);
      selectedList.value = UpdateListModel(
        id: selectedList.value.id,
        name: selectedList.value.name,
        values: [...selectedList.value.values!],
      );
      return;
    }

    selectedList.value.values?[index].newValue?.active = changedValue;
  }

  @override
  void addNewBlankListValue() {
    selectedList.value.values?.add(
      UpdateListValueWrapModel(
        oldValue: UpdateListValueModel(),
        newValue: UpdateListValueModel(
          active: true,
          orderIndex: 0,
          text: '',
          value: '',
        ),
      ),
    );
    final changedList = selectedList.value;
    selectedList.value = UpdateListModel(
      id: changedList.id,
      name: changedList.name,
      values: changedList.values,
    );
  }

  @override
  void setListName(String changedListName) {
    selectedList.value.name = changedListName;
    resetIsSaveEnabled();
  }

  @override
  ValueNotifier<bool> get isSaveEnabled {
    resetIsSaveEnabled();
    return _isSaveEnabled;
  }

  void resetIsSaveEnabled() {
    _isSaveEnabled.value = !(selectedList.value.name?.trim() == '' ||
        selectedList.value.name == null);
  }

  @override
  Future<bool> updateList() async {
    for (final item in selectedList.value.values!) {
      final newVal = item.newValue;

      if ((newVal?.text == '' || newVal?.text == null) &&
          (newVal?.value == '' || newVal?.value == null)) {
        selectedList.value.values?.remove(item);
      }
    }
    final result =
        await service.updateList(updateListModel: selectedList.value);
    if (result != null) {
      selectedList.value = UpdateListModel(
        name: result.listName,
        values: result.listValue
            ?.map(
              (e) => UpdateListValueWrapModel(
                oldValue: UpdateListValueModel(
                  active: e.active,
                  text: e.text,
                  value: e.value,
                  orderIndex: e.orderIndex,
                ),
                newValue: UpdateListValueModel(
                  active: e.active,
                  text: e.text,
                  value: e.value,
                  orderIndex: e.orderIndex,
                ),
              ),
            )
            .toList(),
      );
      return true;
    }
    return false;
  }
}
