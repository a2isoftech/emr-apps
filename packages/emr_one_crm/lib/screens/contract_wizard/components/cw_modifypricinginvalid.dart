import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWPricingInvalid extends StatefulWidget {
  const CWPricingInvalid({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  @override
  State<CWPricingInvalid> createState() => _CWPricingInvalidState();
}

class _CWPricingInvalidState extends State<CWPricingInvalid>
    with AutomaticKeepAliveClientMixin<CWPricingInvalid> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FormField(
      key: widget.controller.pricingInvalidKey,
      validator: (value) {
        if (widget.controller.model!.regenerateGrades) {
          widget.controller.addInvalidKey(widget.controller.pricingInvalidKey!);
          return context.l10n.regenerateGrades;
        }
        return null;
      },
      builder: (field) {
        if (field.hasError) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
            child: Text(
              field.errorText ?? '',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
