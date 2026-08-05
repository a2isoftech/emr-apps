import 'dart:async';

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
  static const _connectedVisibleDuration = Duration(seconds: 5);

  ValueNotifier<RealtimeConnectionState>? _notifier;
  Timer? _hideConnectedTimer;
  bool _hideConnectedCard = false;

  @override
  void initState() {
    super.initState();
    _attachListener();
  }

  void _attachListener() {
    final notifier = DoorAccessRealtime.instance.service?.connectionState;
    if (identical(notifier, _notifier)) return;

    _notifier?.removeListener(_onStateChanged);
    _notifier = notifier;
    _notifier?.addListener(_onStateChanged);

    // A freshly mounted widget (e.g. after navigating to a new page) attaches
    // to a notifier that may already be "connected" — sync against its
    // current value now so the hide timer starts even though no new change
    // event will fire for it.
    _syncHideTimer();
  }

  void _onStateChanged() {
    setState(_syncHideTimer);
  }

  void _syncHideTimer() {
    _hideConnectedTimer?.cancel();
    _hideConnectedCard = false;

    if (_notifier?.value == RealtimeConnectionState.connected) {
      _hideConnectedTimer = Timer(_connectedVisibleDuration, () {
        if (!mounted) return;
        setState(() => _hideConnectedCard = true);
      });
    }
  }

  @override
  void dispose() {
    _hideConnectedTimer?.cancel();
    _notifier?.removeListener(_onStateChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _attachListener();

    final state = _notifier?.value ?? RealtimeConnectionState.reconnecting;

    if (state == RealtimeConnectionState.connected && _hideConnectedCard) {
      return const SizedBox.shrink();
    }

    return Positioned(
      top: 20,
      right: 20,
      child: switch (state) {
        RealtimeConnectionState.connected => const _StateCard(
          connectionState: RealtimeConnectionState.connected,
        ),
        RealtimeConnectionState.dismissed => const SizedBox.shrink(),
        RealtimeConnectionState.connecting => const _StateCard(
          connectionState: RealtimeConnectionState.connecting,
        ),
        RealtimeConnectionState.reconnecting => const _StateCard(
          connectionState: RealtimeConnectionState.reconnecting,
        ),
        RealtimeConnectionState.disconnected => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _StateCard(
              connectionState: RealtimeConnectionState.disconnected,
            ),
            const SizedBox(width: Insets.gutter / 2),
            ElevatedButton(
              onPressed: () {
                DoorAccessRealtime.instance.service?.reconnect();
              },
              child: const Text('Reconnect'),
            ),
          ],
        ),
      },
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
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.gutter,
          vertical: Insets.gutter / 2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color),
            const SizedBox(width: Insets.gutter / 2),

            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(width: Insets.gutter / 4),

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
