import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/load_out/labeled_switch.dart';
import 'package:emr_one_yard_app/controllers/controllers.dart';
import 'package:emr_one_yard_app/screens/load_outs/seal_number_input_widget.dart';
import 'package:flutter/material.dart';

class LoadOutPostChecks extends StatelessWidget {
  const LoadOutPostChecks({required this.controller, super.key});
  final LoadOutController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.completeLoadout,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: controller.completeFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: Insets.gutter / 8,
                children: [
                  SealNumberInputWidget(
                    title: context.l10n.ropeSeal,
                    isRequired: true,
                    binding: controller.ropeSeal,
                    loadoutId: controller.loadOutInput!.id!,
                    localPath: controller.localPath,
                    token: controller.token,
                    mediaController: controller.mediaController,
                    mediaPathNotifier: controller.ropeSealImage,
                    onCapture: (media) {
                      if (media?.isNotEmpty ?? false) {
                        controller.completeFormKey.currentState?.validate();
                      }
                    },
                    pngPath: 'assets/placeholder/bolt_seal.png',
                    yardCode: controller.userInfoService.userInfo.defaultYard,
                    disable: controller.loadOutInput!.completed,
                  ),
                  SealNumberInputWidget(
                    title: context.l10n.boltSeal,
                    isRequired: true,
                    binding: controller.boltSeal,
                    loadoutId: controller.loadOutInput!.id!,
                    localPath: controller.localPath,
                    token: controller.token,
                    mediaController: controller.mediaController,
                    mediaPathNotifier: controller.boltSealImage,
                    onCapture: (media) {
                      if (media?.isNotEmpty ?? false) {
                        controller.completeFormKey.currentState?.validate();
                      }
                    },
                    pngPath: 'assets/placeholder/bolt_seal.png',
                    yardCode: controller.userInfoService.userInfo.defaultYard,
                    disable: controller.loadOutInput!.completed,
                  ),
                  SealNumberInputWidget(
                    title: context.l10n.additionalSeal,
                    binding: controller.otherSeal,
                    loadoutId: controller.loadOutInput!.id!,
                    localPath: controller.localPath,
                    token: controller.token,
                    mediaController: controller.mediaController,
                    mediaPathNotifier: controller.otherSealImage,
                    onCapture: (media) {
                      if (media?.isNotEmpty ?? false) {}
                    },
                    pngPath: 'assets/placeholder/bolt_seal.png',
                    yardCode: controller.userInfoService.userInfo.defaultYard,
                    disable: controller.loadOutInput!.completed,
                  ),
                  Text(
                    context.l10n.elementsFreeFromAfterLoad,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.sides,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .sideIsIntact,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .sideIsIntact =
                          value;
                    },
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.back,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .backIsIntact,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .backIsIntact =
                          value;
                    },
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.front,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .frontIsIntact,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .frontIsIntact =
                          value;
                    },
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.lockingMechanisms,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .lockingIsIntact,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .lockingIsIntact =
                          value;
                    },
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.cornerCastings,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .cornerCastingIsIntact,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .cornerCastingIsIntact =
                          value;
                    },
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.roof,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .roofIsIntact,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .roofIsIntact =
                          value;
                    },
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.floorInside,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .floorIsIntact,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .floorIsIntact =
                          value;
                    },
                  ),
                  LabeledSwitch(
                    enable: controller.keepEnable,
                    label: context.l10n.containerNetWeightRestriction,
                    value: controller
                        .loadOutInput!
                        .postConditionQuestions
                        .netWeightUnderPayload,
                    onChanged: (value) {
                      controller
                              .loadOutInput!
                              .postConditionQuestions
                              .netWeightUnderPayload =
                          value;
                    },
                  ),
                  const SizedBox(height: Insets.gutter / 4),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
