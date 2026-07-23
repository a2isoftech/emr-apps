import 'package:emr_one_cashiersearch/models/account.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_account.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketAccount {
  TicketAccount({
    this.accountId,
    this.accountNumber,
    this.name,
    this.locationId,
    this.locationName,
    this.details,
    this.address,
    this.sicCode,
  });
  factory TicketAccount.fromJson(Map<String, dynamic> json) =>
      _$TicketAccountFromJson(json);

  Map<String, dynamic> toJson() => _$TicketAccountToJson(this);

  TicketAccount copyWith({Map<String, dynamic>? changes}) {
    final json = toJson();
    if (changes != null) {
      json.addAll(changes);
    }
    return TicketAccount.fromJson(json);
  }

  // String? partyAccountNo;
  // String? partyName;
  String? accountId;
  String? accountNumber;
  String? name;
  String? locationId;
  String? locationName;
  Account? details;
  Address? address;
  int? sicCode;
  // bool? isManual;
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
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
  });

  factory Address.empty() => Address(
        address1: '',
        address2: '',
        address3: '',
        address4: '',
        address5: '',
        address6: '',
        postCode: '',
        what3Words: '',
        countryCode: '',
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

  @override
  String toString() {
    final strs = [address1, address2, address3, address4, address5, address6];

    return strs
        .where((element) => element != null && element.isNotEmpty)
        .join(', ');
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class LatLong {
  LatLong(
    this.latitude,
    this.longitude,
  );

  factory LatLong.fromJson(Map<String, dynamic> json) =>
      _$LatLongFromJson(json);
  final double? latitude;
  final double? longitude;

  Map<String, dynamic> toJson() => _$LatLongToJson(this);
}
