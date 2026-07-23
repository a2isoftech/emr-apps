import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/models/address.dart';
import 'package:emr_sharedtypes/models/lat_long.dart';

String formatAddress(Address a) {
  return [
    a.address1,
    a.address2,
    a.address3,
    a.address4,
    a.address5,
    a.address6,
    a.postCode,
  ].where((e) => e != null && e.isNotEmpty).join(', ');
}

Address parseAddress(AddressLookupResult lookup, LatLong? geoLocation) {
  return Address(
    address1: lookup.address.address1,
    address2: lookup.address.address2,
    address3: lookup.address.address3,
    address4: lookup.address.address4,
    address5: lookup.address.address5,
    address6: lookup.address.address6,
    postCode: lookup.address.postCode,
    geoLocation: geoLocation,
  );
}
