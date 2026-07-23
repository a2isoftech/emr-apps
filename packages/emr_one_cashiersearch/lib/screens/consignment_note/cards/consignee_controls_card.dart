import 'package:emr_one_cashiersearch/common/uppercase_text_formatter.dart';
import 'package:emr_one_cashiersearch/controllers/consignment_note_controller.dart';
import 'package:emr_one_cashiersearch/models/form_data/consignment_note_data.dart';
import 'package:emr_one_cashiersearch/screens/consignment_note/sized_control.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ConsigneeControlsCard extends EmrTabBarVerticalViewCard {
  ConsigneeControlsCard({
    required super.title,
    required ConsignmentNoteData consignmentNoteData,
    required ConsignmentNoteController controller,
    required bool isInwardTicket,
    super.key,
  }) : super(
          child: Builder(
            builder: (context) {
              final consignorNameFocusNode = FocusNode();
              final consignOnBehalfOfFocusNode = FocusNode();
              final consigneeNameFocusNode = FocusNode();
              final consigneeWPorExemNoFocusNode = FocusNode();
              final consigneeAddressFocusNode = FocusNode();
              return Column(
                children: [
                  const SizedBox(
                    height: Insets.gutter,
                  ),
                  Row(
                    children: [
                      SizedControl(
                        child: EmrTextFormField(
                          enabled: ValueNotifier(false),
                          labelText: context.l10n.consignmentNoteNumber,
                          autovalidateMode: AutovalidateMode.always,
                          binding: consignmentNoteData.consignmentNumber,
                          inputFormatters: [
                            UpperCaseTextFormatter(),
                            MaskTextInputFormatter(
                              mask: '@@@@@@/@@@@@',
                              filter: {
                                '@': RegExp(
                                  '[A-Z0-9]',
                                  caseSensitive: false,
                                ),
                              },
                            ),
                          ],
                          validator: (consignmentNoteNumber) {
                            if (consignmentNoteNumber == null ||
                                consignmentNoteNumber == '') {
                              return context.l10n.consignmentValidationText;
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
                          focusNode: consignorNameFocusNode,
                          labelText: context.l10n.consignorName,
                          validator: (consignorName) {
                            if (consignorName == null || consignorName == '') {
                              controller.firstInvalidNode ??=
                                  consignorNameFocusNode;
                              return context.l10n.consignorNameValidationText;
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.consignorName,
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: consignOnBehalfOfFocusNode,
                          labelText: context.l10n.consignOnBehalfOf,
                          validator: (onBehalfOf) {
                            if (onBehalfOf == null || onBehalfOf == '') {
                              controller.firstInvalidNode ??=
                                  consignOnBehalfOfFocusNode;

                              return context
                                  .l10n.consignOnBehalfOfValidationText;
                            }

                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.onBehalfOf,
                        ),
                      ),
                    ],
                  ),
                  if (isInwardTicket)
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedControl(
                              child: EmrTextFormField(
                                focusNode: consigneeNameFocusNode,
                                labelText: context.l10n.consigneeName,
                                validator: (consigneePartyName) {
                                  if ((consigneePartyName == null ||
                                          consigneePartyName == '') &&
                                      isInwardTicket) {
                                    controller.firstInvalidNode ??=
                                        consigneeNameFocusNode;

                                    return context
                                        .l10n.consigneeNameValidationText;
                                  }
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                binding: consignmentNoteData.consigneePartyName,
                              ),
                            ),
                            const SizedBox(
                              width: Insets.gutter / 2,
                            ),
                            SizedControl(
                              child: EmrTextFormField(
                                focusNode: consigneeWPorExemNoFocusNode,
                                validator: (wmlExeNo) {
                                  if ((wmlExeNo == null || wmlExeNo == '') &&
                                      isInwardTicket) {
                                    controller.firstInvalidNode ??=
                                        consigneeWPorExemNoFocusNode;
                                    return context
                                        .l10n.consigneeWPorExemNoValidationText;
                                  }

                                  return null;
                                },
                                labelText: context.l10n.consigneeWPorExemNo,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                binding: consignmentNoteData.consigneeWmlExeNo,
                              ),
                            ),
                            const SizedBox(
                              width: Insets.gutter / 2,
                            ),
                            SizedControl(
                              child: EmrTextFormField(
                                labelText: context.l10n.consigneePostcode,
                                binding: consignmentNoteData.consigneePostcode,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedControl(
                              child: EmrTextFormField(
                                focusNode: consigneeAddressFocusNode,
                                labelText: context.l10n.consigneeAddress,
                                validator: (consigneeAddress) {
                                  if ((consigneeAddress == null ||
                                          consigneeAddress == '') &&
                                      isInwardTicket) {
                                    controller.firstInvalidNode ??=
                                        consigneeAddressFocusNode;
                                    return context
                                        .l10n.consigneeAddressValidationText;
                                  }

                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                binding:
                                    consignmentNoteData.consigneePartyAddress,
                              ),
                            ),
                            const SizedBox(
                              width: Insets.gutter / 2,
                            ),
                            SizedControl(
                              child: EmrTextFormField(
                                labelText: context.l10n.consigneeOnBehalfOf,
                                binding:
                                    consignmentNoteData.consigneeOnBehalfOf,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ],
              );
            },
          ),
        );
}
