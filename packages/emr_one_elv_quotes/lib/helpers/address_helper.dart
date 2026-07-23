import 'package:emr_one_elv_core/models/address.dart';

extension ShortAddressHelper on Address {
  String get getShortAddress => [
    line1,
    line2 ?? '',
    line3 ?? '',
    line4 ?? '',
    line5 ?? '',
    line6 ?? '',
    country ?? '',
    postCode,
  ].where((x) => x.isNotEmpty).join(', ');
}
