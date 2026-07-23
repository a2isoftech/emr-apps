import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/routing/nested/nested_page_mobile_route.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_addgrade.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_gradepricing.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_modifypricinginvalid.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class GradesFooter extends StatefulWidget {
  const GradesFooter({
    required this.controller,
    required this.formKey,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;
  @override
  State<GradesFooter> createState() => _GradesFooterState();
}

class _GradesFooterState extends State<GradesFooter> {
  bool enableAddGrade = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
          child: Align(
            alignment: Alignment.centerRight,
            child: Wrap(
              alignment: WrapAlignment.end,
              spacing: Insets.gutter / 2,
              runSpacing: Insets.gutter / 4,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(),
                  child: enableAddGrade
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                          ),
                          onPressed: () {
                            setState(() {
                              enableAddGrade = !enableAddGrade;
                              widget.controller
                                  .scrollToKey(widget.controller.gradesKey!);
                            });
                          },
                          child: Text(context.l10n.addGrade),
                        )
                      : OutlinedButton(
                          onPressed: () {
                            setState(() {
                              enableAddGrade = !enableAddGrade;
                            });
                          },
                          child: Text(context.l10n.cancelGradeAddition),
                        ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(),
                  child: ElevatedButton(
                    onPressed: () {
                      if (widget.controller.model!.selectedGrades.isNotEmpty) {
                        Navigator.of(context).push<void>(
                          NestedPageMobileRoute(
                            title: widget.controller.isSpot
                                ? Text(context.l10n.createASpotContract)
                                : Text(context.l10n.createAFixedContract),
                            child: CWGradePricing(
                              controller: widget.controller,
                              formKey: widget.formKey,
                            ),
                            leading: BackButton(
                              color: Colors.white,
                              onPressed: () {
                                widget.controller.revertBack();
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        );
                      }
                    },
                    style: widget.controller.model!.selectedGrades.isNotEmpty
                        ? ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimaryFixed,
                          )
                        : ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.outlineVariant,
                          ),
                    child: Text(
                      context.l10n.modifyPricing,
                      style: TextStyle(
                        color:
                            widget.controller.model!.selectedGrades.isNotEmpty
                                ? Theme.of(context).colorScheme.onPrimary
                                : Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (widget.controller.model!.regenerateGrades)
          CWPricingInvalid(controller: widget.controller),
        if (!enableAddGrade)
          CWAddGrade(
            controller: widget.controller,
          )
        else
          Container(),
      ],
    );
  }
}
