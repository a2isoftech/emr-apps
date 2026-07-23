import 'package:emr_one_forms_engine/core/models/dto/instance/components/yes_no_question_instance.dart';

class SubmitParameters {
  SubmitParameters({required this.signature, required this.emailsToNotify});
  final CapturedMediaDTO? signature;
  final List<String>? emailsToNotify;
}
