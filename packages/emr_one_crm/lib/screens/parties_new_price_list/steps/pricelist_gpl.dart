import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pl_stepcore.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pricelist_publication.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/steps/pricelist_yard.dart';
import 'package:flutter/material.dart';

class PLStepGPL extends StatefulWidget {
  const PLStepGPL({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  State<PLStepGPL> createState() => _PLStepGPLState();
}

class _PLStepGPLState extends State<PLStepGPL> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return PLStepCore(
      onNext: () {
        if (formKey.currentState?.validate() ?? false) {
          widget.controller.nextStep();
        }
      },
      onNextText: '${context.l10n.next}: ${context.l10n.grades}',
      onPrev: widget.controller.previousStep,
      controller: widget.controller,
      child: Form(
        key: formKey,
        child: FormField(
          validator: (value) {
            if (widget.controller.model?.selectedPublication == null) {
              return context.l10n.required;
            }
            if (!widget.controller.anyYardsSelected()) {
              return context.l10n.selectAtLeastOneYard;
            }
            return null;
          },
          builder: (field) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PLPublication(controller: widget.controller),
                Visibility(
                  visible: widget.controller.model?.selectedPublication != null,
                  child: PLYard(controller: widget.controller),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
