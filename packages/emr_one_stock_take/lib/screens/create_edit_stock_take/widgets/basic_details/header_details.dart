import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeaderDetails extends StatelessWidget {
  const HeaderDetails({
    required this.name,
    required this.yard,
    required this.conductedBy,
    required this.productFamily,
    super.key,
    this.onEditClick,
    this.conductedByLabel,
    this.onShowWorkflowHistory,
    this.onShowSearch,
  });
  final String name;
  final String yard;
  final String conductedBy;
  final String? conductedByLabel;
  final void Function()? onEditClick;
  final String productFamily;
  final void Function()? onShowWorkflowHistory;
  final void Function()? onShowSearch;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      color: kIsWeb ? null : Theme.of(context).primaryColor,
      child: Padding(
        padding: kIsWeb ? EdgeInsets.zero : const EdgeInsets.all(Insets.gutter),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kIsWeb
                      ? theme.textTheme.headlineSmall
                      : theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary,
                        ),
                ),
                Row(
                  children: [
                    Text(
                      '${context.l10n.yard}: ',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: kIsWeb ? null : theme.colorScheme.onPrimary,
                      ),
                    ),
                    Text(
                      '$yard, ',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: kIsWeb ? null : theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${context.l10n.productFamily}: ',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: kIsWeb ? null : theme.colorScheme.onPrimary,
                      ),
                    ),
                    Text(
                      productFamily,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: kIsWeb ? null : theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '${conductedByLabel ?? context.l10n.conductedBy}: ',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: kIsWeb ? null : theme.colorScheme.onPrimary,
                      ),
                    ),
                    Text(
                      conductedBy,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: kIsWeb ? null : theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                if (onShowWorkflowHistory != null && kIsWeb)
                  TextButton(
                    onPressed: () => onShowWorkflowHistory!.call(),
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                    ),
                    child: Text(
                      context.l10n.workflowHistory,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: kIsWeb
                            ? EmrColours.secondaryCyan
                            : theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
              ],
            ),
            const Spacer(),
            if (onShowWorkflowHistory != null && !kIsWeb)
              IconButton(
                icon: const Icon(Icons.view_timeline),
                onPressed: () => onShowWorkflowHistory!.call(),
                color: kIsWeb ? null : theme.colorScheme.onPrimary,
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
              ),
            if (onEditClick != null)
              IconButton(
                icon: const Icon(Icons.edit),
                color: kIsWeb ? null : theme.colorScheme.onPrimary,
                onPressed: () {
                  onEditClick?.call();
                },
              ),
            if (onShowSearch != null)
              IconButton(
                icon: const Icon(Icons.search),
                padding: const EdgeInsets.only(top: Insets.gutter / 2),
                onPressed: () => onShowSearch?.call(),
                color: theme.colorScheme.onPrimary,
              ),
          ],
        ),
      ),
    );
  }
}
