import 'package:json_annotation/json_annotation.dart';

part 'heap_response_model.g.dart';

@JsonSerializable()
class HeapResponseModel {
  HeapResponseModel({
    required this.heapNo,
    required this.heapShortName,
    required this.heapDesc,
    required this.heapDisplayName,
  });

  /// Connect the generated [_$HeapResponseModelFromJson] function to the
  /// `fromJson` factory.
  factory HeapResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HeapResponseModelFromJson(json);

  int heapNo;
  String heapShortName;
  String heapDesc;
  String heapDisplayName;
}
