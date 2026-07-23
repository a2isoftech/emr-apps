import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class NewPallet extends StatefulWidget {
  const NewPallet({super.key, this.code});

  final String? code;

  @override
  State<NewPallet> createState() => _NewPalletState();
}

class _NewPalletState extends State<NewPallet> {
  late Signal<String?> selectedCode;
  late Signal<CheckCodeState> checkCodeState;
  final creatingPallet = signal<bool>(false);
  late Computed<bool> busy;
  late Computed<bool> valid;
  late YardLogisticsService service;

  @override
  void initState() {
    super.initState();

    selectedCode = signal<String?>(widget.code);
    checkCodeState = signal<CheckCodeState>(
      widget.code != null ? CheckCodeState.ok : CheckCodeState.nothing,
    );

    busy = computed(creatingPallet.call);

    service = Provider.of<YardLogisticsService>(context, listen: false);

    valid = computed(() {
      return selectedCode() != null && checkCodeState() == CheckCodeState.ok;
    });
  }

  @override
  Widget build(BuildContext context) {
    final style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    final headlineStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface,
      fontSize: 28,
    );

    final service = Provider.of<YardLogisticsService>(context, listen: false);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Text(
                        context.l10n.newPallet,
                        style: headlineStyle,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Insets.gutter),
                  child: Text(
                    context.l10n.createNewPalletPrompt,
                    style: EmrOneConstants.kTinyTextStyle.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                const SizedBox(height: Insets.gutter),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Column(
                    children: [
                      FormHeadingRow(
                        headings: [context.l10n.code],
                        icons: const [Icons.qr_code_2],
                        iconSize: 24,
                      ),
                      const SizedBox(height: Insets.gutter),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 64,
                              child: YlActionButton(
                                label: Text(
                                  selectedCode.watch(context) ??
                                      context.l10n.tapToScanACode,
                                ),
                                trailing: switch (
                                    checkCodeState.watch(context)) {
                                  CheckCodeState.checking => const SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Colors.blue,
                                        ),
                                      ),
                                    ),
                                  CheckCodeState.ok => const Icon(
                                      YlConstants.verifiedIcon,
                                      color: YlConstants.verifiedIconColour,
                                    ),
                                  CheckCodeState.duplicate => const Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                  _ => YlConstants.warningIcon,
                                },
                                onPressed: creatingPallet.watch(context) == true
                                    ? null
                                    : () async {
                                        final scannedCode = await ScanHelper
                                            .startInlineCodeScan(
                                          context,
                                          title: context.l10n.scanAnItem,
                                        );

                                        if (scannedCode == null) {
                                          return;
                                        }

                                        if (YardLogisticsHelpers.codeType(
                                                  scannedCode,
                                                ) !=
                                                YardLogisticsCodeType.pallet &&
                                            context.mounted) {
                                          unawaited(
                                            EmrModal.showMessageBar(
                                              context,
                                              context.l10n.unknownCodeType,
                                              messageType:
                                                  MessageBarTypes.error,
                                            ),
                                          );

                                          selectedCode.value = null;
                                          return;
                                        }

                                        setState(() {
                                          selectedCode.value = scannedCode;
                                        });

                                        checkCodeState.value =
                                            CheckCodeState.checking;

                                        final response =
                                            await service.checkCodeAvailable(
                                          scannedCode,
                                        );

                                        if (!context.mounted) return;

                                        if (!response.success) {
                                          unawaited(
                                            EmrModal.showMessageBar(
                                              context,
                                              response.message,
                                              messageType:
                                                  MessageBarTypes.error,
                                            ),
                                          );

                                          selectedCode.value = null;

                                          checkCodeState.value =
                                              CheckCodeState.nothing;

                                          return;
                                        }

                                        checkCodeState.value =
                                            response.data! == true
                                                ? CheckCodeState.ok
                                                : CheckCodeState.duplicate;
                                      },
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (checkCodeState.watch(context) ==
                          CheckCodeState.duplicate)
                        Padding(
                          padding: const EdgeInsets.only(top: Insets.gutter),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(Icons.warning, color: Colors.red),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: Insets.gutter / 2,
                                ),
                                child: Text(
                                  context.l10n.codeIsAlreadyInUse,
                                  style: const TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ).animate().fadeIn(),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 90,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: style,
                  onPressed: creatingPallet.watch(context) == true
                      ? null
                      : () {
                          Navigator.of(context).pop();
                        },
                  child: Text(context.l10n.cancel),
                ),
                ElevatedButton(
                  style: style,
                  onPressed: creatingPallet.watch(context) == true
                      ? null
                      : valid.watch(context) == true
                          ? () async {
                              creatingPallet.value = true;

                              final response = await service.createPallet(
                                CreatePallet(
                                  code: selectedCode.value!,
                                  yardCode: service.defaultYardCode,
                                ),
                              );

                              if (response.success && context.mounted) {
                                context.pop();

                                final (status, pallet) = response.data!;

                                switch (status) {
                                  case CreatePalletResponseCondition.created:
                                    unawaited(
                                      EmrModal.showMessageBar(
                                        context,
                                        'Pallet created successfully!',
                                      ),
                                    );
                                  case CreatePalletResponseCondition.codeInUse:
                                    unawaited(
                                      EmrModal.showMessageBar(
                                        context,
                                        'Code ${selectedCode.value!} is'
                                        ' already in use!',
                                        messageType: MessageBarTypes.warning,
                                      ),
                                    );
                                    return;
                                }

                                await context.pushNamed(
                                  NamedRoutes.ylExistingPallet,
                                  extra: pallet,
                                );
                              } else if (context.mounted) {
                                creatingPallet.value = false;

                                unawaited(
                                  EmrModal.showMessageBar(
                                    context,
                                    response.message,
                                    messageType: MessageBarTypes.error,
                                  ),
                                );
                              }
                            }
                          : null,
                  child: creatingPallet.watch(context)
                      ? Row(
                          children: [
                            const SizedBox(
                              height: 22,
                              width: 22,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: Insets.gutter),
                            Text('${context.l10n.creating}...'),
                          ],
                        )
                      : Text(context.l10n.createPallet),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
