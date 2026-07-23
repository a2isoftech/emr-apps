class AccessProfile {
  AccessProfile({
    required this.externalId,
    required this.name,
    required this.description,
  });

  factory AccessProfile.fromJson(Map<String, dynamic> json) {
    return AccessProfile(
      externalId: json['externalId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );
  }
  final String externalId;
  final String name;
  final String description;

  Map<String, dynamic> toJson() {
    return {'externalId': externalId, 'name': name, 'description': description};
  }

  AccessProfile copyWith({
    String? externalId,
    String? name,
    String? description,
  }) {
    return AccessProfile(
      externalId: externalId ?? this.externalId,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}
