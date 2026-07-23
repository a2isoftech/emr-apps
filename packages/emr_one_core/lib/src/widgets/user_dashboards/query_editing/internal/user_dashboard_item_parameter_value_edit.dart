import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/user_dashboard_item_parameter_value_line_item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class UserDashboardItemParameterValueEdit extends StatelessWidget {
  const UserDashboardItemParameterValueEdit({
    required this.model,
    super.key,
  });

  final ValueNotifier<List<DirectQueryParameterValue>> model;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: model,
      builder: (_, v, ___) => _buildBody(v),
    );
  }

  Widget _buildBody(List<DirectQueryParameterValue> items) => ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) => UserDashboardItemParameterLineItem(
          paramItem: items[index],
        ),
      );
}
