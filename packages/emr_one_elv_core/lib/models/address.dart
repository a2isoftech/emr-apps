import 'package:emr_one_elv_core/models/geolocation.dart';

class Address {
  /// Returns a new [Address] instance.
  Address({
    required this.line1,
    required this.postCode,
    this.line2,
    this.line3,
    this.line4,
    this.line5,
    this.line6,
    this.geoLocation,
    this.country,
    this.shortAddress,
  });

  factory Address.initial() => Address(line1: '', postCode: '');

  String line1;
  String? line2;
  String? line3;
  String? line4;
  String? line5;
  String? line6;
  String postCode;
  GeoLocation? geoLocation;
  String? country;
  String? shortAddress;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['line1'] = line1;
    json['line2'] = line2 ?? '';
    if (line3 != null) {
      json['line3'] = line3;
    }
    if (line4 != null) {
      json['line4'] = line4;
    }
    json['line5'] = line5 ?? '';
    if (line6 != null) {
      json['line6'] = line6;
    }
    json['postcode'] = postCode;
    if (geoLocation != null) {
      json['geoLocation'] = geoLocation!.toJson();
    }
    if (country != null) {
      json['country'] = country;
    }
    if (shortAddress != null) {
      json['shortAddress'] = shortAddress;
    }
    return json;
  }

  T? mapValueOfType<T>(dynamic map, String key) {
    final dynamic value = map is Map ? map[key] : null;
    return value is T ? value : null;
  }

  static Address? fromJson(dynamic value) {
    if (value == null) return null;
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return Address(
        line1: json['line1'] as String,
        line2: json['line2'] as String?,
        line3: json['line3'] as String?,
        line4: json['line4'] as String?,
        line5: json['line5'] as String?,
        line6: json['line6'] as String?,
        postCode: json['postcode'] as String,
        geoLocation: GeoLocation.fromJson(json['geoLocation']),
        country: json['country'] as String?,
        shortAddress: json['shortAddress'] as String?,
      );
    }
    return null;
  }
}
