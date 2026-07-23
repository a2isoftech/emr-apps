import 'package:emr_account_registration/extensions/extensions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({
    required this.countryId,
    this.textBefore,
    this.textAfter,
    super.key,
  });

  final String countryId;
  final String? textBefore;
  final String? textAfter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final url = _getUrl(countryId);

    return RichText(
      text: TextSpan(
        text: (textBefore ?? '').isEmpty ? '' : textBefore,
        style: theme.textTheme.labelMedium,
        children: <TextSpan>[
          TextSpan(
            text: context.l10n.privacyPolicy,
            style: theme.textTheme.labelMedium?.underlined(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(url);
              },
          ),
          TextSpan(
            text: (textAfter ?? '').isEmpty ? '' : textAfter,
            style: theme.textTheme.labelMedium,
          ),
        ],
      ),
    );
  }

  static Future<void> launch(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }

  static String _getUrl(String countryId) {
    switch (countryId) {
      case 'US':
        return 'https://us.emrgroup.com/how-we-operate/policies-and-documentation/privacy-policy';
      case 'DE':
        return 'https://de.emrgroup.com/wie-wir-arbeiten/richtlinien-und-dokumentation/datenschutz-bestimmungen';
      case 'NL':
        return 'https://nl.emrgroup.com/hoe-wij-werken/beleid-en-documentatie/privacybeleid';
    }
    return 'https://uk.emrgroup.com/how-we-operate/policies-and-documentation/privacy-policy';
  }
}
