import 'package:emr_sharedtypes/pricing/delivery_method.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';

class CreateTagInput {
  CreateTagInput({
    required this.accountId,
    required this.tagTemplateId,
    required this.productId,
    required this.yardId,
    required this.deliveryMethod,
    required this.validFrom,
    required this.validTo,
    this.rate,
  });

  final String accountId;
  final String tagTemplateId;
  final String productId;
  final String yardId;
  final DeliveryMethod deliveryMethod;
  final DateTime validFrom;
  final DateTime validTo;
  UomValue? rate;
}
