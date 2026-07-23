class UpdateManagerInput {
  UpdateManagerInput({
    required this.id,
    required this.serviceType,
    required this.priority,
    this.name,
  });

  String id;
  String? name;
  String serviceType;
  int priority;
}
