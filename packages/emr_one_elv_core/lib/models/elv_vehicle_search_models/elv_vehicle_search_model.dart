class ElvVehicleSearchModel<T> {
  ElvVehicleSearchModel({
    required this.vehicleIdentifier,
    required this.year,
    required this.make,
    required this.model,
    required this.data,
    this.inProgress = false,
  });
  final String vehicleIdentifier;
  final int? year;
  final String make;
  final String model;
  final T data;
  final bool inProgress;
}
