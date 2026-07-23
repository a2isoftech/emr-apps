class UpdateListModel {
  UpdateListModel({this.id, this.name, this.values});
  String? id;
  String? name;
  List<UpdateListValueWrapModel>? values;
}

class UpdateListValueWrapModel {
  UpdateListValueWrapModel({
    this.oldValue,
    this.newValue,
  });
  UpdateListValueModel? oldValue;
  UpdateListValueModel? newValue;
}

class UpdateListValueModel {
  UpdateListValueModel({
    this.text,
    this.value,
    this.active,
    this.orderIndex,
  });
  String? text;
  String? value;
  bool? active;
  int? orderIndex;
}
