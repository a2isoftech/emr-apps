import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/graphql/queries/queries.dart';
import 'package:emr_one_core/models/user_info/managed_buyer.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:http/http.dart';

extension on String {
  String get toYardCode => 'Y${substring(1, length - 3)}';
}

class StaffUserInfoService extends UserInfoService {
  factory StaffUserInfoService.fromClient(Client httpClient) {
    _singleton._httpClient = httpClient;

    UserInfoService.instance = _singleton;

    return _singleton;
  }

  StaffUserInfoService._internal();

  static final StaffUserInfoService _singleton =
      StaffUserInfoService._internal();

  late Client _httpClient;

  UserInfo? _userInfo;

  @override
  Future<UserInfo?> getUserInfo() async {
    if (_userInfo != null) {
      return _userInfo!;
    }

    final result = await documentNodeQueryGetUserInfo.execute(
      _httpClient,
      Query$GetUserInfo.fromJson,
    );

    if (result.hasErrors() || result.data?.userInfo == null) {
      return null;
    }

    final resultUser = result.data!.userInfo;

    final me = result.data!.me;

    return _userInfo = UserInfo(
      id: me.externalIds.firstWhere((x) => x.key == 'AzureAd').value,
      emailAddress: me.emailAddress,
      name: '${me.firstName} ${me.lastName}',
      defaultDepot: resultUser.defaultDepot,
      // Set the default value, but this is overridden by the user's settings
      // in Startup if another yard has been chosen on the settings screen.
      defaultYard: resultUser.defaultDepot.toYardCode,
      defaultTerritory: resultUser.defaultTerritory,
      defaultOrderBookTypeId: resultUser.defaultOrderBookTypeId ?? 0,
      userOrderBooks: resultUser.userOrderBooks!
          .map(
            (u) => OrderBook(
              u!.orderBookTypeId,
              u.orderBookName!,
              u.gradeType!,
            ),
          )
          .toList(),
      territories: resultUser.territories
          .map(
            (t) => Territory(
              t.territoryCode,
              t.name,
              t.depots
                  .map(
                    (d) => Depot(
                      d.depotNo,
                      d.shortName,
                      gradeType: d.gradeType,
                      yardCode: d.yardCode,
                      cmpCode: d.cmpCode,
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
      permissions: me.permissions?.whereType<String>().toList() ?? [],
      yards: resultUser.yards!
          .map(
            (y) => Yard(
              yardCode: y!.yardCode,
              name: y.name,
              shortName: y.shortName,
            ),
          )
          .toList(),
      managedBuyers: resultUser.crmManagedBuyers
          .map(
            (b) => ManagedBuyer(username: b.userName, azureId: b.azureUserId),
          )
          .toList(),
      companyAccess: resultUser.companyAccess,
    );
  }

  @override
  Future<String?> getIdToken() async {
    return '';
  }

  @override
  UserInfo get userInfo {
    if (_userInfo == null) {
      throw Exception('User info is not yet available');
    }

    return _userInfo!;
  }

  @override
  void clear() {
    _userInfo = null;
  }

  @override
  bool get hasUserInfo => _userInfo != null;
}
