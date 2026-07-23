import 'package:collection/collection.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension FetchDefaultYard on SettingsController {
  Yard? get defaultYard {
    final userInfo = UserInfoService.instance?.userInfo;
    final depot = userInfo?.territories
        .firstWhereOrNull((t) => t.code == territory)
        ?.depots
        ?.firstWhereOrNull((d) => d.yardCode == userInfo.defaultYard);

    if (depot == null) {
      return null;
    }

    return userInfo?.yards.firstWhereOrNull(
      (y) => y.yardCode == depot.yardCode,
    );
  }
}
