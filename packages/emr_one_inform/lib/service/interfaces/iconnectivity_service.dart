import 'package:connectivity_plus/connectivity_plus.dart';

abstract class IConnectivityService {
  Future<ConnectivityResult> checkConnectivity();

  Stream<ConnectivityResult> get onConnectivityChanged;

  Future<bool> hasConnectivity();
}
