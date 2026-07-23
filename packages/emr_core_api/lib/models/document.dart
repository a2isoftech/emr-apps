class Document<T> {
  Document({required this.entity, required this.changeVector});

  T entity;
  String changeVector;
}
