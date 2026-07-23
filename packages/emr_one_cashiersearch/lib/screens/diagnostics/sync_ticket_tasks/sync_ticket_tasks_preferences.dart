import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SyncTicketTasksPreferences {
  Future<bool> saveFilter(Map<String, dynamic> value) async {
    final preference = await SharedPreferences.getInstance();

    return preference.setString(
      'SyncTicketTasksFilter',
      jsonEncode(value),
    );
  }

  Future<Map<String, dynamic>?> getFilter() async {
    final preference = await SharedPreferences.getInstance();
    final json = preference.getString('SyncTicketTasksFilter');
    return json == null || json.isEmpty
        ? null
        : jsonDecode(json) as Map<String, dynamic>;
  }
}
