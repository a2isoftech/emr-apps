import 'package:json_annotation/json_annotation.dart';

part 'delete_standing_order_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class DeleteStandingOrderRequest {
  DeleteStandingOrderRequest(
    this.standingOrderId,
    this.deleteReasonDescription,
    this.deleteComments,
  );

  factory DeleteStandingOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteStandingOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteStandingOrderRequestToJson(this);

  String standingOrderId;
  String deleteReasonDescription;
  String? deleteComments;
}
