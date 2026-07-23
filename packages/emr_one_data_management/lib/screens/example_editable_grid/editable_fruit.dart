import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class EditableFruit {
  EditableFruit({
    required this.id,
    String? name,
    UomValue? weight,
    DateTime? purchaseDate,
    DateTime? purchaseTime,
  })  : name = ValueNotifier<String?>(name),
        weight = ValueNotifier<UomValue?>(weight),
        purchaseDate = ValueNotifier<DateTime?>(purchaseDate),
        purchaseTime = ValueNotifier<DateTime?>(purchaseTime);

  final String id;

  final ValueNotifier<String?> name;

  final ValueNotifier<UomValue?> weight;

  final ValueNotifier<DateTime?> purchaseDate;

  final ValueNotifier<DateTime?> purchaseTime;
}
