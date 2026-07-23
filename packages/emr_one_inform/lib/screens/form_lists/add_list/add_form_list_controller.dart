import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_model.dart';
import 'package:emr_one_inform/services/form_list_service.dart';

class AddFormListController extends BaseController {
  AddFormListController({
    required this.listService,
  });

  final FormListService listService;

  bool isBusy = false;
  bool isValid = false;
  String id = '0';
  String listName = '';
  // String listValues = '';
  bool isActive = true;
  FormList? list;
  final List<String> tags = List.empty(growable: true);

  bool isFormValid() {
    return listName != '';
  }

  void setListName(String? newListName) {
    listName = newListName ?? '';
    notifyListeners();
  }

  void setListValues(String? listValues) {
    tags.clear();
    if (listValues?.isEmpty ?? false) return;
    final result = listValues!.split(',');
    for (var i = 0; i < result.length; i++) {
      if (result[i] == '') continue;
      tags.add(result[i].trimLeft().trimRight());
    }
    notifyListeners();
  }

  void setListNameDeleted({required bool listIsActive}) {
    isActive = listIsActive;
    notifyListeners();
  }

  Future<void> saveList() async {
    isBusy = true;
    notifyListeners();

    if (id == '0') {
      await listService.createList(
        createFormListRequest: CreateFormListRequest(
          listName: listName,
          listValues: tags.join(','),
          createdBy: UserInfoService.instance!.userInfo.name,
          createdDate: DateTime.now().toUtc(),
          isActive: true,
        ),
      );
    } else {
      await listService.updateList(
        updateFormListRequest: UpdateFormListRequest(
          id: int.tryParse(id) ?? -1,
          listName: listName,
          listValues: tags.join(','),
          modifiedBy: UserInfoService.instance!.userInfo.name,
          modifiedDate: DateTime.now().toUtc(),
          isActive: true,
        ),
      );
    }

    isBusy = false;
    notifyListeners();
  }

  Future<void> getListById({required int listId}) async {
    isBusy = true;
    notifyListeners();

    list = await listService.getFormListById(listId: listId);

    id = list!.id.toString();
    setListName(list?.listName);
    setListValues(list?.listValues);
    setListNameDeleted(listIsActive: true);

    isBusy = false;
    notifyListeners();
  }

  void initialiseTags(String listValues) {
    if (listValues.isEmpty) return;

    final result = listValues.split(',');
    for (var i = 0; i < result.length; i++) {
      if (result[i] == '') continue;
      tags.add(result[i].trimLeft().trimRight());
    }
  }
}
