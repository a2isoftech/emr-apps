import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LockedTicketsPreferences {
  Future<bool> saveFilter(Map<String, dynamic> value) async {
    final preference = await SharedPreferences.getInstance();

    return preference.setString(
      'LockedTicketsFilter',
      jsonEncode(value),
    );
  }

  Future<Map<String, dynamic>?> getFilter() async {
    final preference = await SharedPreferences.getInstance();
    final json = preference.getString('LockedTicketsFilter');
    return json == null || json.isEmpty
        ? null
        : jsonDecode(json) as Map<String, dynamic>;
  }
}
