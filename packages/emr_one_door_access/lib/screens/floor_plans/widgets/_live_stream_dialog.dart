import 'dart:async';

import 'package:emr_one_core/utilities/emr_modal.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class LiveStreamDialog extends StatefulWidget {
  const LiveStreamDialog({
    required this.controller,
    required this.hotspot,
    super.key,
  });

  final FloorPlanController controller;
  final Hotspot hotspot;

  @override
  State<LiveStreamDialog> createState() => _LiveStreamDialogState();
}

class _LiveStreamDialogState extends State<LiveStreamDialog> {
  static const _streamDuration = Duration(minutes: 5);

  final RTCVideoRenderer _renderer = RTCVideoRenderer();
  WhepSession? _session;
  Timer? _countdownTimer;
  Duration _remaining = _streamDuration;
  bool _connecting = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _start();
  }

  Future<void> _start() async {
    setState(() {
      _connecting = true;
      _error = null;
    });

    await _renderer.initialize();

    final (success, error, result) = await widget.controller.startLiveStream(
      widget.hotspot,
    );

    if (!mounted) return;

    if (!success) {
      setState(() {
        _connecting = false;
        _error = error;
      });
      return;
    }

    final base = result?.streamUrl;
    if ((base ?? '').isEmpty) {
      setState(() {
        _connecting = false;
        _error = 'Camera stream did not return a playback URL';
      });
      return;
    }

    final streamPath = widget.controller.cameraFor(widget.hotspot)?.streamPath;
    if ((streamPath ?? '').isEmpty) {
      setState(() {
        _connecting = false;
        _error = 'Camera has no stream path configured';
      });
      return;
    }

    try {
      final session = await _connectWithRetry(
        base!,
        streamPath!,
        result?.streamToken,
      );

      if (!mounted) {
        await session.close();
        return;
      }

      setState(() {
        _session = session;
        _connecting = false;
      });

      _restartCountdown();
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _connecting = false;
        _error = '$e';
      });
    }
  }

  /// The backend reports [isRunning] as soon as it kicks off publishing to
  /// MediaMTX, but the RTSP→WHEP path isn't actually live for a brief moment
  /// after that — an immediate WHEP negotiation can 404. Retry a few times
  /// before surfacing an error.
  Future<WhepSession> _connectWithRetry(
    String base,
    String streamPath,
    String? streamToken, {
    int maxAttempts = 5,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    // streamToken is only present once the backend's mediamtx HTTP-auth webhook
    // is deployed (see StreamingServer's azure-deploy-windows.md); omitting the
    // query param entirely (rather than sending an empty one) keeps this
    // working against a mediamtx still on the open `authInternalUsers` default.
    var whepUrl = Uri.parse('$base/$streamPath/whep');
    if ((streamToken ?? '').isNotEmpty) {
      whepUrl = whepUrl.replace(queryParameters: {'token': streamToken});
    }

    for (var attempt = 1; ; attempt++) {
      try {
        return await WhepClient.connect(
          whepUrl: whepUrl,
          onTrack: (stream) {
            _renderer.srcObject = stream;
          },
        );
      } catch (e) {
        if (attempt >= maxAttempts || !mounted) rethrow;
        await Future<void>.delayed(retryDelay);
      }
    }
  }

  void _restartCountdown() {
    _countdownTimer?.cancel();
    _remaining = _streamDuration;
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remaining.inSeconds <= 1) {
        timer.cancel();
        setState(() => _remaining = Duration.zero);
        return;
      }
      setState(() => _remaining -= const Duration(seconds: 1));
    });
  }

  Future<void> _resetDuration() async {
    final (success, error, _) = await widget.controller.startLiveStream(
      widget.hotspot,
    );

    if (!mounted) return;

    if (!success) {
      await EmrModal.showMessageBar(
        context,
        error,
        messageType: MessageBarTypes.error,
      );
      return;
    }

    _restartCountdown();
  }

  Future<void> _stop() async {
    await widget.controller.stopLiveStream(widget.hotspot);
    if (!mounted) return;
    Navigator.pop(context);
  }

  String get _formattedRemaining {
    final minutes = _remaining.inMinutes.toString().padLeft(2, '0');
    final seconds = (_remaining.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    if (_error != null) {
      content = Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Failed to start live stream:\n$_error',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      );
    } else if (_connecting) {
      content = const Center(child: CircularProgressIndicator());
    } else {
      // RTCVideoView needs a bounded, non-zero size from its parent — a bare
      // Center() collapses it to zero size and renders nothing.
      content = RTCVideoView(_renderer);
    }

    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Live Stream'),
          if (_error == null && !_connecting) Text(_formattedRemaining),
        ],
      ),
      content: SizedBox(width: 480, height: 360, child: content),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
        if (_error == null) ...[
          TextButton(
            onPressed: _connecting ? null : _resetDuration,
            child: const Text('Reset duration'),
          ),
          TextButton(onPressed: _stop, child: const Text('Stop')),
        ],
      ],
    );
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    _session?.close();
    _renderer.dispose();
    super.dispose();
  }
}
