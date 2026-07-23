import 'package:emr_sharedtypes/models/models.dart';

abstract class UserService {
  // Note: Having a singleton is likely to lead to issues with testing should
  // we start to have tests which test with users in different territories etc.
  static UserService? get instance => _instance;

  static set instance(UserService? value) {
    if (value == null) {
      throw Exception("'value' must be an instance of UserService.");
    }

    _instance = value;
  }

  static UserService? _instance;

  User get user;

  bool get hasUser;

  Future<User?> getUser();

  void clear();
}
