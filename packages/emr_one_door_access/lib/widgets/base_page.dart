import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    required this.child,
    required this.signalRService,
    super.key,
  });
  final Widget child;
  final SignalRService? signalRService;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [child, const RealTimeConnectionStatus()]);
  }
}
