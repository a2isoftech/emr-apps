import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class ThemedButton extends StatelessWidget {
  const ThemedButton({
    required this.text,
    required this.action,
    super.key,
    this.cta = false,
  });
  final bool cta;
  final String text;
  final Future<void> Function()? action;

  @override
  Widget build(BuildContext context) {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: action,
        style: OutlinedButton.styleFrom(
          backgroundColor:
              cta ? brandColours.ctaColour : brandColours.brandColour,
          foregroundColor:
              cta ? brandColours.onCtaColour : brandColours.onBrandColour,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            textAlign: TextAlign.center,
            text,
          ),
        ),
      ),
    );
  }
}
