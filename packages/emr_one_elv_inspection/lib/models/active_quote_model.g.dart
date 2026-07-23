// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveQuoteModel _$ActiveQuoteModelFromJson(Map<String, dynamic> json) =>
    ActiveQuoteModel(
      quoteStatus: quoteStatusFromJson(json['quoteStatus'] as String),
      total: (json['total'] as num).toDouble(),
      quoteId: (json['quoteId'] as num).toInt(),
      vehicleDescription: VehicleDescriptionModel.fromJson(
          json['vehicleDescription'] as Map<String, dynamic>),
      quoteLines: (json['quoteLines'] as List<dynamic>)
          .map((e) => QuoteLinesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      catValue: (json['catValue'] as num).toDouble(),
      vehicleConfiguration: json['vehicleConfiguration'] == null
          ? null
          : VehicleConfigurationModel.fromJson(
              json['vehicleConfiguration'] as Map<String, dynamic>),
      leadSource: leadSourceFromJson(json['leadSource'] as String?),
    );

Map<String, dynamic> _$ActiveQuoteModelToJson(ActiveQuoteModel instance) =>
    <String, dynamic>{
      'quoteStatus': quoteStatusToJson(instance.quoteStatus),
      'total': instance.total,
      'quoteId': instance.quoteId,
      'vehicleDescription': instance.vehicleDescription,
      'catValue': instance.catValue,
      'vehicleConfiguration': instance.vehicleConfiguration,
      'quoteLines': instance.quoteLines,
      'leadSource': leadSourceToJson(instance.leadSource),
    };
