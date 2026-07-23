import 'package:emr_core_api/models/models.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';


bool tagsHaveCollected(List<Tag>? tags) {
  return tags?.any((tag) => (tag.isCollected ?? false) == true) ?? false;
}

String deliveryTypeFromTags(List<Tag>? tags, BuildContext context) {
  return tagsHaveCollected(tags)
      ? context.l10n.both
      : context.l10n.delivered;
}
