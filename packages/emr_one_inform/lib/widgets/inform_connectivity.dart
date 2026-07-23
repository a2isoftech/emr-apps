import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/service/form_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionStatus extends StatefulWidget {
  const ConnectionStatus({super.key});

  @override
  State<ConnectionStatus> createState() => _ConnectionStatusState();
}

class _ConnectionStatusState extends State<ConnectionStatus> {
  late IConnectivityService _connectivityService;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  ConnectivityResult _connectivityResult = ConnectivityResult.wifi;

  @override
  void initState() {
    super.initState();
    _connectivityService = RepositoryProvider.of<IConnectivityService>(context);
    initConnectivity();
    _connectivitySubscription = _connectivityService.onConnectivityChanged
        .listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivityService.checkConnectivity();
    } on PlatformException catch (e) {
      debugPrint('Failed to retrieve connectivity status ${e.message}');
      return;
    }
    if (!mounted) {
      return Future.value();
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectivityResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_connectivityResult == ConnectivityResult.none) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: FormAppIcons.internetDisconnected,
      );
    }
    return Padding(
      padding: const EdgeInsets.all(8),
      child: FormAppIcons.internetConnected,
    );
  }
}
