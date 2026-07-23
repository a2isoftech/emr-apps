import 'package:emr_one_core/models/user_info/managed_buyer.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable()
class UserInfo {
  UserInfo({
    required this.id,
    required this.emailAddress,
    this.name = '',
    this.defaultDepot = '',
    this.defaultYard = '',
    this.defaultTerritory = '',
    this.defaultOrderBookTypeId = 0,
    this.partyAccountNumber,
    this.userOrderBooks = const [],
    this.territories = const [],
    this.permissions = const [],
    this.yards = const [],
    this.managedBuyers = const [],
    this.companyAccess = const[],
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

  final String defaultDepot;

  // This isn't final because we can change this from the settings screen,
  // and also in Startup if the user has chosen a different yard.
  String defaultYard;

  final String defaultTerritory;

  final String? partyAccountNumber;

  final String emailAddress;

  final String name;

  final List<Territory> territories;
  final List<OrderBook> userOrderBooks;

  final String id;

  final List<String> permissions;

  final List<Yard> yards;

  final List<ManagedBuyer> managedBuyers;

  List<Depot> get depots =>
      territories.expand((element) => element.depots!).toList();

  final int defaultOrderBookTypeId;
  
  final List<String> companyAccess;

  bool hasPermission(String permission) => permissions.contains(permission);
}
