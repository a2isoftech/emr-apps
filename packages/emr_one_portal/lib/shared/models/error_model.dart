import 'package:uuid/uuid.dart';

class ErrorModel {
  ErrorModel(
    this.errorMessage, {
    required this.errorCode,
    required this.showErrorOnNewScreen,
  }) {
    const uuid = Uuid();
    errorIdForLogging = uuid.v4();
  }

  final String errorCode;
  final String? errorMessage;
  final bool showErrorOnNewScreen;
  late final String errorIdForLogging;
}
