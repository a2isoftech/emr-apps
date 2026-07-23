enum AcquisitionTypeEnum {
  unknown('Unknown'),
  delivered('Delivered'),
  collected('Collected');

  const AcquisitionTypeEnum(this.label);

  final String label;

  static String getLabel(String value) => switch (value) {
        'unknown' => unknown.label,
        'delivered' => delivered.label,
        'collected' => collected.label,
        _ => value,
      };
}
