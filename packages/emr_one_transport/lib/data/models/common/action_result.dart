import 'package:emr_one_transport/data/models/common/enum.dart';

class ActionResult {
  ActionResult({
    required this.status,
    this.errorMessage,
    this.data,
  });
  final ActionStatus status;
  final String? errorMessage;
  final dynamic data;
}
