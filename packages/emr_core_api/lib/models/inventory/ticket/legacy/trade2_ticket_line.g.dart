// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade2_ticket_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trade2TicketLine _$Trade2TicketLineFromJson(Map<String, dynamic> json) =>
    Trade2TicketLine()
      ..grossWeight = UomValue.fromJson(
        json['grossWeight'] as Map<String, dynamic>,
      )
      ..netWeight = UomValue.fromJson(json['netWeight'] as Map<String, dynamic>)
      ..gradeId = json['gradeId'] as String
      ..gradeCode = json['gradeCode'] as String
      ..gradeName = json['gradeName'] as String
      ..lineNumber = (json['lineNumber'] as num).toInt()
      ..heapId = json['heapId'] as String
      ..heapCode = json['heapCode'] as String
      ..rate = UomValue.fromJson(json['rate'] as Map<String, dynamic>)
      ..weightSerial = json['weightSerial'] as String?
      ..isActive = json['isActive'] as bool
      ..price = (json['price'] as num).toDouble()
      ..ewcCode = json['ewcCode'] as String
      ..partyContractRef = json['partyContractRef'] as String?
      ..partyContractPart = json['partyContractPart'] as String?
      ..priceOrigin = $enumDecode(
        _$Trade2PriceOriginTypeEnumMap,
        json['priceOrigin'],
      )
      ..binNo = json['binNo'] as String?
      ..weighedBy = json['weighedBy'] as String?
      ..sealNo = json['sealNo'] as String?
      ..consgnNo = json['consgnNo'] as String?
      ..comments = json['comments'] as String?;

Map<String, dynamic> _$Trade2TicketLineToJson(Trade2TicketLine instance) =>
    <String, dynamic>{
      'grossWeight': instance.grossWeight,
      'netWeight': instance.netWeight,
      'gradeId': instance.gradeId,
      'gradeCode': instance.gradeCode,
      'gradeName': instance.gradeName,
      'lineNumber': instance.lineNumber,
      'heapId': instance.heapId,
      'heapCode': instance.heapCode,
      'rate': instance.rate,
      'weightSerial': instance.weightSerial,
      'isActive': instance.isActive,
      'price': instance.price,
      'ewcCode': instance.ewcCode,
      'partyContractRef': instance.partyContractRef,
      'partyContractPart': instance.partyContractPart,
      'priceOrigin': _$Trade2PriceOriginTypeEnumMap[instance.priceOrigin]!,
      'binNo': instance.binNo,
      'weighedBy': instance.weighedBy,
      'sealNo': instance.sealNo,
      'consgnNo': instance.consgnNo,
      'comments': instance.comments,
    };

const _$Trade2PriceOriginTypeEnumMap = {
  Trade2PriceOriginType.notSet: 'NOT_SET',
  Trade2PriceOriginType.gPL: 'GPL',
  Trade2PriceOriginType.spot: 'SPOT',
  Trade2PriceOriginType.fixed: 'FIXED',
  Trade2PriceOriginType.priceMatrix: 'PRICE_MATRIX',
  Trade2PriceOriginType.manual: 'MANUAL',
  Trade2PriceOriginType.dirt: 'DIRT',
  Trade2PriceOriginType.manualWeighbridge: 'MANUAL_WEIGHBRIDGE',
};
