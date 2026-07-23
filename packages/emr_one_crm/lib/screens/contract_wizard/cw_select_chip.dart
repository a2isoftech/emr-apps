import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class CWSelectChip<T> extends StatelessWidget {
  const CWSelectChip({
    required this.label,
    required this.subTitle,
    required this.value,
    super.key,
    this.selected = false,
    this.error = false,
    this.disabled = false,
    this.onTap,
  });

  final String label;
  final String subTitle;
  final bool selected;
  final bool disabled;
  final bool error;
  final void Function(T value)? onTap;
  final T value;
  static const double kHeight = 45;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final lightStyle = OutlinedButton.styleFrom(
      foregroundColor: EmrColours.primaryGreen,
      side: const BorderSide(width: 2, color: EmrColours.primaryGreen),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );
    final darkStyle = OutlinedButton.styleFrom(
      foregroundColor: EmrColours.primaryGreen,
      backgroundColor: Theme.of(context).colorScheme.surface,
      side: const BorderSide(width: 2, color: EmrColours.primaryGreen),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );
    final errorStyle = OutlinedButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.surface,
      side: const BorderSide(color: Colors.red),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );
    final normalStyleDark = OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Theme.of(context).colorScheme.surface,
      side: BorderSide(color: Theme.of(context).dividerColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );
    final normalStyleLight = OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Theme.of(context).colorScheme.surface,
      side: BorderSide(color: Theme.of(context).dividerColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );

    final selectedStyle = isDark ? darkStyle : lightStyle;
    final normalStyle = isDark ? normalStyleDark : normalStyleLight;

    return OutlinedButton(
      onPressed: onTap != null ? () => onTap!(value) : null,
      style: selected
          ? selectedStyle
          : error
              ? errorStyle
              : normalStyle,
      child: SizedBox(
        height: kHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
