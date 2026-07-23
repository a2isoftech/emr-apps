// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => UserInfo(
      id: json['id'] as String,
      emailAddress: json['emailAddress'] as String,
      name: json['name'] as String? ?? '',
      defaultDepot: json['defaultDepot'] as String? ?? '',
      defaultYard: json['defaultYard'] as String? ?? '',
      defaultTerritory: json['defaultTerritory'] as String? ?? '',
      defaultOrderBookTypeId:
          (json['defaultOrderBookTypeId'] as num?)?.toInt() ?? 0,
      partyAccountNumber: json['partyAccountNumber'] as String?,
      userOrderBooks: (json['userOrderBooks'] as List<dynamic>?)
              ?.map((e) => OrderBook.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      territories: (json['territories'] as List<dynamic>?)
              ?.map((e) => Territory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      yards: (json['yards'] as List<dynamic>?)
              ?.map((e) => Yard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      managedBuyers: (json['managedBuyers'] as List<dynamic>?)
              ?.map((e) => ManagedBuyer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      companyAccess: (json['companyAccess'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'defaultDepot': instance.defaultDepot,
      'defaultYard': instance.defaultYard,
      'defaultTerritory': instance.defaultTerritory,
      'partyAccountNumber': instance.partyAccountNumber,
      'emailAddress': instance.emailAddress,
      'name': instance.name,
      'territories': instance.territories,
      'userOrderBooks': instance.userOrderBooks,
      'id': instance.id,
      'permissions': instance.permissions,
      'yards': instance.yards,
      'managedBuyers': instance.managedBuyers,
      'defaultOrderBookTypeId': instance.defaultOrderBookTypeId,
      'companyAccess': instance.companyAccess,
    };
