import 'package:emr_one_core/emr_one_core.dart';

class AccountUserInfo extends UserInfo {
  AccountUserInfo({
    required super.id,
    required super.emailAddress,
    required this.signedUp,
    required this.isProspect,
    required this.isRetail,
    required this.isSupplier,
    required this.isBusiness,
    required this.qrLogin,
    required this.initials,
    super.name = '',
    super.defaultDepot = '',
    super.defaultTerritory = '',
    super.partyAccountNumber,
    super.territories = const [],
    super.permissions = const [],
    super.yards = const [],
  });

  final bool signedUp;

  final bool isProspect;

  final bool isRetail;

  final bool isSupplier;

  final bool isBusiness;

  final bool qrLogin;

  final String initials;
}
