// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_standing_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteStandingOrderRequest _$DeleteStandingOrderRequestFromJson(
        Map<String, dynamic> json) =>
    DeleteStandingOrderRequest(
      json['standingOrderId'] as String,
      json['deleteReasonDescription'] as String,
      json['deleteComments'] as String?,
    );

Map<String, dynamic> _$DeleteStandingOrderRequestToJson(
        DeleteStandingOrderRequest instance) =>
    <String, dynamic>{
      'standingOrderId': instance.standingOrderId,
      'deleteReasonDescription': instance.deleteReasonDescription,
      'deleteComments': instance.deleteComments,
    };
