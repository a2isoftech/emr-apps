import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class UserDashboardTileLimitQuery extends StatelessWidget {
  const UserDashboardTileLimitQuery({
    required this.item,
    required this.count,
    required this.element,
    super.key,
  });

  final WorkspaceElementBase element;
  final DirectQueryInstance item;
  final int count;

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
                  count.toString(),
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
                valueListenable: item.title,
                builder: (context, value, child) {
                  return Text(
                    softWrap: true,
                    maxLines: 2,
                    textAlign: TextAlign.end,
                    item.title.value,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              element.elementProperties.foregroundColour.value,
                        ),
                  );
                },
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Flexible(
              child: ValueListenableBuilder(
                valueListenable: item.subTitle,
                builder: (context, value, child) {
                  return Text(
                    softWrap: true,
                    textAlign: TextAlign.end,
                    item.subTitle.value,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color:
                              element.elementProperties.foregroundColour.value,
                        ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
