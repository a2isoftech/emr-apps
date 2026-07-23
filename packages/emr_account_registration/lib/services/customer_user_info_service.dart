import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;

class CustomerUserInfoService extends UserInfoService {
  factory CustomerUserInfoService() {
    UserInfoService.instance = _singleton;

    return _singleton;
  }

  CustomerUserInfoService._internal();

  static const claimNamePartyAccount = 'PartyAccountNo';
  static const claimNameRetailIndicator = 'retail_ind';
  static const claimNameTraderIndicator = 'trader_ind';
  static const claimNameSupplierIndicator = 'supplier_ind';
  static const claimNameHaulierIndicator = 'haulier_ind';
  static const claimNameProspectIndicator = 'prospect_ind';
  static const claimNameCustomerIndicator = 'cust_ind';
  static const claimNameCostSupplierIndicator = 'costSupplier_ind';
  static const claimNameQrLogin = 'qrLogin';

  static final CustomerUserInfoService _singleton =
      CustomerUserInfoService._internal();

  UserInfo? _userInfo;

  @override
  Future<UserInfo?> getUserInfo() async {
    try {
      final user = FirebaseLogin.getInstance().currentUser;

      if (user == null) {
        return Future.value();
      }

      final idTokenResult = await user.getIdTokenResult();

      final prospectIndicator = _getClaim(
        idTokenResult,
        claimNameProspectIndicator,
      );
      final retailIndicator = _getClaim(
        idTokenResult,
        claimNameRetailIndicator,
      );
      final traderIndicator = _getClaim(
        idTokenResult,
        claimNameTraderIndicator,
      );
      final supplierIndicator = _getClaim(
        idTokenResult,
        claimNameSupplierIndicator,
      );
      final haulierIndicator = _getClaim(
        idTokenResult,
        claimNameHaulierIndicator,
      );
      final customerIndicator = _getClaim(
        idTokenResult,
        claimNameCustomerIndicator,
      );
      final costSupplierIndicator = _getClaim(
        idTokenResult,
        claimNameCostSupplierIndicator,
      );

      final qrLogin = _getClaim(idTokenResult, claimNameQrLogin);
      return Future.value(
        _userInfo = AccountUserInfo(
          id: user.uid,
          emailAddress: (user.email ?? user.phoneNumber) ?? 'No Email/Phone',
          signedUp:
              prospectIndicator != null &&
              prospectIndicator.isNotEmpty &&
              prospectIndicator.toLowerCase() == 'false',
          isProspect:
              prospectIndicator != null &&
              prospectIndicator.toLowerCase() == 'true',
          isRetail:
              retailIndicator != null &&
              retailIndicator.toLowerCase() == 'true',
          isSupplier:
              costSupplierIndicator != null &&
              costSupplierIndicator.toLowerCase() == 'true',
          isBusiness:
              (traderIndicator != null &&
                  traderIndicator.toLowerCase() == 'true') ||
              (supplierIndicator != null &&
                  supplierIndicator.toLowerCase() == 'true') ||
              (haulierIndicator != null &&
                  haulierIndicator.toLowerCase() == 'true') ||
              (customerIndicator != null &&
                  customerIndicator.toLowerCase() == 'true'),
          qrLogin: qrLogin != null && qrLogin.toLowerCase() == 'true',
          name: user.displayName ?? 'Portal User',
          initials: _getInitials(user.displayName ?? ''),
          partyAccountNumber:
              idTokenResult.claims!.containsKey(claimNamePartyAccount)
              ? idTokenResult.claims![claimNamePartyAccount].toString()
              : null,
        ),
      );
    } catch (ex) {
      LoggingService.logToConsole(ex.toString());
      return Future.value();
    }
  }

  String _getInitials(String fullName) {
    if (fullName.isEmpty) {
      return '';
    }
    final nameSplit = fullName.split(' ');
    var initials = '';

    if (nameSplit.isNotEmpty) {
      initials += nameSplit[0][0];
      if (nameSplit.length > 1) {
        initials += nameSplit[nameSplit.length - 1][0];
      }
    }

    return initials.toUpperCase();
  }

  String? _getClaim(fb_auth.IdTokenResult idTokenResult, String claimName) {
    return idTokenResult.claims!.containsKey(claimName)
        ? idTokenResult.claims![claimName].toString()
        : null;
  }

  @override
  AccountUserInfo get userInfo {
    return _userInfo! as AccountUserInfo;
  }

  AccountUserInfo? get userInfoNullable {
    return _userInfo as AccountUserInfo?;
  }

  @override
  Future<String?> getIdToken([bool forecRefresh = false]) async {
    if (FirebaseLogin.getInstance().currentUser != null) {
      return FirebaseLogin.getInstance().currentUser!.getIdToken(forecRefresh);
    }
    return '';
  }

  @override
  void clear() {
    _userInfo = null;
  }

  @override
  bool get hasUserInfo => _userInfo != null;

  String getPartyAccountNumber() {
    return userInfo.partyAccountNumber ?? '';
  }

  bool hasEmail() {
    return userInfo.emailAddress.contains('@');
  }

  Future<void> signOut() async {
    await FirebaseLogin.beginSignOut();
  }
}
