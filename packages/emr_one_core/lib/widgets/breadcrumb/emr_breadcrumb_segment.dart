import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class EmrBreadcrumbSegment extends StatelessWidget {
  const EmrBreadcrumbSegment({
    required this.label,
    super.key,
    this.hasSeparator = false,
    this.onPressed,
    this.isHome = false,
  });
  final String label;
  final bool hasSeparator;
  final VoidCallback? onPressed;
  final bool isHome;

  @override
  Widget build(BuildContext context) {
    final crumb = InkWell(
      onTap: onPressed,
      child: isHome
          ? Icon(
              Icons.home_outlined,
              size: 15,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            )
          : Text(
              label.replaceAll('\n', ' '),
              softWrap: false,
              style: EmrOneConstants.kSmallBreadcrumbTextStyle.copyWith(
                color: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .appBarForegroundColour,
              ),
            ),
    );

    if (hasSeparator) {
      return Row(
        children: [
          crumb,
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Insets.gutter / 2.0),
            child: Text(
              '/',
              style:
                  EmrOneConstants.kSmallBreadcrumbTextSeparatorStyle.copyWith(
                color: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .appBarForegroundColour,
              ),
            ),
          ),
        ],
      );
    }
    return crumb;
  }
}
