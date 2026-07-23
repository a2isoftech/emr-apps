import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/components/cw_addpricinglist.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:flutter/material.dart';

class CWGradePricing extends StatefulWidget {
  const CWGradePricing({
    required this.controller,
    required this.formKey,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;
  @override
  State<CWGradePricing> createState() => _CWGradePricingState();
}

class _CWGradePricingState extends State<CWGradePricing>
    with AutomaticKeepAliveClientMixin<CWGradePricing> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final defaultUom = Uom.values[widget.controller.settingsController.uomId()];
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return FutureBuilder(
      builder: (BuildContext ctx, AsyncSnapshot<List<PricingList>> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          if (snapshot.data == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.not_accessible, size: 128),
                  Text(context.l10n.failedToLoadData),
                ],
              ),
            );
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.gutter),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      context.l10n.gradePricing,
                      style: EmrOneConstants.kSmallestTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: Insets.gutter / 2,
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            widget.controller.revertBack();
                            Navigator.pop(context);
                          },
                          child: Text(context.l10n.back),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: widget.controller,
                        builder: (context, _) {
                          final isSaveEnabled =
                              !widget.controller.hasInvalidTargetWeight;
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.onPrimaryFixed,
                            ),
                            onPressed: isSaveEnabled
                                ? () {
                                    setState(() {
                                      widget.controller.save();
                                    });
                                    Navigator.pop(context);
                                    if (widget.formKey.currentState
                                            ?.validate() ??
                                        true) {
                                      widget.controller.nextStep();
                                    } else {
                                      if (widget
                                          .controller
                                          .invalidKeys
                                          .isEmpty) {
                                        return;
                                      }

                                      final targetContext = widget
                                          .controller
                                          .invalidKeys
                                          .first
                                          .currentContext;
                                      if (targetContext != null) {
                                        Scrollable.ensureVisible(
                                          targetContext,
                                          duration: const Duration(
                                            milliseconds: 200,
                                          ),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    }
                                  }
                                : null,
                            child: Text(
                              context.l10n.save,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                AnimatedBuilder(
                  animation: widget.controller,
                  builder: (context, _) {
                    final pricingList =
                        List.of(widget.controller.model!.pricingUpdateModel)
                          ..sort(
                            (a, b) =>
                                a.grade.gradeCode.compareTo(b.grade.gradeCode),
                          );
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: pricingList.length,
                      itemBuilder: (context, index) {
                        final element = pricingList[index];
                        return AddPricingList(
                          isDark: isDark,
                          defaultUom: defaultUom,
                          controller: widget.controller,
                          gplGrade: element.grade,
                        );
                      },
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: Insets.gutter / 2,
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            widget.controller.revertBack();
                            Navigator.pop(context);
                          },
                          child: Text(context.l10n.back),
                        ),
                      ),
                      AnimatedBuilder(
                        animation: widget.controller,
                        builder: (context, child) {
                          final isSaveEnabled =
                              !widget.controller.hasInvalidTargetWeight;

                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.onPrimaryFixed,
                            ),
                            onPressed: isSaveEnabled
                                ? () {
                                    setState(() {
                                      widget.controller.save();
                                    });
                                    Navigator.pop(context);
                                    if (widget.formKey.currentState
                                            ?.validate() ??
                                        true) {
                                      widget.controller.nextStep();
                                    } else {
                                      if (widget
                                          .controller
                                          .invalidKeys
                                          .isEmpty) {
                                        return;
                                      }

                                      final targetContext = widget
                                          .controller
                                          .invalidKeys
                                          .first
                                          .currentContext;
                                      if (targetContext != null) {
                                        Scrollable.ensureVisible(
                                          targetContext,
                                          duration: const Duration(
                                            milliseconds: 200,
                                          ),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    }
                                  }
                                : null,
                            child: Text(
                              context.l10n.save,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        } else {
          return const CircularProgressIndicator();
        }
      },
      future: widget.controller.initAddPricingList(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
