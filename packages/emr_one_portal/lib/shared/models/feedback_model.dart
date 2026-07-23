import 'package:emr_one_portal/portal.dart';

class FeedbackModel {
  bool hasFeedback = false;
  String? message;
  FeedbackType feedbackType = FeedbackType.error;
  PaymentRequestFeedbackEnum? feedbackEnum;

  void set({
    required FeedbackType type,
    String? msg,
    PaymentRequestFeedbackEnum? feedbackEnum,
  }) {
    if (msg != null && feedbackEnum != null) {
      throw Exception('Cannot set both Message and Feedback Enum');
    }
    message = msg;
    feedbackType = type;
    hasFeedback = true;
    this.feedbackEnum = feedbackEnum;
  }
}
