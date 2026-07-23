class TagCategory {
  TagCategory(
    this.id,
    this.description, {
    required this.functional,
  });
  final int id;
  final String description;
  final bool functional;
}
