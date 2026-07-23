import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/extensions/extensions.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';

class DeliveredVsTarget extends StatelessWidget {
  const DeliveredVsTarget({
    required this.contract,
    super.key,
  });

  final Contract contract;

  @override
  Widget build(BuildContext context) {
    final maxDeliverable = _getMaxDeliverable(contract);
    final amountDelivered = _getDeliveredAmount(contract);
    final percentage =
        maxDeliverable > 0 ? amountDelivered / maxDeliverable : 0.0;
    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${_getTargetLoadLabelText(context, contract)}: ',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Insets.gutter / 2),
                child: Container(
                  width: MediaQuery.sizeOf(context).width / 2,
                  height: Insets.gutter + 4,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(Insets.gutter / 2),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(Insets.gutter / 8),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(Insets.gutter / 2),
                      ),
                    ),
                    child: LinearProgressIndicator(
                      value: percentage,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        _getProgressColor(contract),
                      ),
                      backgroundColor: _getProgressBackgroundColor(contract),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(Insets.gutter / 2),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 2,
            height: Insets.gutter + 4,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: Insets.gutter / 2),
                child: Text(
                  '$amountDelivered/$maxDeliverable',
                  style: EmrOneConstants.kOpenSans9TextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getProgressBackgroundColor(Contract contract) {
    if (contract.type == ContractTypeEnum.fixed) {
      return EmrOneCrmColours.secondaryRedProgressBackColor;
    } else if (contract.type == ContractTypeEnum.spot) {
      return EmrOneCrmColours.secondaryYellowProgressBackColor;
    } else {
      return EmrOneCrmColours.secondaryGreenProgressBackColor;
    }
  }

  Color _getProgressColor(Contract contract) {
    if (contract.type == ContractTypeEnum.fixed) {
      return EmrColours.secondaryRed;
    } else if (contract.type == ContractTypeEnum.spot) {
      return EmrColours.secondaryYellow;
    } else {
      return EmrColours.secondaryGreen;
    }
  }

  double _getMaxDeliverable(Contract contract) {
    return contract.maxDeliverable();
  }

  double _getDeliveredAmount(Contract contract) {
    return contract.deliveredAmount();
  }

  String _getTargetLoadLabelText(BuildContext context, Contract contract) {
    if (contract.type == ContractTypeEnum.fixed) {
      return context.l10n.totalTargetWeightVsDeliveredWeight;
    } else {
      return context.l10n.totalTargetLoadsVsDeliveryLoads;
    }
  }
}
