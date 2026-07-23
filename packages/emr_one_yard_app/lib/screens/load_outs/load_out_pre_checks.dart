import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/load_out/labeled_switch.dart';
import 'package:emr_one_yard_app/controllers/load_out_controller.dart';
import 'package:flutter/material.dart';

class LoadOutPreChecks extends StatelessWidget {
  const LoadOutPreChecks({
    required this.controller,
    super.key,
  });
  final LoadOutController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.elementsFreeFromBulges,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              spacing: Insets.gutter / 4,
              children: [
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.sides,
                  value: controller
                      .loadOutInput!.preConditionQuestions.sideIsIntact,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .sideIsIntact = value;
                  },
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.back,
                  value: controller
                      .loadOutInput!.preConditionQuestions.backIsIntact,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .backIsIntact = value;
                  },
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.front,
                  value: controller
                      .loadOutInput!.preConditionQuestions.frontIsIntact,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .frontIsIntact = value;
                  },
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.lockingMechanisms,
                  value: controller
                      .loadOutInput!.preConditionQuestions.lockingIsIntact,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .lockingIsIntact = value;
                  },
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.cornerCastings,
                  value: controller.loadOutInput!.preConditionQuestions
                      .cornerCastingIsIntact,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .cornerCastingIsIntact = value;
                  },
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.roof,
                  value: controller
                      .loadOutInput!.preConditionQuestions.roofIsIntact,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .roofIsIntact = value;
                  },
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.floorInside,
                  value: controller
                      .loadOutInput!.preConditionQuestions.floorIsIntact,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .floorIsIntact = value;
                  },
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.maxPayloadSuitable,
                  value: controller
                      .loadOutInput!.preConditionQuestions.maxPayloadIsSuitable,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .maxPayloadIsSuitable = value;
                  },
                ),
                const SizedBox(
                  height: Insets.gutter / 4,
                ),
                LabeledSwitch(
                  enable: controller.keepEnable,
                  label: context.l10n.containerAgeSuitable,
                  value: controller.loadOutInput!.preConditionQuestions
                      .containerAgeIsSuitable,
                  onChanged: (value) {
                    controller.loadOutInput!.preConditionQuestions
                        .containerAgeIsSuitable = value;
                  },
                ),
                const Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        context.l10n.otherSpecify,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: EmrTextFormField(
                        enabled: controller.keepEnable,
                        binding: controller.otherChecks,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
