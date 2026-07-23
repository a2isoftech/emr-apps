// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_print.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketPrint _$TicketPrintFromJson(Map<String, dynamic> json) => TicketPrint(
      name: json['name'] as String,
      headerText: json['headerText'] as String,
      numberOfCopies: (json['numberOfCopies'] as num).toInt(),
      printer: Printer.fromJson(json['printer'] as Map<String, dynamic>),
      printForTicketDirections: $enumDecode(
          _$PrintForTicketDirectionsEnumMap, json['printForTicketDirections']),
      ticketPrintType:
          $enumDecode(_$TicketPrintTypeEnumMap, json['ticketPrintType']),
      templateName: json['templateName'] as String,
      showWeightMode: $enumDecodeNullable(
              _$ShowWeightModeEnumMap, json['showWeightMode']) ??
          ShowWeightMode.paidWeightOnly,
    );

Map<String, dynamic> _$TicketPrintToJson(TicketPrint instance) =>
    <String, dynamic>{
      'name': instance.name,
      'headerText': instance.headerText,
      'numberOfCopies': instance.numberOfCopies,
      'printer': instance.printer,
      'printForTicketDirections':
          _$PrintForTicketDirectionsEnumMap[instance.printForTicketDirections]!,
      'ticketPrintType': _$TicketPrintTypeEnumMap[instance.ticketPrintType]!,
      'showWeightMode': _$ShowWeightModeEnumMap[instance.showWeightMode]!,
      'templateName': instance.templateName,
    };

const _$PrintForTicketDirectionsEnumMap = {
  PrintForTicketDirections.inward: 'INWARD',
  PrintForTicketDirections.outward: 'OUTWARD',
  PrintForTicketDirections.inwardAndOutward: 'INWARD_AND_OUTWARD',
};

const _$TicketPrintTypeEnumMap = {
  TicketPrintType.trader: 'TRADER',
  TicketPrintType.emr: 'EMR',
  TicketPrintType.bol: 'BOL',
};

const _$ShowWeightModeEnumMap = {
  ShowWeightMode.paidWeightOnly: 'PAID_WEIGHT_ONLY',
  ShowWeightMode.tareAndWeightDeduction: 'TARE_AND_WEIGHT_DEDUCTION',
  ShowWeightMode.fullWeightDetails: 'FULL_WEIGHT_DETAILS',
};
