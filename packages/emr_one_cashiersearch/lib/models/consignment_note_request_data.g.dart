// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_note_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsignmentNoteRequestData _$ConsignmentNoteRequestDataFromJson(
  Map<String, dynamic> json,
) => ConsignmentNoteRequestData(
  yardCode: json['yardCode'] as String,
  ticketId: json['ticketId'] as String,
  hazGradeFormData: (json['hazGradeFormData'] as List<dynamic>)
      .map((e) => HazardousWasteProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
  consignmentNoteCode: json['consignmentNoteCode'] as String?,
  traderAddress: json['traderAddress'] as String?,
  traderPostcode: json['traderPostcode'] as String?,
  traderEmail: json['traderEmail'] as String?,
  traderPhone: json['traderPhone'] as String?,
  traderPremisesCode: json['traderPremisesCode'] as String?,
  emrYardAddress: json['emrYardAddress'] as String?,
  emrYardPostcode: json['emrYardPostcode'] as String?,
  sicCode: json['sicCode'] as String?,
  processGivingRiseToWaste: json['processGivingRiseToWaste'] as String?,
  roundAndCollectionNumber: json['roundAndCollectionNumber'] as String?,
  carrierOnBehalfOf: json['carrierOnBehalfOf'] as String?,
  carrierName: json['carrierName'] as String?,
  carrierAddress: json['carrierAddress'] as String?,
  carrierRegNum: json['carrierRegNum'] as String?,
  carrierVehicleReg: json['carrierVehicleReg'] as String?,
  carrierEmail: json['carrierEmail'] as String?,
  carrierPhone: json['carrierPhone'] as String?,
  consignorName: json['consignorName'] as String?,
  consignorOnBehalfOf: json['consignorOnBehalfOf'] as String?,
  consigneePartyName: json['consigneePartyName'] as String?,
  consigneePartyAddress: json['consigneePartyAddress'] as String?,
  consigneePostcode: json['consigneePostcode'] as String?,
  consigneeWmlExeNo: json['consigneeWmlExeNo'] as String?,
  consigneeOnBehalfOf: json['consigneeOnBehalfOf'] as String?,
  wasteRejectReason: json['wasteRejectReason'] as String?,
);

Map<String, dynamic> _$ConsignmentNoteRequestDataToJson(
  ConsignmentNoteRequestData instance,
) => <String, dynamic>{
  'consignmentNoteCode': instance.consignmentNoteCode,
  'yardCode': instance.yardCode,
  'ticketId': instance.ticketId,
  'traderAddress': instance.traderAddress,
  'traderPostcode': instance.traderPostcode,
  'traderEmail': instance.traderEmail,
  'traderPhone': instance.traderPhone,
  'traderPremisesCode': instance.traderPremisesCode,
  'emrYardAddress': instance.emrYardAddress,
  'emrYardPostcode': instance.emrYardPostcode,
  'sicCode': instance.sicCode,
  'processGivingRiseToWaste': instance.processGivingRiseToWaste,
  'roundAndCollectionNumber': instance.roundAndCollectionNumber,
  'carrierOnBehalfOf': instance.carrierOnBehalfOf,
  'carrierName': instance.carrierName,
  'carrierAddress': instance.carrierAddress,
  'carrierRegNum': instance.carrierRegNum,
  'carrierVehicleReg': instance.carrierVehicleReg,
  'carrierEmail': instance.carrierEmail,
  'carrierPhone': instance.carrierPhone,
  'consignorName': instance.consignorName,
  'consignorOnBehalfOf': instance.consignorOnBehalfOf,
  'consigneePartyName': instance.consigneePartyName,
  'consigneePartyAddress': instance.consigneePartyAddress,
  'consigneePostcode': instance.consigneePostcode,
  'consigneeWmlExeNo': instance.consigneeWmlExeNo,
  'consigneeOnBehalfOf': instance.consigneeOnBehalfOf,
  'hazGradeFormData': instance.hazGradeFormData.map((e) => e.toJson()).toList(),
  'wasteRejectReason': instance.wasteRejectReason,
};
