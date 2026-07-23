import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class ContractLineLocation {
  ContractLineLocation({
    required this.locationId,
    required this.fullyCharged,
    required this.haulageCharge,
    required this.locationCode,
    required this.description,
  });

  final int locationId;
  final bool fullyCharged;
  final ValueUomPair haulageCharge;
  final String locationCode;
  final String description;
}
