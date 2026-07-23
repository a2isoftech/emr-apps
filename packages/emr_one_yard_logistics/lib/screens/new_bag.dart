import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/extensions/extensions.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_helpers.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/minitag.dart';
import 'package:emr_one_yard_logistics/widgets/yl_action_button.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class NewBag extends StatefulWidget {
  const NewBag({required this.openBags, super.key});

  final List<Pallet> openBags;
  @override
  State<NewBag> createState() => _NewBagState();
}

class _NewBagState extends State<NewBag> {
  late YardLogisticsService service;
  late Signal<PalletType?> selectedPalletType = signal<PalletType?>(null);
  late Signal<String?> selectedCode = signal<String?>(null);
  late Signal<CheckCodeState> checkCodeState =
      signal<CheckCodeState>(CheckCodeState.nothing);
  final creatingBag = signal<bool>(false);
  final fetchingOpenBag = signal<bool>(false);

  final style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  void initState() {
    super.initState();
    service = Provider.of<YardLogisticsService>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final headlineStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface,
      fontSize: 28,
    );

    final subHeadlineStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface,
      fontSize: 20,
    );

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Insets.gutter),
                        child: Text(
                          'Bag',
                          style: headlineStyle,
                        ),
                      ),
                    ],
                  ),
                  if (widget.openBags.isNotEmpty)
                    _showOpenBags(context, subHeadlineStyle),
                  if (widget.openBags.length < 2)
                    _showBagCreation(context, subHeadlineStyle),
                ],
              ),
            ),
            if (widget.openBags.length < 2)
              SizedBox(
                height: 90,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Insets.gutter),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        style: style,
                        onPressed: creatingBag.watch(context) == true
                            ? null
                            : () {
                                Navigator.of(context).pop();
                              },
                        child: Text(context.l10n.cancel),
                      ),
                      ElevatedButton(
                        style: style,
                        onPressed: selectedCode.watch(context) != null &&
                                selectedPalletType.watch(context) != null &&
                                checkCodeState.watch(context) ==
                                    CheckCodeState.ok
                            ? () async {
                                creatingBag.value = true;

                                final response = await service.createPallet(
                                  CreatePallet(
                                    code: selectedCode.value!,
                                    yardCode: service.defaultYardCode,
                                    palletType: selectedPalletType.value!,
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
                                          'Bag created successfully!',
                                        ),
                                      );
                                    case CreatePalletResponseCondition
                                          .codeInUse:
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
                                    NamedRoutes.ylExistingBag,
                                    extra: pallet,
                                  );
                                } else if (context.mounted) {
                                  creatingBag.value = false;

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
                        child: creatingBag.watch(context)
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
                            : const Text('Create Bag'),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        if (fetchingOpenBag.watch(context)) ...[
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                SizedBox(height: Insets.gutter),
                Text(
                  'Fetching ...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _showOpenBags(
    BuildContext context,
    TextStyle subHeadlineStyle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
      child: Column(
        children: [
          FormHeadingRow(
            headings: const [
              'Open Bags',
            ],
            textStyle: subHeadlineStyle,
          ),
          const SizedBox(height: Insets.gutter),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: widget.openBags.length,
              itemBuilder: (context, index) {
                final currentRow = widget.openBags[index];

                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () async {
                      fetchingOpenBag.value = true;
                      final response = await service.fetchPalletByCode(
                        currentRow.code,
                        includeLotDetails: true,
                      );

                      if (context.mounted) {
                        fetchingOpenBag.value = false;

                        if (response.success) {
                          await context.pushNamed(
                            NamedRoutes.ylExistingBag,
                            extra: response.data,
                          );
                        } else {
                          unawaited(
                            EmrModal.showMessageBar(
                              context,
                              'Bag cannot be loaded',
                              messageType: MessageBarTypes.warning,
                            ),
                          );
                          return;
                        }
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${currentRow.code}/${currentRow.yardId}',
                              style: EmrOneConstants.kSmallBreadcrumbTextStyle
                                  .copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Joints: '
                                  '${currentRow.lotIds.length}',
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Weight: '
                                  '${currentRow.grossWeightUom.convertWeight(
                                        service.uomForView,
                                      ).toWeightString()}',
                                ),
                              ],
                            ),
                          ],
                        ),
                        MiniTag(
                          label: _getTypeOfPallet(
                            currentRow.type,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _showBagCreation(
    BuildContext context,
    TextStyle subHeadlineStyle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
      child: Column(
        children: [
          FormHeadingRow(
            headings: const [
              'New Bag',
            ],
            textStyle: subHeadlineStyle,
          ),
          Text(
            'Create a new Bag by selecting Type and scanning the QR code.',
            style: EmrOneConstants.kTinyTextStyle.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: Insets.gutter),
          ..._selectTypeOfBag(),
          ..._scanQRCodeWidget(),
        ],
      ),
    );
  }

  List<Widget> _selectTypeOfBag() {
    return [
      const FormHeadingRow(
        headings: ['Type'],
      ),
      RadioGroup(
        onChanged: (PalletType? value) {
          if (value == null) return;

          setState(() {
            selectedPalletType.value = value;
          });
        },
        groupValue: selectedPalletType.value,
        child: Column(
          children: [
            if (widget.openBags
                    .any((bag) => bag.type == PalletType.leadJointBag) ==
                false)
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                title: Text(PalletType.leadJointBag.description),
                leading: const Radio<PalletType>(
                  value: PalletType.leadJointBag,
                ),
              ),
            if (widget.openBags
                    .any((bag) => bag.type == PalletType.polyJointBag) ==
                false)
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                title: Text(PalletType.polyJointBag.description),
                leading: const Radio<PalletType>(
                  value: PalletType.polyJointBag,
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
      if (checkCodeState.watch(context) == CheckCodeState.duplicate)
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
                  context.l10n.codeIsAlreadyInUse,
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
    final scannedCode = await ScanHelper.startInlineCodeScan(
      context,
      title: context.l10n.scanAnItem,
    );

    if (scannedCode == null) {
      return;
    }

    final codeType = YardLogisticsHelpers.codeType(scannedCode);

    if (codeType != YardLogisticsCodeType.pallet && mounted) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.unknownCodeType,
          messageType: MessageBarTypes.error,
        ),
      );
      return;
    }
    setState(() {
      selectedCode.value = scannedCode;
    });

    checkCodeState.value = CheckCodeState.checking;

    final response = await service.checkCodeAvailable(
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

    checkCodeState.value =
        response.data! == true ? CheckCodeState.ok : CheckCodeState.duplicate;
  }

  String _getTypeOfPallet(PalletType type) {
    switch (type) {
      case PalletType.leadJointBag:
        return PalletType.leadJointBag.description;
      case PalletType.polyJointBag:
        return PalletType.polyJointBag.description;
      case PalletType.normal:
        return PalletType.normal.description;
    }
  }
}
