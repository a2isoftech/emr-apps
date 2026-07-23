import 'package:emr_core_api/emr_core_api.dart';

extension ElvInventorySearchExtensions on String {
  Enum$VehicleStatus facetTermToEnum$VehicleStatus() => switch (toLowerCase()) {
        ('none') => Enum$VehicleStatus.NONE,
        ('awaitinginspection') => Enum$VehicleStatus.AWAITING_INSPECTION,
        ('inspected') => Enum$VehicleStatus.INSPECTED,
        ('dismantling') => Enum$VehicleStatus.DISMANTLING,
        ('dismantled') => Enum$VehicleStatus.DISMANTLED,
        ('disposed') => Enum$VehicleStatus.DISPOSED,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid vehicle status string',
          ),
      };

  Enum$PartStatus facetTermToEnum$PartStatus() => switch (toLowerCase()) {
        ('none') => Enum$PartStatus.NONE,
        ('onvehicle') => Enum$PartStatus.ON_VEHICLE,
        ('onshelf') => Enum$PartStatus.ON_SHELF,
        ('onheap') => Enum$PartStatus.ON_HEAP,
        ('sold') => Enum$PartStatus.SOLD,
        ('missing') => Enum$PartStatus.MISSING,
        ('unknown') => Enum$PartStatus.UNKNOWN,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid part status string',
          ),
      };
}
