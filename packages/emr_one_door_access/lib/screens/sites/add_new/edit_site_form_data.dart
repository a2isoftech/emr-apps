import 'package:flutter/material.dart';

class EditSiteFormData {
  EditSiteFormData({String? name, String? yardCode}) {
    this.name = ValueNotifier(name);
    this.yardCode = ValueNotifier(yardCode);
  }

  late final ValueNotifier<String?> name;
  late final ValueNotifier<String?> yardCode;
}
