class LeadSource {
  LeadSource({required this.id, this.name = ''});

  factory LeadSource.fromJson(Map<String, dynamic> json) {
    return LeadSource(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
    );
  }

  final int id;
  final String name;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
