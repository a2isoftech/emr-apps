import 'package:emr_sharedtypes/models/models.dart';

class StocktakeRule extends WorkflowRule {
  StocktakeRule({
    required super.id,
    required super.yardCode,
    required super.levelUserEmails,
    required this.productFamily,
  });

  String productFamily;
}
