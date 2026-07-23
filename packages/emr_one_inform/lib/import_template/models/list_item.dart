class ListItem {
  ListItem({required this.id, required this.title});
  ListItem.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        title = json['title'] as String;
  final int id;
  final String title;
}
