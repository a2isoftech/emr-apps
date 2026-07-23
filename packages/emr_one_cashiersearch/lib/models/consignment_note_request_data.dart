// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:emr_one_cashiersearch/common/common.dart';
import 'package:emr_one_cashiersearch/models/form_data/consignment_note_data.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_sharedtypes/models/consignment/hazardous_waste_product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'consignment_note_request_data.g.dart';

@JsonSerializable(explicitToJson: true)
class ConsignmentNoteRequestData {
  final String? consignmentNoteCode;
  final String yardCode;
  final String ticketId;
  final String? traderAddress;
  final String? traderPostcode;
  final String? traderEmail;
  final String? traderPhone;
  final String? traderPremisesCode;
  final String? emrYardAddress;
  final String? emrYardPostcode;
  final String? sicCode;
  final String? processGivingRiseToWaste;
  final String? roundAndCollectionNumber;
  final String? carrierOnBehalfOf;
  final String? carrierName;
  final String? carrierAddress;
  final String? carrierRegNum;
  final String? carrierVehicleReg;
  final String? carrierEmail;
  final String? carrierPhone;
  final String? consignorName;
  final String? consignorOnBehalfOf;
  final String? consigneePartyName;
  final String? consigneePartyAddress;
  final String? consigneePostcode;
  final String? consigneeWmlExeNo;
  final String? consigneeOnBehalfOf;
  final List<HazardousWasteProduct> hazGradeFormData;
  final String? wasteRejectReason;
  ConsignmentNoteRequestData({
    required this.yardCode,
    required this.ticketId,
    required this.hazGradeFormData,
    this.consignmentNoteCode,
    this.traderAddress,
    this.traderPostcode,
    this.traderEmail,
    this.traderPhone,
    this.traderPremisesCode,
    this.emrYardAddress,
    this.emrYardPostcode,
    this.sicCode,
    this.processGivingRiseToWaste,
    this.roundAndCollectionNumber,
    this.carrierOnBehalfOf,
    this.carrierName,
    this.carrierAddress,
    this.carrierRegNum,
    this.carrierVehicleReg,
    this.carrierEmail,
    this.carrierPhone,
    this.consignorName,
    this.consignorOnBehalfOf,
    this.consigneePartyName,
    this.consigneePartyAddress,
    this.consigneePostcode,
    this.consigneeWmlExeNo,
    this.consigneeOnBehalfOf,
    this.wasteRejectReason,
  });

  factory ConsignmentNoteRequestData.fromConsignmentData(
    ConsignmentNoteData formData,
    Ticket ticket,
    String yardCode,
    List<HazardousWasteProduct> hazGradeFormData,
  ) {
    final isInwardTicket = ticket.ticketType == TicketType.inwards;
    return ConsignmentNoteRequestData(
      yardCode: yardCode,
      ticketId: ticket.id,
      hazGradeFormData: hazGradeFormData,
      consignmentNoteCode: formData.consignmentNumber.value,
      traderAddress: isInwardTicket
          ? formData.wasteProducerAddress.value
          : formData.wasteReceiverAddress.value,
      traderPostcode: isInwardTicket
          ? formData.wasteProducerPostCode.value
          : formData.wasteReceiverPostCode.value,
      traderEmail: formData.premisesEmail.value,
      traderPhone: formData.premisesPhone.value,
      traderPremisesCode: formData.premisesCode.value,
      emrYardAddress: isInwardTicket
          ? formData.wasteReceiverAddress.value
          : formData.wasteProducerAddress.value,
      emrYardPostcode: isInwardTicket
          ? formData.wasteReceiverPostCode.value
          : formData.wasteProducerPostCode.value,
      sicCode: formData.sicCode.value,
      processGivingRiseToWaste: formData.processGivingRiseToWaste.value,
      roundAndCollectionNumber: formData.roundAndCollectionNumber.value,
      carrierOnBehalfOf: formData.carrierOnBehalfOf.value,
      carrierName: formData.carrierName.value,
      carrierAddress: formData.carrierAddress.value,
      carrierRegNum: formData.carrierRegistrationNumber.value,
      carrierVehicleReg: formData.carrierVehicleReg.value,
      carrierEmail: formData.carrierEmail.value,
      carrierPhone: formData.carrierPhone.value,
      consignorName: formData.consignorName.value,
      consignorOnBehalfOf: formData.onBehalfOf.value,
      consigneePartyName: formData.consigneePartyName.value,
      consigneePartyAddress: formData.consigneePartyAddress.value,
      consigneePostcode: formData.consigneePostcode.value,
      consigneeWmlExeNo: formData.consigneeWmlExeNo.value,
      consigneeOnBehalfOf: isInwardTicket
          ? formData.consigneeOnBehalfOf.value
          : formData.wasteReceivedBy.value,
      wasteRejectReason: formData.wasteRejectionReason.value,
    );
  }

  factory ConsignmentNoteRequestData.fromJson(Map<String, dynamic> json) =>
      _$ConsignmentNoteRequestDataFromJson(json);
  Map<String, dynamic> toJson() => _$ConsignmentNoteRequestDataToJson(this);
}
