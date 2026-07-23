import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/cw_error.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class CWInitModel extends StatefulWidget {
  const CWInitModel({required this.controller, super.key});

  final ContractController controller;

  @override
  State<CWInitModel> createState() => _CWInitModelState();
}

class _CWInitModelState extends State<CWInitModel> {
  late Future<PartyNewContractViewModel> modelFuture;

  @override
  void initState() {
    super.initState();

    modelFuture = widget.controller.isGplCreate.value
        ? widget.controller.createViewModelGpl()
        : widget.controller.createViewModel();
  }

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      backgroundColor: Colors.red[700],
    );

    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;

    return FutureBuilder<PartyNewContractViewModel>(
      future: modelFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            widget.controller.nextStep();
          });
        } else if (snapshot.hasError) {
          if (snapshot.error is CWError) {
            final err = snapshot.error as CWError?;
            final message = err?.errorType == CWErrorType.noPublications
                ? '${context.l10n.noPublicationsFoundFor} '
                      '${widget.controller.partyAccountNo}'
                : err?.errorType == CWErrorType.noOrderBooks
                ? context.l10n.noOrderBooks
                : context.l10n.unknownFailure;
            return _getErrorWidget(context, message, style, brandColours);
          }
          return _getErrorWidget(
            context,
            snapshot.error.toString(),
            style,
            brandColours,
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.l10n.settingUp.toUpperCase(),
              style: EmrOneConstants.kSmallHeadingTextStyle.copyWith(
                color: ExpansionTileTheme.of(context).textColor,
              ),
            ),
            const SizedBox(height: Insets.gutter),
            const Center(child: CircularProgressIndicator()),
          ],
        );
      },
    );
  }

  Center _getErrorWidget(
    BuildContext context,
    String err,
    ButtonStyle style,
    EOBrandTheme brandColours,
  ) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(err, style: EmrOneConstants.kSmallHeadingTextStyle),
          FilledButton(
            child: Text(context.l10n.cancel.toUpperCase()),
            onPressed: () => context.goNamed(
              NamedRoutes.traderPartyPrices,
              params: {'partyAccountNo': widget.controller.partyAccountNo},
            ),
          ),
        ],
      ),
    );
  }
}
