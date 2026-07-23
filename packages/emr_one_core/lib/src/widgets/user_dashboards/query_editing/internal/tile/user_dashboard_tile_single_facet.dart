import 'package:emr_one_core/models/user_dashboards/internal/direct_query_facet_result_value.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class UserDashboardTileSingleFacet extends StatelessWidget {
  const UserDashboardTileSingleFacet({
    required this.item,
    required this.facet,
    required this.element,
    super.key,
  });

  final DirectQueryInstance item;
  final DirectQueryFacetResultValue facet;
  final WorkspaceElementBase element;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ValueListenableBuilder(
              valueListenable: element.elementProperties.foregroundColour,
              builder: (context, value, child) {
                return Text(
                  facet.count.toString(),
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: element.elementProperties.foregroundColour.value,
                      ),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: ValueListenableBuilder(
                valueListenable: item.facetLabel,
                builder: (context, value, child) {
                  return ValueListenableBuilder(
                    valueListenable: element.elementProperties.foregroundColour,
                    builder: (context, value, child) {
                      return Text(
                        softWrap: true,
                        textAlign: TextAlign.end,
                        item.facetLabel.value != ''
                            ? item.facetLabel.value
                            : facet.range,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: element
                                  .elementProperties.foregroundColour.value,
                            ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            ValueListenableBuilder(
              valueListenable: item.subTitle,
              builder: (context, value, child) {
                return Text(
                  textAlign: TextAlign.end,
                  item.subTitle.value,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: element.elementProperties.foregroundColour.value,
                      ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
