import 'package:emr_sharedtypes/models/weighbridge/weighbridge.dart';
import 'package:flutter/foundation.dart';

class WeighbridgeScaleCameraData {
  WeighbridgeScaleCameraData({
    required String name,
    required String imageUrl,
    required String videoUrl,
    required String overlayUrl,
    required String ipAddress,
    required String userName,
    required String password,
  }) {
    this.name = ValueNotifier(name);
    this.imageUrl = ValueNotifier(imageUrl);
    this.videoUrl = ValueNotifier(videoUrl);
    this.overlayUrl = ValueNotifier(overlayUrl);
    this.ipAddress = ValueNotifier(ipAddress);
    this.userName = ValueNotifier(userName);
    this.password = ValueNotifier(password);
    _regenerateEmptyUrls();
    _wireListeners();
  }

  WeighbridgeScaleCameraData.fromCamera(Camera camera) {
    name = ValueNotifier(camera.name);
    imageUrl = ValueNotifier(camera.imageUrl ?? '');
    videoUrl = ValueNotifier(camera.videoUrl ?? '');
    overlayUrl = ValueNotifier(camera.overlayUrl ?? '');
    ipAddress = ValueNotifier(Uri.tryParse(camera.imageUrl ?? '')?.host ?? '');
    userName = ValueNotifier(camera.userName);
    password = ValueNotifier(camera.password);
    _regenerateEmptyUrls();
    _wireListeners();
  }

  Camera toCamera() => Camera(
    name: name.value,
    imageUrl: imageUrl.value,
    videoUrl: videoUrl.value,
    overlayUrl: overlayUrl.value,
    userName: userName.value,
    password: password.value,
  );

  void _wireListeners() {
    ipAddress.addListener(_propagateIpChange);
  }

  void _propagateIpChange() {
    final ip = ipAddress.value.trim();
    if (ip.isEmpty) return;

    imageUrl.value = _ensureHost(imageUrl.value, ip, _imagePath);
    videoUrl.value = _ensureHost(videoUrl.value, ip, _videoPath);
    overlayUrl.value = _ensureHost(overlayUrl.value, ip, _overlayPath);
  }

  void _regenerateEmptyUrls() {
    if (ipAddress.value.isEmpty) return;
    if (imageUrl.value.isEmpty) {
      imageUrl.value = 'http://${ipAddress.value}$_imagePath';
    }
    if (videoUrl.value.isEmpty) {
      videoUrl.value = 'http://${ipAddress.value}$_videoPath';
    }
    if (overlayUrl.value.isEmpty) {
      overlayUrl.value = 'http://${ipAddress.value}$_overlayPath';
    }
  }

  String _ensureHost(String current, String newIp, String templatePath) {
    final regeneratedBaseUrl = 'http://$newIp';
    final regeneratedFullUrl = '$regeneratedBaseUrl$templatePath';

    if (current.trim().isEmpty || current.trim() == regeneratedBaseUrl) {
      return regeneratedFullUrl;
    }
    try {
      final uri = Uri.parse(current);
      if (uri.host.isEmpty) {
        return regeneratedFullUrl;
      }
      final newUri = uri.replace(host: newIp);
      final url = newUri.toString();

      return url != regeneratedBaseUrl ? url : regeneratedFullUrl;
    } catch (_) {
      return current;
    }
  }

  void dispose() {
    ipAddress.removeListener(_propagateIpChange);
    ipAddress.dispose();
    name.dispose();
    imageUrl.dispose();
    videoUrl.dispose();
    overlayUrl.dispose();
    userName.dispose();
    password.dispose();
  }


  static const _imagePath = '/axis-cgi/jpg/image.cgi?resolution=640x480';
  static const _videoPath = '/axis-cgi/mjpg/video.cgi';

  static const _overlayPath =
      '/axis-cgi/operator/dynamicoverlay.cgi?action=settext&text=';

  late final ValueNotifier<String> name;

  late final ValueNotifier<String> ipAddress;

  late final ValueNotifier<String> imageUrl;

  late final ValueNotifier<String> videoUrl;

  late final ValueNotifier<String> overlayUrl;

  late final ValueNotifier<String> userName;

  late final ValueNotifier<String> password;
}
