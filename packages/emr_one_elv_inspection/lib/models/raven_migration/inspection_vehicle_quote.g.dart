// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_vehicle_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionVehicleQuote _$InspectionVehicleQuoteFromJson(
        Map<String, dynamic> json) =>
    InspectionVehicleQuote(
      elvQuotationId: json['elvQuotationId'] as String,
      quoteSource: quoteSourceFromJson(json['quoteSource'] as String),
      vehicleInfo:
          VehicleInfo.fromJson(json['vehicleInfo'] as Map<String, dynamic>),
      vehiclePriceDetail: VehiclePriceDetail.fromJson(
          json['vehiclePriceDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InspectionVehicleQuoteToJson(
        InspectionVehicleQuote instance) =>
    <String, dynamic>{
      'elvQuotationId': instance.elvQuotationId,
      'quoteSource': quoteSourceToJson(instance.quoteSource),
      'vehicleInfo': instance.vehicleInfo,
      'vehiclePriceDetail': instance.vehiclePriceDetail,
    };
