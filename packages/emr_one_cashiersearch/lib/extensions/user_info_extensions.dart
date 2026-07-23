import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';

extension UserInfoExtension on UserInfo {
  String getDefaultYard() {
    final userInfo = this;
    if (userInfo.defaultYard == userInfo.defaultDepot.toYardCode) {
      final defaultDepot = userInfo.defaultDepot;
      final depot = userInfo.depots
          .firstWhereOrNull((depot) => depot.code == defaultDepot);
      return depot?.yardCode ?? userInfo.defaultYard;
    }
    return userInfo.defaultYard;
  }

  String? getDefaultCompany() {
    final userInfo = this;
    return userInfo.depots
        .firstWhereOrNull((depot) => depot.yardCode == getDefaultYard())
        ?.cmpCode;
  }
}

extension on String {
  String get toYardCode => 'Y${substring(1, length - 3)}';
}
