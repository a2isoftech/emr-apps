import 'package:emr_one_elv_core/models/address.dart';
import 'package:intl/intl.dart';

class CollectionAndBankDetail {
  CollectionAndBankDetail({
    this.accountName,
    this.accountNumber,
    this.collectionStatus,
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.country,
    this.postCode,
    this.appointmentDateTime,
    this.bankAccountNumber,
    this.bankSortCode,
  });

  static CollectionAndBankDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value as Map<String, dynamic>;
      return CollectionAndBankDetail(
        accountName: json['accountName'] as String?,
        accountNumber: json['accountNumber'] as String?,
        collectionStatus: json['collectionStatus'] as String?,
        address1: json['address1'] as String?,
        address2: json['address2'] as String?,
        address3: json['address3'] as String?,
        address4: json['address4'] as String?,
        address5: json['address5'] as String?,
        address6: json['address6'] as String?,
        country: json['country'] as String?,
        postCode: json['postCode'] as String?,
        bankAccountNumber: json['bankAccountNumber'] as String?,
        bankSortCode: json['bankSortCode'] as String?,
        appointmentDateTime: json['appointmentDateTime'] != null
            ? DateTime.tryParse(json['appointmentDateTime'] as String)
            : null,
      );
    }
    return null;
  }

  final String? accountName;
  final String? accountNumber;
  final String? collectionStatus;
  final String? address1;
  final String? address2;
  final String? address3;
  final String? address4;
  final String? address5;
  final String? address6;
  final String? country;
  final String? postCode;
  String? bankAccountNumber;
  String? bankSortCode;
  final DateTime? appointmentDateTime;

  String get collectionAccount {
    if (accountNumber == null || accountName!.isEmpty) return '';
    return '$accountNumber ($accountName)';
  }

  String get appointmentDateFormatted {
    if (appointmentDateTime == null) {
      return '';
    }
    return DateFormat('dd MMM yyyy').format(appointmentDateTime!);
  }

  Address get collectionAddress {
    return Address(
      line1: address1 ?? '',
      line2: address2,
      line3: address3,
      line4: address4,
      line5: address5,
      line6: address6,
      country: country,
      postCode: postCode ?? '',
      shortAddress: [
        address1,
        address2,
        address3,
        address4,
        address5,
        address6,
        postCode,
      ].where((a) => a != null && a.isNotEmpty).join(', '),
    );
  }
}
