import 'package:emr_one_door_access/models/key_value_pair.dart';
import 'package:flutter/material.dart';

class EditDoorControllerFormData {
  EditDoorControllerFormData({
    String? url,
    String? username,
    String? password,
    String? name,
  }) {
    this.url = ValueNotifier(url);
    this.username = ValueNotifier(username);
    this.password = ValueNotifier(password);
    this.name = ValueNotifier(name);
  }

  late final ValueNotifier<String?> url;
  late final ValueNotifier<String?> username;
  late final ValueNotifier<String?> password;
  late final ValueNotifier<String?> name;

  static KeyValuePair<String, String> defaultSiteId = (key: '', value: '');

  late ValueNotifier<KeyValuePair<String, String>> siteId = ValueNotifier(
    defaultSiteId,
  );
}
