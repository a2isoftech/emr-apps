import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/extend_contract_dialog/extend_contract_controller.dart';
import 'package:emr_one_crm/services/services.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class ExtendContractDialog extends StatefulWidget {
  ExtendContractDialog({required this.contract, super.key}) {
    controller = ExtendContractController(
      contract: contract,
    );
  }

  late final ExtendContractController controller;
  final Contract contract;

  @override
  State<ExtendContractDialog> createState() => _ExtendContractState();
}

class _ExtendContractState extends State<ExtendContractDialog> {
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
        context.l10n.extendContract,
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
    final now = DateTime.now();
    final firstDate = widget.contract.endDate != null
        ? DateTime(
            widget.contract.endDate!.year,
            widget.contract.endDate!.month,
            widget.contract.endDate!.day,
          )
        : DateTime(now.year, now.month, now.day);
    return Form(
      key: widget.controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${context.l10n.contract}: ${widget.contract.customerContractRef}',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter / 2),
            child: EmrDateFormField(
              binding: widget.controller.endDate,
              labelText: context.l10n.endDate,
              firstDate: firstDate,
            ),
          ),
          ValueListenableBuilder<String?>(
            valueListenable: widget.controller.error,
            builder: (context, errorValue, _) {
              if (errorValue == null || errorValue.isEmpty) {
                return const SizedBox.shrink();
              }
              return Padding(
                padding: const EdgeInsets.only(top: Insets.gutter / 2),
                child: Text(
                  errorValue,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).colorScheme.error),
                ),
              );
            },
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
        ValueListenableBuilder<bool>(
          valueListenable: widget.controller.loading,
          builder: (context, loading, _) {
            if (loading) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  width: Insets.gutter + 4,
                  height: Insets.gutter + 4,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              );
            }
            return TextButton(
              onPressed: () async {
                final result = await widget.controller.save();
                if (!result.hasErrors()) {
                  if (result.data != null && context.mounted) {
                    context.pop(widget.controller.endDate.value);
                  }
                }
              },
              child: Text(context.l10n.save),
            );
          },
        ),
      ];
}
