class CommentModel {
  const CommentModel(
    this.content,
    this.userName,
    this.date, {
    this.isFailed = false,
  });
  final String content;
  final String userName;
  final DateTime date;
  final bool isFailed;
}
