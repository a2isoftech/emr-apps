import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_core/models/quote_models/collection_detail.dart';

class UpdateCollectionDetail {
  UpdateCollectionDetail({
    required this.collectionAddress,
    this.collectionOperator,
    this.collectionDateTime,
  });

  factory UpdateCollectionDetail.initial() => UpdateCollectionDetail(
        collectionAddress: Address.initial(),
      );

  factory UpdateCollectionDetail.buildFromCollectionDetail(
    CollectionAndBankDetail? collectionDetail,
  ) {
    if (collectionDetail == null) return UpdateCollectionDetail.initial();
    return UpdateCollectionDetail(
      collectionOperator: CollectionOperator(
        collectionOperatorId: 0,
        accountNumber: collectionDetail.accountNumber ?? '',
        accountName: collectionDetail.accountName ?? '',
      ),
      collectionAddress: Address(
        line1: collectionDetail.address1 ?? '',
        line2: collectionDetail.address2 ?? '',
        line3: collectionDetail.address3 ?? '',
        line4: collectionDetail.address4 ?? '',
        line5: collectionDetail.address5 ?? '',
        line6: collectionDetail.address6 ?? '',
        country: collectionDetail.country ?? '',
        postCode: collectionDetail.postCode ?? '',
      ),
      collectionDateTime: collectionDetail.appointmentDateTime,
    );
  }

  Address collectionAddress;
  CollectionOperator? collectionOperator;
  DateTime? collectionDateTime;
  String? bankAccountNumber;
  String? bankSortCode;
  String? notes;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'accountNumber': collectionOperator?.accountNumber ?? '',
      'address1': collectionAddress.line1,
      'address2': collectionAddress.line2,
      'address3': collectionAddress.line3,
      'address4': collectionAddress.line4,
      'address5': collectionAddress.line5,
      'address6': collectionAddress.line6,
      'country': collectionAddress.country,
      'postCode': collectionAddress.postCode,
      'appointmentDateTime': collectionDateTime?.toIso8601String(),
    };

    return json;
  }
}
