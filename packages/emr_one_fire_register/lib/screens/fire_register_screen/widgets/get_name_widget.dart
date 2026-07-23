import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/constants/punch_type_constants.dart';
import 'package:emr_one_fire_register/models/models.dart';
import 'package:flutter/material.dart';

class GetNameWidget extends StatelessWidget {
  const GetNameWidget({
    required this.rowItem,
    super.key,
  });

  final PunchEvent rowItem;

  @override
  Widget build(BuildContext context) {
    if (rowItem.subjectType == SubjectType.visitor.index &&
        rowItem.visitorHost != null &&
        rowItem.visitorHost!.isNotEmpty) //visitor
    {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rowItem.subjectName,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            ' ${context.l10n.host}:${rowItem.visitorHost}',
            overflow: TextOverflow.ellipsis,
          ),
        ],
      );
    } else {
      return Text(
        rowItem.subjectName,
        overflow: TextOverflow.ellipsis,
      );
    }
  }
}
