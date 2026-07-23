import 'package:emr_core_api/graphql/schema.graphql.dart';

class PartToMoveDetail {
  PartToMoveDetail({
    required this.partCountToMove,
    required this.partType,
    required this.inventoryLocationCode,
    this.carBodyWeight,
    this.catSealNumber,
    this.catSerialNumber,
  });
  int partCountToMove;
  Enum$PartType partType;
  String inventoryLocationCode;
  double? carBodyWeight;
  String? catSealNumber;
  String? catSerialNumber;
}
