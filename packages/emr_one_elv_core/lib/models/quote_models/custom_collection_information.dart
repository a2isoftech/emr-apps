import 'package:emr_one_elv_core/models/address.dart';

class CustomCollectionInformation {
  CustomCollectionInformation({
    this.address,
    this.contact,
    this.contactNumber,
  });

  Address? address;
  String? contact;
  String? contactNumber;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (address != null) {
      json['address'] = address;
    }
    if (contact != null) {
      json['contact'] = contact;
    }
    if (contactNumber != null) {
      json['contactNumber'] = contactNumber;
    }
    return json;
  }

  static CustomCollectionInformation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return CustomCollectionInformation(
        address: Address.fromJson(json['address']),
        contact: json['contact'] as String?,
        contactNumber: json['contactNumber'] as String?,
      );
    }
    return null;
  }

  static List<CustomCollectionInformation>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <CustomCollectionInformation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomCollectionInformation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
