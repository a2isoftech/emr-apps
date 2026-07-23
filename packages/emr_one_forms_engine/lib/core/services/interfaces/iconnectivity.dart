enum ConnectivityResult { none, connected }

abstract class IConnectivity {
  Future<ConnectivityResult> checkConnectivity();
}
