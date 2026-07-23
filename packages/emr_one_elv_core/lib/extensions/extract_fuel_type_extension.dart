extension ExtractFuelTypeExtension on String {
  String extractFuelType() {
    switch (this) {
      case 'PETROL':
      case 'Gasoline Fuel':
        return 'PETROL';
      case 'DIESEL':
      case 'Diesel Fuel':
        return 'DIESEL';
      default:
        return 'n/a';
    }
  }
}
