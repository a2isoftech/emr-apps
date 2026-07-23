import 'package:emr_one_cashiersearch/models/ticket_account.dart';

extension YardAddressExtension on Address {
  String asString({bool includePostCode = false}) {
    final allAddresses = <String?>[
      address1,
      address2,
      address3,
      address4,
      address5,
      address6,
      if (includePostCode) postCode else '',
    ];
    return allAddresses.where((x) => x != null && x.isNotEmpty).join(', ');
  }
}
