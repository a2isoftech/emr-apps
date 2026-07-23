class CommentModel {
  CommentModel({
    required this.userName,
    required this.userId,
    required this.date,
    required this.content,
    this.isFailed = false,
    this.errorMessage,
  });
  final String userName;
  final String userId;
  final DateTime date;
  final String content;
  final bool isFailed;
  final String? errorMessage;
}
