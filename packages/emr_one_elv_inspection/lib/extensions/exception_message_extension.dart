extension ExceptionMessageExtension on Exception {
  String get exceptionMessage {
    final message = toString();
    return message.replaceFirst('Exception: ', '');
  }
}
