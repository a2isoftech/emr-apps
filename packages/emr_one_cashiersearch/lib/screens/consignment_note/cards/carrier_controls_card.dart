import 'package:emr_one_cashiersearch/controllers/consignment_note_controller.dart';
import 'package:emr_one_cashiersearch/models/form_data/consignment_note_data.dart';
import 'package:emr_one_cashiersearch/screens/consignment_note/sized_control.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CarrierControlsCard extends EmrTabBarVerticalViewCard {
  CarrierControlsCard({
    required super.title,
    required ConsignmentNoteData consignmentNoteData,
    required ConsignmentNoteController controller,
    super.key,
  }) : super(
          child: Builder(
            builder: (context) {
              final carrierCompanyNameFocusNode = FocusNode();
              final driverNameFocusNode = FocusNode();
              final carrierAddressAndPostcodeFocusNode = FocusNode();
              final carrierRegistrationNumberFocusNode = FocusNode();
              final carrierVehicleRegFocusNode = FocusNode();
              return Column(
                children: [
                  const SizedBox(
                    height: Insets.gutter,
                  ),
                  Row(
                    children: [
                      SizedControl(
                        child: EmrTextFormField(
                          labelText: context.l10n.processGivingRiseToTheWaste,
                          binding: consignmentNoteData.processGivingRiseToWaste,
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          labelText: context.l10n.roundAndCollectionNumber,
                          binding: consignmentNoteData.roundAndCollectionNumber,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: carrierCompanyNameFocusNode,
                          labelText: context.l10n.carrierCompanyName,
                          validator: (carrierOnBehalfOf) {
                            if (carrierOnBehalfOf == null ||
                                carrierOnBehalfOf == '') {
                              controller.firstInvalidNode ??=
                                  carrierCompanyNameFocusNode;
                              return context
                                  .l10n.carrierCompanyNameValidationText;
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.carrierOnBehalfOf,
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: driverNameFocusNode,
                          labelText: context.l10n.driverName,
                          validator: (carrierName) {
                            if (carrierName == null || carrierName == '') {
                              controller.firstInvalidNode ??=
                                  driverNameFocusNode;
                              return context.l10n.driverNameValidationText;
                            }

                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.carrierName,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: carrierAddressAndPostcodeFocusNode,
                          labelText: context.l10n.carrierAddressAndPostcode,
                          validator: (carrierAddress) {
                            if (carrierAddress == null ||
                                carrierAddress == '') {
                              controller.firstInvalidNode ??=
                                  carrierAddressAndPostcodeFocusNode;
                              return context.l10n.carrierAddressValidationText;
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.carrierAddress,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: carrierRegistrationNumberFocusNode,
                          labelText: context.l10n.carrierRegistrationNumber,
                          validator: (carrierRegNumber) {
                            if (carrierRegNumber == null ||
                                carrierRegNumber == '') {
                              controller.firstInvalidNode ??=
                                  carrierRegistrationNumberFocusNode;
                              return context
                                  .l10n.carrierRegistrationNumberValidationText;
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding:
                              consignmentNoteData.carrierRegistrationNumber,
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          focusNode: carrierVehicleRegFocusNode,
                          labelText: context.l10n.carrierVehicleReg,
                          validator: (carrierVehicleReg) {
                            if (carrierVehicleReg == null ||
                                carrierVehicleReg == '') {
                              controller.firstInvalidNode ??=
                                  carrierVehicleRegFocusNode;
                              return context
                                  .l10n.carrierVehicleRegValidationText;
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          binding: consignmentNoteData.carrierVehicleReg,
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          labelText: context.l10n.carrierEmail,
                          binding: consignmentNoteData.carrierEmail,
                        ),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      SizedControl(
                        child: EmrTextFormField(
                          labelText: context.l10n.carrierPhone,
                          binding: consignmentNoteData.carrierPhone,
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
