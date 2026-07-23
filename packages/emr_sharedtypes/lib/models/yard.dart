import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'yard.g.dart';

@JsonSerializable()
class Yard {
  Yard({
    required this.yardCode,
    required this.name,
    required this.shortName,
    this.defaultPaymentMethod = PaymentMethod.none,
    PaymentMethods? paymentMethods,
    Devices? devices,
    this.defaultRetailAccountPool,
    this.active = true,
    this.id,
    this.company,
    this.territory,
    this.companyId,
    this.companyCode,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.addressLine4,
    this.addressLine5,
    this.addressLine6,
    this.postCode,
    this.telephone,
    this.territoryId,
    this.territoryCode,
    this.timeZoneId,
    this.regionId,
    this.region,
    this.wasteCarrierRegNo,
    this.wmlExemptionNo,
    this.extendedProperties,
    this.promptForPhotoDefault,
    this.enforceIssueDateForUtilityBill,
    this.blockExpiredUtilityBill,
    this.managerIds,
    this.timezone,
    this.primaryCashierPaymentSystem = PaymentSystemEnum.trade2,
  }) : paymentMethods = paymentMethods ?? PaymentMethods.defaults(),
       devices = devices ?? Devices.defaults();

  factory Yard.fromJson(Map<String, dynamic> json) => _$YardFromJson(json);

  Map<String, dynamic> toJson() => _$YardToJson(this);

  final String? id;
  final String yardCode;
  final String name;
  final String shortName;
  final String? defaultRetailAccountPool;
  final Company? company;
  final Region? region;
  final Territory? territory;
  final Timezone? timezone;
  final String? companyId;
  final String? companyCode;
  final String? addressLine1;
  final String? addressLine2;
  final String? addressLine3;
  final String? addressLine4;
  final String? addressLine5;
  final String? addressLine6;
  final String? postCode;
  final String? telephone;
  final String? territoryId;
  final String? territoryCode;
  final String? timeZoneId;
  final String? regionId;
  final String? wasteCarrierRegNo;
  final String? wmlExemptionNo;
  final bool active;
  final Map<String, dynamic>? extendedProperties;
  final List<String>? managerIds;
  final bool? promptForPhotoDefault;
  final bool? enforceIssueDateForUtilityBill;
  final bool? blockExpiredUtilityBill;
  final PaymentMethod defaultPaymentMethod;
  final PaymentMethods paymentMethods;
  final Devices devices;
  final PaymentSystemEnum primaryCashierPaymentSystem;
}
