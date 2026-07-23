// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Yard _$YardFromJson(Map<String, dynamic> json) => Yard(
      yardCode: json['yardCode'] as String,
      name: json['name'] as String,
      shortName: json['shortName'] as String,
      defaultPaymentMethod: $enumDecodeNullable(
              _$PaymentMethodEnumMap, json['defaultPaymentMethod']) ??
          PaymentMethod.none,
      paymentMethods: json['paymentMethods'] == null
          ? null
          : PaymentMethods.fromJson(
              json['paymentMethods'] as Map<String, dynamic>),
      devices: json['devices'] == null
          ? null
          : Devices.fromJson(json['devices'] as Map<String, dynamic>),
      defaultRetailAccountPool: json['defaultRetailAccountPool'] as String?,
      active: json['active'] as bool? ?? true,
      id: json['id'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      territory: json['territory'] == null
          ? null
          : Territory.fromJson(json['territory'] as Map<String, dynamic>),
      companyId: json['companyId'] as String?,
      companyCode: json['companyCode'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      addressLine3: json['addressLine3'] as String?,
      addressLine4: json['addressLine4'] as String?,
      addressLine5: json['addressLine5'] as String?,
      addressLine6: json['addressLine6'] as String?,
      postCode: json['postCode'] as String?,
      telephone: json['telephone'] as String?,
      territoryId: json['territoryId'] as String?,
      territoryCode: json['territoryCode'] as String?,
      timeZoneId: json['timeZoneId'] as String?,
      regionId: json['regionId'] as String?,
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
      wasteCarrierRegNo: json['wasteCarrierRegNo'] as String?,
      wmlExemptionNo: json['wmlExemptionNo'] as String?,
      extendedProperties: json['extendedProperties'] as Map<String, dynamic>?,
      promptForPhotoDefault: json['promptForPhotoDefault'] as bool?,
      enforceIssueDateForUtilityBill:
          json['enforceIssueDateForUtilityBill'] as bool?,
      blockExpiredUtilityBill: json['blockExpiredUtilityBill'] as bool?,
      managerIds: (json['managerIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      timezone: json['timezone'] == null
          ? null
          : Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
      primaryCashierPaymentSystem: $enumDecodeNullable(
              _$PaymentSystemEnumEnumMap,
              json['primaryCashierPaymentSystem']) ??
          PaymentSystemEnum.trade2,
    );

Map<String, dynamic> _$YardToJson(Yard instance) => <String, dynamic>{
      'id': instance.id,
      'yardCode': instance.yardCode,
      'name': instance.name,
      'shortName': instance.shortName,
      'defaultRetailAccountPool': instance.defaultRetailAccountPool,
      'company': instance.company,
      'region': instance.region,
      'territory': instance.territory,
      'timezone': instance.timezone,
      'companyId': instance.companyId,
      'companyCode': instance.companyCode,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'addressLine3': instance.addressLine3,
      'addressLine4': instance.addressLine4,
      'addressLine5': instance.addressLine5,
      'addressLine6': instance.addressLine6,
      'postCode': instance.postCode,
      'telephone': instance.telephone,
      'territoryId': instance.territoryId,
      'territoryCode': instance.territoryCode,
      'timeZoneId': instance.timeZoneId,
      'regionId': instance.regionId,
      'wasteCarrierRegNo': instance.wasteCarrierRegNo,
      'wmlExemptionNo': instance.wmlExemptionNo,
      'active': instance.active,
      'extendedProperties': instance.extendedProperties,
      'managerIds': instance.managerIds,
      'promptForPhotoDefault': instance.promptForPhotoDefault,
      'enforceIssueDateForUtilityBill': instance.enforceIssueDateForUtilityBill,
      'blockExpiredUtilityBill': instance.blockExpiredUtilityBill,
      'defaultPaymentMethod':
          _$PaymentMethodEnumMap[instance.defaultPaymentMethod]!,
      'paymentMethods': instance.paymentMethods,
      'devices': instance.devices,
      'primaryCashierPaymentSystem':
          _$PaymentSystemEnumEnumMap[instance.primaryCashierPaymentSystem]!,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.none: 'NONE',
  PaymentMethod.fasterPayment: 'FASTER_PAYMENT',
  PaymentMethod.cash: 'CASH',
  PaymentMethod.atm: 'ATM',
  PaymentMethod.autoCheque: 'AUTO_CHEQUE',
  PaymentMethod.manualCheque: 'MANUAL_CHEQUE',
  PaymentMethod.overnightFasterPayment: 'OVERNIGHT_FASTER_PAYMENT',
  PaymentMethod.secorePrepayCard: 'SECORE_PREPAY_CARD',
  PaymentMethod.autoChequeWithEncashmentAtm: 'AUTO_CHEQUE_WITH_ENCASHMENT_ATM',
  PaymentMethod.autoChequeWithEncashmentCash:
      'AUTO_CHEQUE_WITH_ENCASHMENT_CASH',
  PaymentMethod.digitalWalletWithAtm: 'DIGITAL_WALLET_WITH_ATM',
  PaymentMethod.digitalWalletWithCash: 'DIGITAL_WALLET_WITH_CASH',
  PaymentMethod.splitPayment: 'SPLIT_PAYMENT',
};

const _$PaymentSystemEnumEnumMap = {
  PaymentSystemEnum.trade2: 'TRADE2',
  PaymentSystemEnum.oppra: 'OPPRA',
};
