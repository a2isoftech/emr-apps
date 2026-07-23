import 'package:connectivity_plus/connectivity_plus.dart' as lib;
import 'package:emr_one_forms_engine/core/services/interfaces/iconnectivity.dart';

class Connectivity implements IConnectivity {
  @override
  Future<ConnectivityResult> checkConnectivity() async {
    final res = await lib.Connectivity().checkConnectivity();

    // According to the docs `ConnectivityResult.none` will be the only item in
    // the list if there is no network connection at all.
    return (res.first == lib.ConnectivityResult.none)
        ? ConnectivityResult.none
        : ConnectivityResult.connected;
  }
}
