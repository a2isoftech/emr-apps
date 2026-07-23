class AddressSearchResult {
  AddressSearchResult({required this.id, required this.description});

  String id;
  String description;

  static AddressSearchResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AddressSearchResult(
        id: json['id'] as String,
        description: json['description'] as String,
      );
    }
    return null;
  }
}
