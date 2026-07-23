import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/close_contract_dialog/close_contract_controller.dart';
import 'package:emr_one_crm/services/services.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class CloseContractDialog extends StatefulWidget {
  CloseContractDialog({required this.contract, super.key}) {
    controller = CloseContractController(
      contractHeaderId: contract.id,
    );
  }

  late final CloseContractController controller;
  final Contract contract;

  @override
  State<CloseContractDialog> createState() => _CloseContractState();
}

class _CloseContractState extends State<CloseContractDialog> {
  late bool _loading = false;

  @override
  void initState() {
    super.initState();
    final httpClient = context.read<BaseClient>();
    final config = context.read<AppConfig>();
    widget.controller.contractService = ContractService(
      httpClient,
      Uri.parse(config.tradeRUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(
        context.l10n.closeContract,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      content: _buildContent(),
      actions: _getActions(context),
    );
  }

  Widget _buildContent() {
    return Form(
      key: widget.controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${context.l10n.closureType}:',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter / 2),
            child: EmrPicker<Enum$CloseContractType>(
              initialValue: _closeContractTypeText(
                context,
                widget.controller.closureType,
              ),
              items: (_) => _closeContractTypes(),
              itemTitleText: (item) => _closeContractTypeText(context, item),
              validator: Validators.required,
              onItemSelected: (item) =>
                  setState(() => widget.controller.closureType = item),
              mode: EmrPickerMode.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter),
            child: Text(
              '${context.l10n.reason}:',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter / 2),
            child: EmrPicker<Enum$CloseContractReason>(
              initialValue: _closeContractReasonText(
                context,
                widget.controller.closeReason,
              ),
              items: (_) => _closeContractReasons(),
              itemTitleText: (item) => _closeContractReasonText(context, item),
              validator: Validators.required,
              onItemSelected: (item) =>
                  setState(() => widget.controller.closeReason = item),
              mode: EmrPickerMode.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter),
            child: Text(
              '${context.l10n.notes}:',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter / 2),
            child: TextFormField(
              maxLines: 3,
              onChanged: (value) => widget.controller.notes = value,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getActions(BuildContext context) => [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(context.l10n.cancel),
        ),
        if (_loading)
          const CircularProgressIndicator()
        else
          TextButton(
            onPressed: () {
              setState(() {
                _loading = true;
              });
              widget.controller.save().then((result) async {
                setState(() {
                  _loading = false;
                });
                if (result.hasErrors()) {
                  if (context.mounted) {
                    await EmrDialog.ok(
                      context,
                      titleText: context.l10n.error,
                      contentText:
                          result.errors?.map((e) => e.message).join('\n') ??
                              context.l10n.unknownError,
                    );
                  }

                  return;
                }
                if (result.data != null) {
                  if (context.mounted) {
                    await EmrDialog.ok(
                      context,
                      titleText: context.l10n.success,
                      contentText:
                          context.l10n.contractClosedSuccessfullyMessage,
                    ).then((_) async {
                      if (context.mounted) {
                        Navigator.popUntil(
                          context,
                          (route) =>
                              route.settings.name ==
                              NamedRoutes.traderPartyPrices,
                        );
                      }
                    });
                  }
                }
              });
            },
            child: Text(context.l10n.save),
          ),
      ];

  Future<List<Enum$CloseContractType>> _closeContractTypes() => Future.value(
        Enum$CloseContractType.values
            .where((e) => e != Enum$CloseContractType.$unknown)
            .toList(),
      );

  String _closeContractTypeText(
    BuildContext context,
    Enum$CloseContractType value,
  ) {
    switch (value) {
      case Enum$CloseContractType.CANCELLED:
        return context.l10n.cancelled;
      case Enum$CloseContractType.CLOSED:
        return context.l10n.closed;
      case Enum$CloseContractType.$unknown:
        return '';
    }
  }

  Future<List<Enum$CloseContractReason>> _closeContractReasons() =>
      Future.value(
        Enum$CloseContractReason.values
            .where((e) => e != Enum$CloseContractReason.$unknown)
            .toList(),
      );

  String _closeContractReasonText(
    BuildContext context,
    Enum$CloseContractReason value,
  ) {
    switch (value) {
      case Enum$CloseContractReason.CHANGE_IN_COMMERCIAL_AGREEMENT:
        return context.l10n.changeInCommercialAgreement;
      case Enum$CloseContractReason.CONTRACT_COMPLETE_AS_PER_CONTRACTUAL_TERMS:
        return context.l10n.contractCompleteAsPerContractualTerms;
      case Enum$CloseContractReason.CONTRACT_ERROR_OR_INCORRECT_TERMS:
        return context.l10n.contractErrorOrIncorrectTerms;
      case Enum$CloseContractReason.CONTRACT_EXPIRED_OR_OUT_OF_DATE:
        return context.l10n.contractExpiredOrOutOfDate;
      case Enum$CloseContractReason.CONTRACT_PRICED_MANUALLY:
        return context.l10n.contractPricedManually;
      case Enum$CloseContractReason.$unknown:
        return '';
    }
  }
}
