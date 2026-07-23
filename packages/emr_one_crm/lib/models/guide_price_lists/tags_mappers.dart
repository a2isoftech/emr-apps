import 'package:emr_one_crm/graphql/trader/queries/tagging/get_active_tag_templates.graphql.dart';
import 'package:emr_one_crm/models/guide_price_lists/tag_template.dart';

class TagTemplateMappers {
  static TagTemplates tagMapper(
    Query$GetTagNames$tagTemplates$nodes source,
  ) {
    return TagTemplates(
      id: source.id,
      tagCategory: source.category,
      tagReason: source.reason,
      tagTerritory: source.territory,
    );
  }
}
