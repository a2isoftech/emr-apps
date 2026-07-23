import 'package:emr_one_cashiersearch/models/payment_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business_detail.g.dart';

@JsonSerializable()
class BusinessDetail {
  BusinessDetail(this.paymentTerm, this.licenseExemption);

  factory BusinessDetail.empty() => BusinessDetail(
        PaymentTerm(
          null,
        ),
        null,
      );

  factory BusinessDetail.fromJson(Map<String, dynamic> json) =>
      _$BusinessDetailFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessDetailToJson(this);

  PaymentTerm? paymentTerm;
  LicenseExemption? licenseExemption;
}

@JsonSerializable()
class LicenseExemption {
  LicenseExemption({this.wasteRegCarrierNumber});
  factory LicenseExemption.fromJson(Map<String, dynamic> json) =>
      _$LicenseExemptionFromJson(json);
  Map<String, dynamic> toJson() => _$LicenseExemptionToJson(this);

  String? wasteRegCarrierNumber;
}
