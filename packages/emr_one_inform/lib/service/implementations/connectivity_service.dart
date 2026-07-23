import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:emr_one_inform/service/interfaces/iconnectivity_service.dart';

class ConnectivityService implements IConnectivityService {
  ConnectivityService() {
    Connectivity().onConnectivityChanged.listen((events) {
      for (final event in events) {
        controller.add(event);
      }
    });
  }

  StreamController<ConnectivityResult> controller =
      StreamController<ConnectivityResult>.broadcast();

  @override
  Future<ConnectivityResult> checkConnectivity() async {
    final connectivity = await Connectivity().checkConnectivity();

    // According to the docs `ConnectivityResult.none` will be the only item in
    // the list if there is no network connection at all.
    return (connectivity.first == ConnectivityResult.none)
        ? ConnectivityResult.none
        : ConnectivityResult.mobile;
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged => controller.stream;

  @override
  Future<bool> hasConnectivity() async {
    final connectivity = await Connectivity().checkConnectivity();
    return connectivity.first != ConnectivityResult.none;
  }
}
