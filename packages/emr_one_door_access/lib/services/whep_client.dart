import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:http/http.dart' as http;

/// A negotiated WHEP playback session.
class WhepSession {
  WhepSession(this.peerConnection, this.resourceUrl);

  final RTCPeerConnection peerConnection;
  final Uri? resourceUrl;

  Future<void> close() async {
    if (resourceUrl != null) {
      try {
        await http.delete(resourceUrl!);
      } catch (_) {
        // Best-effort: the server will also time out the session on its own.
      }
    }
    await peerConnection.close();
  }
}

/// Minimal WHEP (WebRTC-HTTP Egress Protocol) client for playback-only use,
/// as implemented by MediaMTX's `/<path>/whep` endpoint.
class WhepClient {
  static Future<WhepSession> connect({
    required Uri whepUrl,
    required void Function(MediaStream stream) onTrack,
  }) async {
    final pc = await createPeerConnection(<String, dynamic>{
      'iceServers': <dynamic>[],
    });

    pc.onTrack = (RTCTrackEvent event) {
      if (event.streams.isNotEmpty) {
        onTrack(event.streams[0]);
      }
    };

    await pc.addTransceiver(
      kind: RTCRtpMediaType.RTCRtpMediaTypeVideo,
      init: RTCRtpTransceiverInit(direction: TransceiverDirection.RecvOnly),
    );
    await pc.addTransceiver(
      kind: RTCRtpMediaType.RTCRtpMediaTypeAudio,
      init: RTCRtpTransceiverInit(direction: TransceiverDirection.RecvOnly),
    );

    final offer = await pc.createOffer();
    await pc.setLocalDescription(offer);

    // This client doesn't implement trickle ICE, so wait for gathering to
    // finish before sending the offer — the SDP must include all candidates.
    await _waitForIceGatheringComplete(pc);

    final localDesc = await pc.getLocalDescription();

    final response = await http.post(
      whepUrl,
      headers: {'Content-Type': 'application/sdp'},
      body: localDesc!.sdp,
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      await pc.close();
      throw Exception(
        'WHEP negotiation failed: ${response.statusCode} ${response.body}',
      );
    }

    await pc.setRemoteDescription(
      RTCSessionDescription(response.body, 'answer'),
    );

    final location = response.headers['location'];
    final resourceUrl = location == null ? null : whepUrl.resolve(location);

    return WhepSession(pc, resourceUrl);
  }

  static Future<void> _waitForIceGatheringComplete(
    RTCPeerConnection pc,
  ) async {
    if (pc.iceGatheringState ==
        RTCIceGatheringState.RTCIceGatheringStateComplete) {
      return;
    }
    final completer = Completer<void>();
    pc.onIceGatheringState = (state) {
      if (state == RTCIceGatheringState.RTCIceGatheringStateComplete &&
          !completer.isCompleted) {
        completer.complete();
      }
    };
    await completer.future.timeout(
      const Duration(seconds: 5),
      onTimeout: () {},
    );
  }
}
