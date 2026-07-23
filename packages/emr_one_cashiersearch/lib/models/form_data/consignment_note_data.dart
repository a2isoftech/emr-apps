import 'package:emr_one_core/widgets/inkpad/emr_ink_pad.dart';
import 'package:flutter/material.dart';

class ConsignmentNoteData {
  ConsignmentNoteData() {
    consignmentNumber = ValueNotifier('');
    premisesEmail = ValueNotifier('');
    premisesPhone = ValueNotifier('');
    wasteProducerAddress = ValueNotifier('');
    wasteProducerPostCode = ValueNotifier('');
    wasteReceiverPostCode = ValueNotifier('');
    wasteReceiverAddress = ValueNotifier('');
    premisesCode = ValueNotifier('');
    processGivingRiseToWaste = ValueNotifier('');
    roundAndCollectionNumber = ValueNotifier('');
    carrierName = ValueNotifier('');
    carrierAddress = ValueNotifier('');
    carrierRegistrationNumber = ValueNotifier('');
    carrierVehicleReg = ValueNotifier('');
    carrierEmail = ValueNotifier('');
    carrierPhone = ValueNotifier('');
    sicCode = ValueNotifier('');
    consignorName = ValueNotifier('');
    onBehalfOf = ValueNotifier('');
    wasteRejectionReason = ValueNotifier('');
    consigneePartyName = ValueNotifier('');
    consigneePartyAddress = ValueNotifier('');
    consigneePostcode = ValueNotifier('');
    consigneeWmlExeNo = ValueNotifier('');
    consigneeOnBehalfOf = ValueNotifier('');
    wasteReceivedBy = ValueNotifier('');
    carrierOnBehalfOf = ValueNotifier('');
    signatureController = EmrInkPadController();
  }

  void dispose() {
    consignmentNumber.dispose();
    premisesEmail.dispose();
    premisesPhone.dispose();
    wasteProducerAddress.dispose();
    wasteProducerPostCode.dispose();
    wasteReceiverPostCode.dispose();
    wasteReceiverAddress.dispose();
    premisesCode.dispose();
    processGivingRiseToWaste.dispose();
    roundAndCollectionNumber.dispose();
    carrierName.dispose();
    carrierAddress.dispose();
    carrierRegistrationNumber.dispose();
    carrierVehicleReg.dispose();
    carrierEmail.dispose();
    carrierPhone.dispose();
    sicCode.dispose();
    consignorName.dispose();
    onBehalfOf.dispose();
    wasteRejectionReason.dispose();
    consigneePartyName.dispose();
    consigneePartyAddress.dispose();
    consigneePostcode.dispose();
    consigneeWmlExeNo.dispose();
    consigneeOnBehalfOf.dispose();
    wasteReceivedBy.dispose();
    carrierOnBehalfOf.dispose();
  }

  late ValueNotifier<String> consignmentNumber;
  late ValueNotifier<String> premisesEmail;
  late ValueNotifier<String> premisesPhone;
  late ValueNotifier<String> wasteProducerAddress;
  late ValueNotifier<String> wasteProducerPostCode;
  late ValueNotifier<String> wasteReceiverPostCode;
  late ValueNotifier<String> wasteReceiverAddress;
  late ValueNotifier<String> premisesCode;
  late ValueNotifier<String> processGivingRiseToWaste;
  late ValueNotifier<String> roundAndCollectionNumber;
  late ValueNotifier<String> carrierName;
  late ValueNotifier<String> carrierAddress;
  late ValueNotifier<String> carrierRegistrationNumber;
  late ValueNotifier<String> carrierVehicleReg;
  late EmrInkPadController signatureController;
  late ValueNotifier<String> carrierEmail;
  late ValueNotifier<String> carrierPhone;
  late ValueNotifier<String> sicCode;
  late ValueNotifier<String> consignorName;
  late ValueNotifier<String> onBehalfOf;
  late ValueNotifier<String> wasteRejectionReason;
  late ValueNotifier<String> consigneePartyName;
  late ValueNotifier<String> consigneePartyAddress;
  late ValueNotifier<String> consigneePostcode;
  late ValueNotifier<String> consigneeWmlExeNo;
  late ValueNotifier<String> consigneeOnBehalfOf;
  late ValueNotifier<String> wasteReceivedBy;
  late ValueNotifier<String> carrierOnBehalfOf;
}
