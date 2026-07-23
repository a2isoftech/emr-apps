import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_stock_take/models/comment_model.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class LocationWeightModel {
  LocationWeightModel({
    required this.id,
    required this.title,
    required this.captureMethod,
    this.grossWeightSerialNumber,
    this.tareWeightSerialNumber,
    this.grossWeight,
    this.tareWeight,
    this.weighedByName,
    this.weighedById,
    this.weighedDateTime,
    this.grossWeightScaleIdentifier,
    this.tareWeightScaleIdentifier,
    this.isDeleted,
    this.isMoved,
    this.netWeight,
    this.comments = const [],
  });
  int id;
  UomValue? grossWeight;
  String title;
  UomValue? tareWeight;
  String? grossWeightSerialNumber;
  String? tareWeightSerialNumber;
  String? weighedByName;
  String? weighedById;
  DateTime? weighedDateTime;
  String? grossWeightScaleIdentifier;
  String? tareWeightScaleIdentifier;
  bool? isDeleted;
  bool? isMoved;
  Enum$StockTakeWeightCaptureMethod captureMethod;
  double? netWeight;
  List<CommentModel> comments;

  UomValue getNetWeight(Uom defaultUom) {
    if (grossWeight == null && tareWeight == null) {
      return UomValue.weight(0, defaultUom);
    }

    final gross = grossWeight != null
        ? grossWeight!.convertWeight(defaultUom)
        : UomValue.weight(0, defaultUom);
    final tare = tareWeight != null
        ? tareWeight!.convertWeight(defaultUom)
        : UomValue.weight(0, defaultUom);

    final netValue =
        ((gross.value - tare.value) * 10000).roundToDouble() / 10000;
    return UomValue.weight(netValue, defaultUom);
  }
}
