import 'package:emr_sharedtypes/models/models.dart';

class YardPaymentRule extends WorkflowRule {
  YardPaymentRule({
    required super.id,
    required super.yardCode,
    required super.levelUserEmails,
    required this.minAmount,
    required this.maxAmount,
  });

  double minAmount;
  double maxAmount;
}
