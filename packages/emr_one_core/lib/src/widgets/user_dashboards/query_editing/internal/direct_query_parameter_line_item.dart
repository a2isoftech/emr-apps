import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class DirectQueryParameterLineItem extends StatelessWidget {
  const DirectQueryParameterLineItem({required this.paramItem, super.key});

  final DirectQueryParameterDefinition paramItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Row(
        children: [
          Flexible(
            child: EmrTextFormField(
              binding: paramItem.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Parameter name cannot be empty';
                }
                return null;
              },
            ),
          ),
          const SizedBox(width: Insets.gutter / 2),
          Flexible(
            child: EmrPickerFormField(
              items: (_) => Future.value(DirectQueryParameterType.values),
              itemTitleText: (item) => item.name,
              binding: paramItem.type,
              mode: EmrPickerMode.dropdown,
            ),
          ),
          const SizedBox(width: Insets.gutter / 2),
          Flexible(
            child: EmrTextFormField(
              binding: paramItem.defaultValue,
            ),
          ),
        ],
      ),
    );
  }
}
