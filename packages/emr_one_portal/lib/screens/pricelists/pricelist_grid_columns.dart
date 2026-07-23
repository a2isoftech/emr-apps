abstract class PriceListGridColumns {
  // Constants for individual columns
  static const String description = 'Description';
  static const String price = 'Price';
  static const String unitOfMeasurement = 'Unit Of Measurements';
  static const String deliveryMethod = 'Delivery Method';
  static const String updatedDate = 'Updated date';
  static const String notes = 'Notes';
  static const String grade = 'Grade';

  // List of all columns for the grid
  static const List<String> gridColumns = [
    grade,
    description,
    price,
    unitOfMeasurement,
    deliveryMethod,
    updatedDate,
    notes,
  ];
}
