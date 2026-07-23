class PatchSchedule {
  PatchSchedule({
    required this.uuid,
    this.isActive,
    this.isDigitalSignatureRequired,
  });

  PatchSchedule.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] as String;
    isActive = json['isActive'] as bool?;
    isDigitalSignatureRequired = json['isDigitalSignatureRequired'] as bool?;
  }

  late String uuid;
  late bool? isActive;
  late bool? isDigitalSignatureRequired;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['isActive'] = isActive;
    data['isDigitalSignatureRequired'] = isDigitalSignatureRequired;
    return data;
  }
}
