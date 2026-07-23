import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/common/utility.dart';
import 'package:emr_one_cashiersearch/controllers/consignment_note_controller.dart';
import 'package:emr_one_cashiersearch/models/form_data/consignment_note_data.dart';
import 'package:emr_one_cashiersearch/screens/consignment_note/sized_control.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class WasteControlsCard extends EmrTabBarVerticalViewCard {
  WasteControlsCard({
    required super.title,
    required ConsignmentNoteData consignmentNoteData,
    required ConsignmentNoteController controller,
    required bool isInwardTicket,
    super.key,
  }) : super(
          child: Builder(
            builder: (context) {
              final wasteProducerAddressFocusNode = FocusNode();
              final wasteProducerPostcodeFocusNode = FocusNode();
              final wasteReceiverAddressFocusNode = FocusNode();
              final wasteReceiverPostcodeFocusNode = FocusNode();
              final premisesCodeFocusNode = FocusNode();
              return Column(
                children: [
                  const SizedBox(
                    height: Insets.gutter,
                  ),
                  if (isInwardTicket)
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedControl(
                              child: EmrPickerFormField<String>(
                                labelText: context.l10n.wasteRejectedReason,
                                items: (p0) {
                                  final list = <WasteRejectedReason>[
                                    WasteRejectedReason.noNoteSupplied,
                                    WasteRejectedReason.noteMissingInformation,
                                    WasteRejectedReason.wasteTypeNoteAccepted,
                                  ];
                                  return Future.value(
                                    list
                                        .map(
                                          (x) => TicketsUtility
                                              .getWasteRejectedReasonTypeString(
                                            x,
                                            context,
                                          ),
                                        )
                                        .toList(),
                                  );
                                },
                                itemTitleText: (p0) => p0,
                                binding:
                                    consignmentNoteData.wasteRejectionReason,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              context.l10n.wasteProducer,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Insets.gutter / 2,
                        ),
                        Row(
                          children: [
                            SizedControl(
                              child: EmrTextFormField(
                                focusNode: wasteProducerAddressFocusNode,
                                labelText: context.l10n.address,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                binding:
                                    consignmentNoteData.wasteProducerAddress,
                                validator: (wasteProducerAddress) {
                                  if (wasteProducerAddress == null ||
                                      wasteProducerAddress == '') {
                                    controller.firstInvalidNode ??=
                                        wasteProducerAddressFocusNode;
                                    return context.l10n
                                        .wasteProducerAddressValidationText;
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: Insets.gutter / 2,
                            ),
                            SizedControl(
                              child: EmrTextFormField(
                                focusNode: wasteProducerPostcodeFocusNode,
                                labelText: context.l10n.postCode,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                binding:
                                    consignmentNoteData.wasteProducerPostCode,
                                validator: (wasteProducerPostcode) {
                                  if (wasteProducerPostcode == null ||
                                      wasteProducerPostcode == '') {
                                    controller.firstInvalidNode ??=
                                        wasteProducerPostcodeFocusNode;
                                    return context.l10n
                                        .wasteProducerPostcodeValidationText;
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedControl(
                              child: EmrTextFormField(
                                labelText: context.l10n.emailAddress,
                                binding: consignmentNoteData.premisesEmail,
                              ),
                            ),
                            const SizedBox(
                              width: Insets.gutter / 2,
                            ),
                            SizedControl(
                              child: EmrTextFormField(
                                labelText: context.l10n.phoneNo,
                                binding: consignmentNoteData.premisesPhone,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  Row(
                    children: [
                      Text(
                        context.l10n.wasteReceiver,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Insets.gutter / 2,
                  ),
                  Row(
                    children: [
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: wasteReceiverAddressFocusNode,
                          labelText: context.l10n.address,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.wasteReceiverAddress,
                          validator: (wasteReceiverAddress) {
                            if (wasteReceiverAddress == null ||
                                wasteReceiverAddress == '') {
                              controller.firstInvalidNode ??=
                                  wasteReceiverAddressFocusNode;
                              return context
                                  .l10n.wasteReceiverAddressValidationText;
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: wasteReceiverPostcodeFocusNode,
                          labelText: context.l10n.postCode,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.wasteReceiverPostCode,
                          validator: (wasteReceiverPostCode) {
                            if (wasteReceiverPostCode == null ||
                                wasteReceiverPostCode == '') {
                              controller.firstInvalidNode ??=
                                  wasteReceiverPostcodeFocusNode;
                              return context
                                  .l10n.wasteReceiverPostcodeValidationText;
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  if (!isInwardTicket)
                    Column(
                      children: [
                        EmrTextFormField(
                          labelText: context.l10n.wasteReceivedBy,
                          binding: consignmentNoteData.wasteReceivedBy,
                        ),
                      ],
                    ),
                  Row(
                    children: [
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: premisesCodeFocusNode,
                          labelText: context.l10n.premisesCode,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.premisesCode,
                          validator: (premisesCode) {
                            if (premisesCode == null || premisesCode == '') {
                              controller.firstInvalidNode ??=
                                  premisesCodeFocusNode;

                              return context.l10n.premisesCodeValidationText;
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          labelText: context.l10n.sicCode,
                          binding: consignmentNoteData.sicCode,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        );
}
