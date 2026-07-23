import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/party_new_price_list_model.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/wizard/get_wizard.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart'
    hide Step, StepState, Stepper, StepperType;
import 'package:http/http.dart';

class PartyNewPriceListMobileScreen extends StatefulWidget with AppBarExtender {
  const PartyNewPriceListMobileScreen({
    required this.client,
    required this.partyAccountNo,
    required this.tradeRUrl,
    super.key,
  });

  final BaseClient client;
  final String partyAccountNo;
  final Uri tradeRUrl;

  @override
  bool hideDefaultAppBar() => true;

  @override
  State<PartyNewPriceListMobileScreen> createState() =>
      _PartyNewPriceListMobileScreenState();
}

class _PartyNewPriceListMobileScreenState
    extends State<PartyNewPriceListMobileScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final PartiesPriceListWizardController controller;
    //To enable localisations via context this needed to be moved to build
    //method to avoid Theme.of() change error caused by this being in initState
    final overview = EOWizardStep(
      isPage: false,
      title: context.l10n.overview,
    );
    final step1 = EOWizardStep(
      title: context.l10n.gpl,
    );
    final step2 = EOWizardStep(
      title: context.l10n.selectGrades,
    );
    final step3 = EOWizardStep(
      title: context.l10n.rates,
    );
    final step4 = EOWizardStep(
      title: context.l10n.summary,
    );
    final step5 = EOWizardStep(
      title: context.l10n.processing,
    );
    final step6 = EOWizardStep(
      title: context.l10n.confirmation,
    );
    controller = PartiesPriceListWizardController(
      [
        overview,
        step1,
        step2,
        step3,
        step4,
        step5,
        step6,
      ],
      client: widget.client,
      partyAccountNo: widget.partyAccountNo,
      tradeRUrl: widget.tradeRUrl,
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => EmrDialog.cancelOk(
              context,
              titleText: context.l10n.areYouSure,
              contentText: context.l10n.anyWorkWillBeLost,
              onOk: () {
                context.goNamed(
                  NamedRoutes.traderPartyPrices,
                  params: {
                    'partyAccountNo': controller.partyAccountNo,
                  },
                );
              },
            ),
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
        leading: controller.getStepNumber == controller.steps.length - 1
            ? const SizedBox()
            : BackButton(
                color: Colors.white,
                onPressed: () {
                  if (controller.getStepNumber == 0) {
                    context.goNamed(
                      NamedRoutes.traderPartyPrices,
                      params: {
                        'partyAccountNo': controller.partyAccountNo,
                      },
                    );
                  } else {
                    controller.previousStep();
                  }
                },
              ),
        elevation: 0,
        title: Text(
          context.l10n.createAPriceList,
          style: TextStyle(
            color: isDark
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        backgroundColor: isDark
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.secondary,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 16),
          child: Text(
            controller.partyAccountNo,
            style: TextStyle(
              color: isDark
                  ? Theme.of(context).colorScheme.onSurface
                  : Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
      ),
      body: FutureBuilder<PartyNewPriceListModel?>(
        future: controller.createPriceListModel(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data != null &&
                snapshot.data!.publications.isNotEmpty) {
              controller.model = snapshot.data;
              return getMobileWizardWidget(controller);
            } else {
              return _getErrorWidget(
                snapshot.error.toString(),
                context,
                widget.partyAccountNo,
              );
            }
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          }
        },
      ),
    );
  }
}

Center _getErrorWidget(
  String err,
  BuildContext context,
  String partyAccountNo,
) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          err == 'null' ? context.l10n.thisAccountHasNoPublications : err,
          style: EmrOneConstants.kSmallHeadingTextStyle,
        ),
        FilledButton(
          child: Text(context.l10n.cancel.toUpperCase()),
          onPressed: () => context.goNamed(
            NamedRoutes.traderPartyPrices,
            params: {
              'partyAccountNo': partyAccountNo,
            },
          ),
        ),
      ],
    ),
  );
}
