import 'package:emr_core_api/models/tag.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class AccountPrice {
  AccountPrice({
    required this.accountId,
    required this.accountCode,
    required this.accountName,
    required this.yardCode,
    required this.yardId,
    required this.publicationName,
    required this.product,
    required this.productId,
    required this.productName,
    required this.resultantPrice,
    required this.deliveryMethod,
    required this.managerName,
    required this.publicationId,
    this.rate,
    this.previousIssueRate,
    this.issueDate,
    this.tags = const [],
    this.tagDelta,
    this.locations = const [],
    this.haulageRate,
  });

  final String accountCode;
  final String accountName;
  final String accountId;
  final String yardCode;
  final String yardId;
  final String publicationName;
  final String product;
  final String productId;
  final String productName;
  final UomValue? rate;
  final UomValue? resultantPrice;
  final UomValue? previousIssueRate;
  final DateTime? issueDate;
  final DeliveryMethod deliveryMethod;
  final String managerName;
  final List<Tag> tags;
  final String publicationId;
  final double? tagDelta;
  final List<String> locations;
  final UomValue? haulageRate;
}
