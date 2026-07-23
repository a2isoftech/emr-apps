import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class BlueHeader extends StatelessWidget {
  const BlueHeader({
    required this.headingPrimary,
    required this.headingSecondary,
    super.key,
  });

  final String headingPrimary;
  final String headingSecondary;

  @override
  Widget build(BuildContext context) {
    final brandColours =
        Theme.of(context).extension<EOBrandTheme>() ?? const EOBrandTheme();
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: brandColours.brandColour,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Row(
                  children: [
                    Text(
                      headingPrimary,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: brandColours.onBrandColour),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Row(
                  children: [
                    Text(
                      headingSecondary,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: brandColours.onBrandColour),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

TextStyle textInBrandColor(
  TextStyle? style,
  EOBrandTheme eoTheme,
) {
  return style!.copyWith(color: eoTheme.onBrandColour);
}
