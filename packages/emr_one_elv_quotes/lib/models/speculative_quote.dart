import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_core/models/yard/yard_models.dart';
import 'package:emr_one_elv_quotes/models/common_classes/vehicle_quote.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide Address;

class SpeculativeQuote {
  SpeculativeQuote({
    this.vehicleDescription,
    this.vehicleConfiguration,
    this.collected,
    this.delivered,
    this.created,
    this.expires,
    this.yard,
    this.postcode,
    this.priceGuid,
    this.hasTechemetCat,
  });

  VehicleDetail? vehicleDescription;
  VehicleConfiguration? vehicleConfiguration;
  VehicleQuote? collected;
  VehicleQuote? delivered;
  DateTime? created;
  DateTime? expires;
  Yard? yard;
  String? postcode;
  String? priceGuid;
  bool? hasTechemetCat;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (vehicleDescription != null) {
      json['vehicleDescription'] = vehicleDescription;
    }
    if (vehicleConfiguration != null) {
      json['vehicleConfiguration'] = vehicleConfiguration;
    }
    if (collected != null) {
      json['collected'] = collected;
    }
    if (delivered != null) {
      json['delivered'] = delivered;
    }
    if (created != null) {
      json['created'] = created!.toUtc().toIso8601String();
    }
    if (expires != null) {
      json['expires'] = expires!.toUtc().toIso8601String();
    }
    if (yard != null) {
      json['yard'] = yard;
    }
    if (postcode != null) {
      json['postcode'] = postcode;
    }
    if (priceGuid != null) {
      json['priceGuid'] = priceGuid;
    }
    if (hasTechemetCat != null) {
      json['hasTechemetCat'] = hasTechemetCat;
    }
    return json;
  }

  static SpeculativeQuote? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SpeculativeQuote(
        vehicleDescription:
            VehicleDetail.fromJson(json['vehicleDescription']),
        vehicleConfiguration:
            VehicleConfiguration.fromJson(json['vehicleConfiguration']),
        collected: VehicleQuote.fromJson(json['collected']),
        delivered: VehicleQuote.fromJson(json['delivered']),
        created: DateTime.tryParse(json['created'] as String),
        expires: DateTime.tryParse(json['expires'] as String),
        yard: yardFromApi(
          ApiYard.fromJson(json['yard']) ??
              ApiYard(
                name: '',
                code: '',
                address: Address(line1: '', postCode: ''),
                drivingDistance: Distance(miles: 1, kilometers: 1),
                geodeticDistance: Distance(kilometers: 1, miles: 1),
                canCollect: true,
                canDeliver: true,
              ),
        ),
        postcode: json['postcode'] as String?,
        priceGuid: json['priceGuid'] as String?,
        hasTechemetCat: json['hasTechemetCat'] as bool?,
      );
    }
    return null;
  }

  static List<SpeculativeQuote>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SpeculativeQuote>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpeculativeQuote.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
