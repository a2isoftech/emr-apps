class DoorSearchResult {
  DoorSearchResult({
    required this.accessControllerId,
    required this.accessControllerName,
    required this.doorExternalId,
    required this.doorName,
    this.siteId,
    this.siteName,
    this.priorityConfigId,
    this.priorityConfigName,
    this.defaultPriority,
    this.scheduleConfigId,
    this.scheduleConfigName,
  });

  factory DoorSearchResult.fromJson(Map<String, dynamic> json) {
    return DoorSearchResult(
      accessControllerId: json['accessControllerId'] as String,
      accessControllerName: json['accessControllerName'] as String,
      siteId: json['siteId'] as String?,
      siteName: json['siteName'] as String?,
      doorExternalId: json['doorExternalId'] as String,
      doorName: json['doorName'] as String,
      priorityConfigId: json['priorityConfigId'] as String?,
      priorityConfigName: json['priorityConfigName'] as String?,
      defaultPriority: json['defaultPriority'] as String?,
      scheduleConfigId: json['scheduleConfigId'] as String?,
      scheduleConfigName: json['scheduleConfigName'] as String?,
    );
  }
  final String accessControllerId;
  final String accessControllerName;
  final String? siteId;
  final String? siteName;
  final String doorExternalId;
  final String doorName;

  // Flattened priority fields
  final String? priorityConfigId;
  final String? priorityConfigName;
  final String? defaultPriority;

  // Flattened schedule fields
  final String? scheduleConfigId;
  final String? scheduleConfigName;

  Map<String, dynamic> toJson() {
    return {
      'accessControllerId': accessControllerId,
      'accessControllerName': accessControllerName,
      'siteId': siteId,
      'siteName': siteName,
      'doorExternalId': doorExternalId,
      'doorName': doorName,
      'priorityConfigId': priorityConfigId,
      'priorityConfigName': priorityConfigName,
      'defaultPriority': defaultPriority,
      'scheduleConfigId': scheduleConfigId,
      'scheduleConfigName': scheduleConfigName,
    };
  }
}
