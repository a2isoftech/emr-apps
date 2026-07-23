class StandingDataService {
  static Future<List<String>> yesNo(String _) async {
    return [
      'Yes',
      'No',
    ];
  }

  static Future<List<String>> currencyCodes(String _) async {
    return [
      'GBP',
      'USD',
    ];
  }

  static Future<List<String>> activeStatuses(String _) async {
    return [
      'Active',
      'InActive',
    ];
  }

  static bool isTrue(String? val) {
    return val == 'Yes';
  }
}
