import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';

class ContractDetailsError extends StatelessWidget {
  const ContractDetailsError({
    required this.contract,
    required this.partyAccountNo,
    super.key,
  });

  final Contract contract;
  final String partyAccountNo;

  @override
  Widget build(BuildContext context) {
    EmrLogger.event(
      EmrOneCrmTelemetry.kPartyPricesDetailsScreen,
      type: EmrOneCoreTelemetry.kTypeResult,
      params: {
        'party': partyAccountNo,
        'contractRef': contract.ref,
        'message': 'Contract has no grades',
        EmrOneCoreTelemetry.kSuccessParamName: 'false',
      },
    );

    return Center(
      child: GenericMessage(
        title: context.l10n.thereAreNoGradesOnThisContract,
        subTitle: context.l10n.thisContractIsNotValid,
        onTapOk: () => Navigator.of(context, rootNavigator: true).pop(),
      ),
    );
  }
}
