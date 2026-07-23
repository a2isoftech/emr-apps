import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class UserDashboardItemParameterLineItem extends StatelessWidget {
  const UserDashboardItemParameterLineItem({
    required this.paramItem,
    super.key,
  });

  final DirectQueryParameterValue paramItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: Insets.gutter),
            child: Text(
              paramItem.name.value,
            ),
          ),
        ),
        const SizedBox(width: Insets.gutter / 2),
        Expanded(
          child: EmrTextFormField(
            binding: paramItem.value,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Parameter value cannot be empty';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
