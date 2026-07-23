class TagTemplates {
  TagTemplates({
    required this.id,
    required this.tagCategory,
    required this.tagReason,
    required this.tagTerritory,
    this.selected = false,
  });

  bool selected;
  String id;
  String tagCategory;
  String tagReason;
  String tagTerritory;

  TagTemplates copyWith({
    String? id,
    String? tagCategory,
    String? tagReason,
    String? tagTerritory,
  }) {
    return TagTemplates(
      id: id ?? this.id,
      tagCategory: tagCategory ?? this.tagCategory,
      tagReason: tagReason ?? this.tagReason,
      tagTerritory: tagTerritory ?? this.tagTerritory,
    );
  }
}
