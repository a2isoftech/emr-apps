import 'package:emr_core_api/emr_core_api.dart';

extension BeamSearchExtensions on String {
  Enum$ItemStatus facetTermToEnum$ItemStatus() => switch (toLowerCase()) {
        ('inqa') => Enum$ItemStatus.IN_QA,
        ('instock') => Enum$ItemStatus.IN_STOCK,
        ('onorder') => Enum$ItemStatus.ON_ORDER,
        ('reserved') => Enum$ItemStatus.RESERVED,
        ('sold') => Enum$ItemStatus.SOLD,
        ('deleted') => Enum$ItemStatus.DELETED,
        ('returned') => Enum$ItemStatus.RETURNED,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid status string',
          ),
      };
}
