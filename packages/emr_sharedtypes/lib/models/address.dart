import 'package:emr_sharedtypes/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Address {
  Address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
    required this.postCode,
    this.what3Words,
    this.countryCode,
    this.geoLocation,
    this.addressKey,
  });

  factory Address.empty() => Address(
        address1: '',
        address2: '',
        address3: '',
        address4: '',
        address5: '',
        address6: '',
        postCode: '',
      );

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  final String? address1;
  final String? address2;
  final String? address3;
  final String? address4;
  final String? address5;
  final String? address6;
  final String? postCode;
  final String? what3Words;
  final String? countryCode;
  final LatLong? geoLocation;
  final String? addressKey;

  @override
  String toString() {
    final strs = [address1, address2, address3, address4, address5, address6];

    return strs
        .where((element) => element != null && element.isNotEmpty)
        .join(', ');
  }
}
