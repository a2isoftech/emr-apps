import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/extensions/lotextensions.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/yl_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:signals/signals_flutter.dart';

class NewLotToTicket extends StatefulWidget {
  const NewLotToTicket({
    required this.ticketInfo,
    required this.service,
    super.key,
  });

  final TicketInfo ticketInfo;
  final YardLogisticsService service;

  @override
  State<NewLotToTicket> createState() => _NewLotToTicketState();
}

class _NewLotToTicketState extends State<NewLotToTicket> {
  late Signal<LotType?> selectedLotType = signal<LotType?>(null);
  late Signal<String?> selectedCode = signal<String?>(null);
  late Signal<CheckCodeState> checkCodeState =
      signal<CheckCodeState>(CheckCodeState.nothing);
  final creatingLot = signal<bool>(false);

  late String errorMessage = '';

  late Computed<bool> valid;

  @override
  void initState() {
    valid = computed(() {
      return selectedLotType() != null &&
          switch (selectedLotType.value) {
            LotType.joints => true,
            LotType.sticks =>
              selectedCode() != null && checkCodeState() == CheckCodeState.ok,
            LotType.unknown => false,
            null => false
          };
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: Text(
                context.l10n.newLot,
                style: EmrOneConstants.kMediumHeadingTextStyle,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Insets.gutter,
                ),
                child: Column(
                  children: [
                    ..._selectLotContentsWidget(),
                    if (selectedLotType.value == LotType.sticks)
                      ..._scanQRCodeWidget(),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  child: Text(context.l10n.cancel),
                ),
                ElevatedButton(
                  onPressed: valid.watch(context) == true
                      ? () async {
                          await _createLot();
                          if (context.mounted) {
                            Navigator.of(context, rootNavigator: true).pop();
                          }
                        }
                      : null,
                  child: creatingLot.watch(context)
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
                      : Text(context.l10n.createLot),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _selectLotContentsWidget() {
    return [
      const FormHeadingRow(
        headings: ['Set Contents'],
      ),
      RadioGroup(
        onChanged: (LotType? value) {
          if (value == null) return;

          setState(() {
            selectedLotType.value = value;
          });
        },
        groupValue: selectedLotType.value,
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              title: Text(LotType.sticks.description),
              leading: const Radio<LotType>(
                value: LotType.sticks,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              title: Text(LotType.joints.description),
              leading: const Radio<LotType>(
                value: LotType.joints,
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> _scanQRCodeWidget() {
    return [
      const SizedBox(height: Insets.gutter),
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
                  selectedCode.watch(context) ?? context.l10n.tapToScanACode,
                ),
                trailing: switch (checkCodeState.watch(context)) {
                  CheckCodeState.checking => const SizedBox(
                      height: 18,
                      width: 18,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.blue,
                        ),
                      ),
                    ),
                  CheckCodeState.ok => const Icon(
                      YlConstants.verifiedIcon,
                      color: YlConstants.verifiedIconColour,
                    ),
                  CheckCodeState.duplicate => Icon(
                      Icons.close,
                      color: Theme.of(context).colorScheme.error,
                      size: 18,
                    ),
                  _ => YlConstants.warningIcon,
                },
                onPressed: _scanAndValidateCode,
              ),
            ),
          ),
        ],
      ),
      if (checkCodeState.watch(context) == CheckCodeState.unknownCode ||
          checkCodeState.watch(context) == CheckCodeState.duplicate)
        Padding(
          padding: const EdgeInsets.only(top: Insets.gutter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.warning,
                color: Theme.of(context).colorScheme.error,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: Insets.gutter / 2,
                ),
                child: Text(
                  errorMessage,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ],
          ).animate().fadeIn(),
        ),
    ];
  }

  /// Try to use the camere to scan a code and then check
  /// if it is available.
  Future<void> _scanAndValidateCode() async {
    selectedCode.value = null;
    final scannedCode = await ScanHelper.startInlineCodeScan(
      context,
      title: context.l10n.scanAnItem,
    );

    if (scannedCode == null) {
      return;
    }

    final codeType = YardLogisticsHelpers.codeType(scannedCode);

    if (codeType != YardLogisticsCodeType.lot && mounted) {
      checkCodeState.value = CheckCodeState.unknownCode;
      errorMessage = context.l10n.unknownCodeType;
    } else {
      setState(() {
        selectedCode.value = scannedCode;
      });

      checkCodeState.value = CheckCodeState.checking;

      final response = await widget.service.checkCodeAvailable(
        scannedCode,
      );

      if (!mounted) return;

      if (!response.success) {
        unawaited(
          EmrModal.showMessageBar(
            context,
            response.message,
            messageType: MessageBarTypes.error,
          ),
        );

        selectedCode.value = null;

        checkCodeState.value = CheckCodeState.nothing;

        return;
      }

      if (response.data! == true) {
        checkCodeState.value = CheckCodeState.ok;
      } else {
        checkCodeState.value = CheckCodeState.duplicate;
        errorMessage = context.l10n.codeIsAlreadyInUse;
      }
    }
  }

  Future<void> _createLot() async {
    creatingLot.value = true;

    final response = await widget.service.createLot(
      CreateLot(
        code: switch (selectedLotType.value!) {
          LotType.joints => YlConstants.jointsCodeInitials,
          LotType.sticks => selectedCode.value!,
          LotType.unknown => throw UnimplementedError(),
        },
        ticketInfo: widget.ticketInfo,
        lotType: selectedLotType.value!,
      ),
    );

    if (response.success && mounted) {
      final (status, lot) = response.data!;

      switch (status) {
        case CreateLotResponseCondition.created:
          unawaited(
            EmrModal.showMessageBar(
              context,
              'Lot created successfully!',
            ),
          );
        case CreateLotResponseCondition.codeInUse:
          unawaited(
            EmrModal.showMessageBar(
              context,
              'Code is already in use!',
              messageType: MessageBarTypes.warning,
            ),
          );
          return;
      }

      await context.pushNamed(
        NamedRoutes.ylExistingLot,
        extra: lot,
      );
    } else if (mounted) {
      creatingLot.value = false;

      unawaited(
        EmrModal.showMessageBar(
          context,
          response.message,
          messageType: MessageBarTypes.error,
        ),
      );
    }
  }
}
