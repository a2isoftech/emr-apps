import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class TwoColumns extends StatelessWidget {
  const TwoColumns({
    required this.text1,
    required this.text2,
    super.key,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final (isPhone, _) = context.getScreenFacts();

    return Row(
      children: [
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: (isPhone
                        ? theme.textTheme.bodySmall
                        : theme.textTheme.bodyLarge)!
                    .copyWith(
                  color: brandColours.onBrandColour,
                ),
              ),
              Text(
                text2,
                textAlign: TextAlign.end,
                style: (isPhone
                        ? theme.textTheme.bodySmall
                        : theme.textTheme.bodyMedium)!
                    .copyWith(
                  color: brandColours.onBrandColour,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
