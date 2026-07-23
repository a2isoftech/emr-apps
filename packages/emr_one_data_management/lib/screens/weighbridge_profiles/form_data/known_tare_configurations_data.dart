import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class KnownTareConfigurationsData {
  KnownTareConfigurationsData({
    bool saveKnownTares = false,
    int? knownTareExpiryDays,
  })  : saveKnownTares = ValueNotifier(saveKnownTares),
        knownTareExpiryDays = ValueNotifier(knownTareExpiryDays);

  KnownTareConfigurationsData.fromKnownTareConfigurations(
    KnownTareConfigurations tareConfigurations,
  )   : saveKnownTares = ValueNotifier(tareConfigurations.saveKnownTares),
        knownTareExpiryDays =
            ValueNotifier(tareConfigurations.knownTareExpiryDays);

  KnownTareConfigurations toKnownTareConfigurations() =>
      KnownTareConfigurations(
        saveKnownTares: saveKnownTares.value,
        knownTareExpiryDays: knownTareExpiryDays.value,
      );

  late final ValueNotifier<bool> saveKnownTares;

  late final ValueNotifier<int?> knownTareExpiryDays;
}
