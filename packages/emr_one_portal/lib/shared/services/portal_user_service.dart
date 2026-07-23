import 'dart:async';

import 'package:emr_account_registration/models/account_user_info.dart';
import 'package:emr_account_registration/services/customer_user_info_service.dart';
import 'package:emr_account_registration/services/logging_service.dart';
import 'package:emr_one_core/services/user/user_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class PortalUserService extends UserService {
  factory PortalUserService.singleton(CustomerUserInfoService userInfoSvc) {
    _singleton._userInfoSvc = userInfoSvc;

    UserService.instance = _singleton;

    return _singleton;
  }

  PortalUserService._internal();

  static final PortalUserService _singleton = PortalUserService._internal();

  late CustomerUserInfoService _userInfoSvc;

  User? _user;

  @override
  Future<User?> getUser() async {
    const userId = '';

    final defaultUser = User(
      id: userId,
      created: Created(userInfoId: userId),
      modified: Modified(userInfoId: userId),
      defaultYardId: ' / ',
      territoryIds: [],
    );
    try {
      final userInfo = await _userInfoSvc.getUserInfo() as AccountUserInfo?;

      _user = defaultUser;

      if (userInfo != null) {
        _user = User(
          id: userInfo.id,
          created: Created(userInfoId: userInfo.id),
          modified: Modified(userInfoId: userInfo.id),
          defaultYardId: userInfo.defaultYard.isEmpty ||
                  !userInfo.defaultYard.contains('/')
              ? ' / '
              : userInfo.defaultYard,
          territoryIds: userInfo.territories.map((t) => t.id ?? '').toList(),
          emailAddress: userInfo.emailAddress,
          firstName: userInfo.name.contains(' ')
              ? userInfo.name.split(' ')[0]
              : userInfo.name,
          lastName: userInfo.name.contains(' ')
              ? userInfo.name.split(' ')[1]
              : userInfo.name,
        );
      }

      return Future.value(_user);
    } catch (err) {
      LoggingService.logFailure('PortalUserService.GetUser', err);
      return defaultUser;
    }
  }

  @override
  User get user {
    if (_user == null) {
      throw Exception('User is not yet available');
    }

    return _user!;
  }

  @override
  void clear() {
    _user = null;
  }

  @override
  bool get hasUser => _user != null;
}
