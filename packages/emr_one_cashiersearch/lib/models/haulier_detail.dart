import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'haulier_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class Haulier {
  Haulier({
    this.confBy,
    this.confDate,
    this.containerType,
    this.eMRInvoiceNo,
    this.haulageAccountNumber,
    this.haulageCharge,
    this.haulageCost,
    this.haulageRate,
    this.haulageStatus,
    this.haulierName,
    this.hauliersInvoiceNo,
    this.jobnumber,
    this.manualHaulier,
    this.truckNumber,
  });

  factory Haulier.fromJson(Map<String, dynamic> json) =>
      _$HaulierFromJson(json);

  String? haulageAccountNumber;
  String? haulierName;
  String? eMRInvoiceNo;
  String? hauliersInvoiceNo;
  String? jobnumber;
  String? haulageStatus;
  String? containerType;
  String? confBy;
  DateTime? confDate;
  UomValue? haulageRate;
  UomValue? haulageCost;
  UomValue? haulageCharge;
  String? truckNumber;
  String? manualHaulier;

  Map<String, dynamic> toJson() => _$HaulierToJson(this);
}
