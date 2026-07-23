import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class Location {
  const Location(
    this.code,
    this.name,
    this.address,
    this.primaryContactId,
    this.description,
    this.sitePermitOrExemptionNumber, {
    this.sitePermitHolder,
    this.active,
  });
  factory Location.empty() => Location(
        '',
        '',
        Address.empty(),
        '',
        '',
        '',
      );
  final Address address;
  final String? name;
  final String? code;
  final String? primaryContactId;
  final String? description;
  final String? sitePermitOrExemptionNumber;
  final bool? sitePermitHolder;
  final bool? active;
}
