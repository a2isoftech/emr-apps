// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionQuoteModel _$InspectionQuoteModelFromJson(
        Map<String, dynamic> json) =>
    InspectionQuoteModel(
      batchQuoteId: (json['batchQuoteId'] as num).toInt(),
      account:
          QuoteAccountModel.fromJson(json['account'] as Map<String, dynamic>),
      quoteSource: quoteSourceFromJson(json['quoteSource'] as String),
      quoteStatus: quoteStatusFromJson(json['quoteStatus'] as String),
      total: (json['total'] as num).toDouble(),
      quoteId: (json['quoteId'] as num).toInt(),
      vehicleDescription: VehicleDescriptionModel.fromJson(
          json['vehicleDescription'] as Map<String, dynamic>),
      catValue: (json['catValue'] as num).toDouble(),
      quoteLines: (json['quoteLines'] as List<dynamic>)
          .map((e) => QuoteLinesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicleConfiguration: json['vehicleConfiguration'] == null
          ? null
          : VehicleConfigurationModel.fromJson(
              json['vehicleConfiguration'] as Map<String, dynamic>),
      leadSource: leadSourceFromJson(json['leadSource'] as String?),
    );

Map<String, dynamic> _$InspectionQuoteModelToJson(
        InspectionQuoteModel instance) =>
    <String, dynamic>{
      'quoteStatus': quoteStatusToJson(instance.quoteStatus),
      'total': instance.total,
      'quoteId': instance.quoteId,
      'vehicleDescription': instance.vehicleDescription,
      'catValue': instance.catValue,
      'vehicleConfiguration': instance.vehicleConfiguration,
      'quoteLines': instance.quoteLines,
      'leadSource': leadSourceToJson(instance.leadSource),
      'batchQuoteId': instance.batchQuoteId,
      'account': instance.account,
      'quoteSource': quoteSourceToJson(instance.quoteSource),
    };
