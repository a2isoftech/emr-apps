import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pallet_listing.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PalletListing {
  PalletListing({
    this.palletTypes = const <PalletType>[],
    this.palletStates = const <PalletState>[],
    this.yards = const <String>[],
  });

  factory PalletListing.fromJson(Map<String, dynamic> json) =>
      _$PalletListingFromJson(json);

  final List<PalletType> palletTypes;
  final List<PalletState> palletStates;
  final List<String> yards;

  Map<String, dynamic> toJson() => _$PalletListingToJson(this);
}
