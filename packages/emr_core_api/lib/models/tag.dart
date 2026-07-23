import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class Tag {
  Tag({
    required this.id,
    required this.functional,
    required this.category,
    required this.effectiveFrom,
    required this.effectiveTo,
    required this.reason,
    required this.templateId,
    this.rate,
    this.createdDate,
    this.createdBy,
    this.fullyCharged,
    this.isCollected,
    this.showToCustomer,
    this.accountLocationKeys,
    this.haulageRate,
  });

  final String id;
  final bool functional;
  final String category;
  final String reason;
  final String templateId;
  final DateTime effectiveFrom;
  final DateTime effectiveTo;
  final UomValue? rate;
  final DateTime? createdDate;
  final String? createdBy;
  final bool? fullyCharged;
  final bool? isCollected;
  final bool? showToCustomer;
  final List<String>? accountLocationKeys;
  final UomValue? haulageRate;
}
