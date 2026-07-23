import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/direct_query_parameter_line_item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class DirectQueryParameterEditor extends StatelessWidget {
  const DirectQueryParameterEditor({required this.model, super.key});

  final ValueNotifier<List<DirectQueryParameterDefinition>> model;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: model,
      builder: (_, v, ___) => _buildBody(v),
    );
  }

  Widget _buildBody(List<DirectQueryParameterDefinition> items) =>
      ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) => DirectQueryParameterLineItem(
          paramItem: items[index],
        ),
      );
}
