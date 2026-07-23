import 'package:emr_one_crm/models/tagging/models.dart';

class Supporting {
  Supporting(
    this.reasons,
    this.categories,
    this.territories,
  );
  final List<TagReason> reasons;
  final List<TagCategory> categories;
  final List<TagTerritory> territories;
}
