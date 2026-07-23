class ResponseModel {
  ResponseModel({required this.isSuccess, this.message, this.goBack = false});
  final bool isSuccess;
  final String? message;
  final bool goBack;
}
