import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class RealTimeConnectionStatus extends StatefulWidget {
  const RealTimeConnectionStatus({super.key});

  @override
  State<RealTimeConnectionStatus> createState() =>
      _RealTimeConnectionStatusState();
}

class _RealTimeConnectionStatusState extends State<RealTimeConnectionStatus> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      right: 20,
      child: ValueListenableBuilder<RealtimeConnectionState>(
        valueListenable:
            DoorAccessRealtime.instance.service?.connectionState ??
            ValueNotifier(RealtimeConnectionState.reconnecting),
        builder: (context, state, _) {
          switch (state) {
            case RealtimeConnectionState.connected:
              return const _StateCard(
                connectionState: RealtimeConnectionState.connected,
              );

            case RealtimeConnectionState.dismissed:
              return const SizedBox.shrink();
            case RealtimeConnectionState.connecting:
              return const _StateCard(
                connectionState: RealtimeConnectionState.connecting,
              );

            case RealtimeConnectionState.reconnecting:
              return const _StateCard(
                connectionState: RealtimeConnectionState.reconnecting,
              );

            case RealtimeConnectionState.disconnected:
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const _StateCard(
                    connectionState: RealtimeConnectionState.disconnected,
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      DoorAccessRealtime.instance.service?.reconnect();
                    },
                    child: const Text('Reconnect'),
                  ),
                ],
              );
          }
        },
      ),
    );
  }
}

class _StateCard extends StatelessWidget {
  const _StateCard({required this.connectionState});

  final RealtimeConnectionState connectionState;

  @override
  Widget build(BuildContext context) {
    final (IconData icon, Color color, String text) = switch (connectionState) {
      RealtimeConnectionState.connected => (
        Icons.check_circle,
        Colors.green,
        'Connected',
      ),

      RealtimeConnectionState.connecting => (
        Icons.sync,
        Colors.orange,
        'Connecting',
      ),

      RealtimeConnectionState.reconnecting => (
        Icons.refresh,
        Colors.amber,
        'Reconnecting',
      ),

      RealtimeConnectionState.disconnected => (
        Icons.error,
        Colors.red,
        'Disconnected',
      ),

      RealtimeConnectionState.dismissed => throw UnimplementedError(),
    };

    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(Insets.gutter),
      color: Colors.white,
      child: Container(
        constraints: const BoxConstraints(minWidth: 180, maxWidth: 260),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 10),

            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(width: 4),

            IconButton(
              visualDensity: VisualDensity.compact,
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.close, size: 18),
              onPressed: () {
                DoorAccessRealtime.instance.service?.connectionState.value =
                    RealtimeConnectionState.dismissed;
              },
            ),
          ],
        ),
      ),
    );
  }
}
