import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/screens/home/home_page_model.dart';
import 'package:emr_one_portal/screens/home/proof_model.dart';
import 'package:emr_one_portal/shared/services/build_context_extensions.dart';
import 'package:emr_one_portal/shared/shared.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext, HomePageModel)>
    homepageWidgetRegistry = {
  'paymentDetails': (context, model) {
    return Column(
      children: [
        verticalSpacer(),
        blueButton(
          text: context.l10n.paymentDetails,
          theme: Theme.of(context),
          onPressed: () => context.goToPaymentDetails(),
        ),
      ],
    );
  },
  'termsAndConditions': (context, model) {
    return Column(
      children: [
        verticalSpacer(),
        blueButton(
          text: context.l10n.termsAndConditions,
          theme: Theme.of(context),
          onPressed: () => context.goToPaymentDetails(),
        ),
      ],
    );
  },
  'proofOfIdentity': (context, model) {
    return Column(
      children: [
        verticalSpacer(),
        _proofWidget(
          context: context,
          theme: Theme.of(context),
          isProofOfId: true,
          proofModel: model.proofOfId,
        ),
      ],
    );
  },
  'proofOfAddress': (context, model) {
    return Column(
      children: [
        verticalSpacer(),
        _proofWidget(
          context: context,
          theme: Theme.of(context),
          isProofOfId: false,
          proofModel: model.proofOfAddress,
        ),
      ],
    );
  },
  'scanTicket': (context, model) {
    return Column(
      children: [
        verticalSpacer(),
        colouredButton(
          width: 300,
          text: context.l10n.scanTicket,
          style: EmrButtonStyles.cta(),
          onPressed: () => context.goToScanTicket(),
        ),
      ],
    );
  },
};

Widget _proofWidget({
  required BuildContext context,
  required ThemeData theme,
  required bool isProofOfId,
  ProofModel? proofModel,
}) {
  final activeLocale = Localizations.localeOf(context);
  return Wrap(
    spacing: Insets.gutter,
    runSpacing: Insets.gutter,
    crossAxisAlignment: WrapCrossAlignment.center,
    alignment:
        context.isInPortraitMode() ? WrapAlignment.center : WrapAlignment.start,
    children: [
      blueButton(
        text: isProofOfId
            ? context.l10n.proofOfIdentity
            : context.l10n.proofOfAddress,
        theme: theme,
        onPressed: () {
          isProofOfId
              ? context.goToIdentityProof()
              : context.goToAddressProof();
        },
      ),
      if (proofModel == null || proofModel.isMissing) ...{
        Tooltip(
          message: isProofOfId
              ? context.l10n.errorProofOfIDIsRequired
              : context.l10n.errorProofOfAddressIsRequired,
          child: const Icon(
            Icons.error,
            color: Colors.red,
            size: 30,
          ),
        ),
      } else ...{
        Text(
          DateToStringHelpers.formatDateByLocale(
            proofModel.expiryDate!,
            activeLocale.toString(),
          ),
          overflow: TextOverflow.ellipsis,
        ),
        if (proofModel.isExpired) ...{
          Tooltip(
            message: isProofOfId
                ? context.l10n.errorProofOfIDExpired
                : context.l10n.errorProofOfAddressExpired,
            child: const Icon(
              Icons.error,
              color: Colors.red,
              size: 30,
            ),
          ),
        } else if (proofModel.wouldExpireWithin3Months) ...{
          Tooltip(
            message: isProofOfId
                ? context.l10n.errorProofOfIDIsExpiring
                : context.l10n.errorProofOfAddressIsExpiring,
            child: const Icon(
              Icons.warning,
              color: Colors.yellow,
              size: 30,
            ),
          ),
        } else ...{
          tickInCircle(theme: theme, enabled: true),
        },
      },
    ],
  );
}
