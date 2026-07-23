import 'package:emr_one_crm/models/tagging/models.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';

class TagTemplate {
  TagTemplate(
    this.id,
    this.tagCategory,
    this.tagReason,
    this.rate,
  );

  final String id;
  final TagCategory tagCategory;
  final TagReason tagReason;
   final UomValue? rate;

  String fullDescription() {
    return '${tagCategory.description} / ${tagReason.reason}';
  }
}
