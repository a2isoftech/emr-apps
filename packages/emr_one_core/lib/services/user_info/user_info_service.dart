import 'package:emr_one_core/emr_one_core.dart';

abstract class UserInfoService {
  // Note: Having a singleton is likely to lead to issues with testing should
  // we start to have tests which test with users in different territories etc.
  static UserInfoService? get instance => _instance;

  static set instance(UserInfoService? value) {
    if (value == null) {
      throw Exception("'value' must be an instance of UserInfoService.");
    }

    _instance = value;
  }

  static UserInfoService? _instance;

  UserInfo get userInfo;

  Future<UserInfo?> getUserInfo();

  Future<String?> getIdToken();

  void clear();

  bool get hasUserInfo;
}
