import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class CostFormData {
  CostFormData({
    required this.costParty,
    required this.costStatus,
    required this.value,
    required this.typeId,
    required this.rate,
  });

  final ValueNotifier<KeyValuePair<String, String>> costParty;

  final ValueNotifier<Enum$CostStatus> costStatus;

  final ValueNotifier<UomValue?> rate;

  final ValueNotifier<String> typeId;

  final ValueNotifier<double?> value;
}
