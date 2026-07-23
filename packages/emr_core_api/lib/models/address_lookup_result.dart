import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class AddressLookupResult {
  AddressLookupResult({required this.id, required this.address});

  final String? id;
  final Address address;

  @override
  String toString() {
    final strs = [
      address.address1,
      address.address2,
      address.address3,
      address.address4,
      address.address5,
      address.address6,
      address.postCode,
    ];

    return strs
        .where((element) => element != null && element.isNotEmpty)
        .join(', ');
  }
}
