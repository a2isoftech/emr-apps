class PriceListModel {
  PriceListModel({
    required this.description,
    required this.price,
    required this.unitOfMeasurement,
    required this.deliveryMethod,
    required this.updatedDate,
    required this.notes,
    required this.grade,
  });

  final String description;
  final String price;
  final String unitOfMeasurement;
  final String deliveryMethod;
  final DateTime updatedDate;
  final String notes;
  final String grade;
}
