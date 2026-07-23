class Group {
  Group({
    required this.azureId,
    required this.active,
    required this.name,
    required this.id,
  });

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      azureId: json['azureId'] as String,
      active: json['active'] as bool,
      name: json['name'] as String,
      id: json['id'] as String,
    );
  }
  final String azureId;
  final bool active;
  final String name;
  final String id;

  Map<String, dynamic> toJson() => {
    'azureId': azureId,
    'active': active,
    'name': name,
    'id': id,
  };
}
