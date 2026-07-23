import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({
    required this.title,
    required this.value,
    required this.iconData,
    this.selected = false,
    this.iconColor,
    this.width,
    this.onSelect,
    this.fontSize,
    this.backgroundColor = Colors.transparent,
    super.key,
  });

  final String title;
  final Signal<int> value;
  final IconData iconData;
  final double? width;
  final Color? iconColor;
  final bool selected;
  final double? fontSize;
  final void Function({bool selected})? onSelect;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => onSelect?.call(selected: !selected),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.gutter,
          vertical: Insets.gutter / 2,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: selected ? theme.colorScheme.tertiary : theme.dividerColor,
          ),
          borderRadius: BorderRadius.circular(Insets.gutter / 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      iconData,
                      color: iconColor,
                      size: theme.textTheme.headlineSmall?.fontSize,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Insets.gutter / 4,
                      ),
                      child: Text(
                        value.watch(context).toString(),
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
