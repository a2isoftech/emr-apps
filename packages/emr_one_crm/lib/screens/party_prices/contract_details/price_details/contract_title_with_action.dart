import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/constants/permission_constants.dart';
import 'package:emr_one_crm/extensions/contract_extensions.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/close_contract_dialog/close_contract_dialog.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/extend_contract_dialog/extend_contract_dialog.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContractTitleWithAction extends StatelessWidget {
  const ContractTitleWithAction({
    required this.contract,
    this.onExtended,
    super.key,
  });

  final Contract contract;
  final void Function(DateTime?)? onExtended;
  static const bool hideEditContract = true;

  @override
  Widget build(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    final isGpl = contract.ref.contains('GPL');
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: width / 2,
                    child: Wrap(
                      children: [
                        Text(
                          '${_getContractType(
                            isGpl,
                            contract.lines.first.isSpot,
                            context,
                          )}: ',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          _contractRef(contract.ref),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                contract.bookType == ContractBookType.sales
                    ? context.l10n.sales.toUpperCase()
                    : context.l10n.purchase.toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          Wrap(
            spacing: Insets.gutter / 4,
            runSpacing: Insets.gutter / 4,
            children: [
              if (userInfoService.userInfo
                      .hasPermission(PermissionConstants.modifyContracts) &&
                  contract.deliveredAmount() == 0 &&
                  !hideEditContract)
                Tooltip(
                  message: context.l10n.editContract,
                  child: IconButtonWidget(
                    onPressed: () => _navigateToContractWizard(
                      context,
                      contract.lines.first.isSpot
                          ? NamedRoutes.traderPartyPricesEditSpot
                          : NamedRoutes.traderPartyPricesEditFixed,
                      false,
                    ),
                    icon: Icons.edit,
                  ),
                ),
              if (userInfoService.userInfo
                      .hasPermission(PermissionConstants.createContracts) &&
                  !isGpl)
                Tooltip(
                  message: context.l10n.copyContract,
                  child: IconButtonWidget(
                    onPressed: () => _navigateToContractWizard(
                      context,
                      isGpl
                          ? NamedRoutes.traderPartyPricesNewPricelist
                          : (contract.lines.first.isSpot
                              ? NamedRoutes.traderPartyPricesNewSpot
                              : NamedRoutes.traderPartyPricesNewFixed),
                      true,
                    ),
                    icon: Icons.copy_all_outlined,
                  ),
                ),
              if (userInfoService.userInfo
                      .hasPermission(PermissionConstants.closeContracts) &&
                  !isGpl)
                Tooltip(
                  message: context.l10n.closeContract,
                  child: IconButtonWidget(
                    onPressed: () {
                      _showCloseContract(
                        context,
                        contract,
                      );
                    },
                    icon: Icons.close,
                  ),
                ),
              if (userInfoService.userInfo
                  .hasPermission(PermissionConstants.modifyContracts))
                Tooltip(
                  message: context.l10n.extendContract,
                  child: IconButtonWidget(
                    onPressed: () {
                      _showExtendContract(
                        context,
                        contract,
                      );
                    },
                    icon: Icons.calendar_month,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _showCloseContract(BuildContext context, Contract contract) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return CloseContractDialog(
          contract: contract,
        );
      },
    );
  }

  String _getContractType(bool isGpl, bool isSpot, BuildContext context) {
    if (isGpl) {
      return context.l10n.priceList;
    } else if (isSpot) {
      return context.l10n.spotContract;
    }

    return context.l10n.fixedContract;
  }

  String _contractRef(String ref) {
    if (ref.contains('GPL')) {
      return ref.substring(3);
    } else {
      return ref;
    }
  }

  void _navigateToContractWizard(
    BuildContext context,
    String routeName,
    bool isClone,
  ) {
    Navigator.of(context, rootNavigator: true).pop();

    context.go(
      context.namedLocation(
        routeName,
        queryParams: {
          'contractId': contract.id.toString(),
          'isClone': isClone.toString(),
        },
        params: {
          'partyAccountNo': contract.party,
        },
      ),
    );
  }

  Future<void> _showExtendContract(BuildContext context, Contract contract) {
    return showDialog<DateTime?>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return ExtendContractDialog(
          contract: contract,
        );
      },
    ).then((value) {
      if (value == null) {
        return;
      }
      onExtended?.call(value);
    });
  }
}
