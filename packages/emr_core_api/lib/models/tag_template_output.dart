import 'package:emr_sharedtypes/uom/uom_value.dart';

class TagTemplateOutput {
  TagTemplateOutput({
    required this.id,
    required this.category,
    required this.reason,
    this.rate,
  });

  final String id;
  final String category;
  final String reason;
  final UomValue? rate;
}
