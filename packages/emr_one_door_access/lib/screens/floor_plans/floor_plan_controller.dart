import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class FloorPlanController extends ChangeNotifier {
  FloorPlanController({
    required this.doorAccessService,
    required this.appConfig,
  });

  final DoorAccessService doorAccessService;
  final AppConfig appConfig;

  late final ValueNotifier<String?> name = ValueNotifier('');
  late final ValueNotifier<bool> syncEventsFirst = ValueNotifier(false);

  FloorPlan? existing;
  String? imageUrl;
  String? siteId;
  Uint8List? imageBytes;
  String? fileName;
  String? filePath;
  bool isSvg = false;
  bool isLoading = false;
  bool isInEditMode = false;
  bool _isPolling = false;

  List<Hotspot> hotspots = [];
  List<AccessPoint> accessPoints = [];
  final List<AccessAlert> alerts = [];
  final Map<String, Timer> _hotspotTimers = {};

  Future<List<KeyValuePair<String, String>>> accessPointsList(String _) async {
    if (accessPoints.isEmpty) {
      final data = await doorAccessService.accessPointsService
          .getAccessPointNames(siteId: siteId);

      accessPoints = data;
    }
    final usedAccessPoints = hotspots
        .map((h) => h.accessPointId ?? '')
        .toList();
    return Future.value(
      accessPoints
          .where((x) => !usedAccessPoints.contains(x.id))
          .map((v) => (key: v.id, value: v.name))
          .toList(),
    );
  }

  ///Pick file
  Future<void> pickImage(String siteId) async {
    final picker = ImagePicker();
    final file = await picker.pickImage(source: ImageSource.gallery);

    if (file == null) return;

    this.siteId = siteId;

    final originalBytes = await file.readAsBytes();

    fileName = file.name;

    filePath = file.path;

    imageBytes = await FlutterImageCompress.compressWithList(
      originalBytes,
      minHeight: 800,
      minWidth: 600,
      quality: 70,
    );

    isInEditMode = true;

    hotspots = [];

    isLoading = false;
    notifyListeners();
  }

  Future<void> pollAccessEvents(String siteId, int pollingSeconds) async {
    if (_isPolling) {
      debugPrint('already running so ignore this time');
      return; // ignore if already running
    }

    _isPolling = true;
    try {
      final acIds = accessPoints
          .map((x) => x.accessControllerId)
          .toSet()
          .toList();
      final events = await doorAccessService.accessControllersService
          .searchDoorAccessAttempts(
            input: Input$SearchDoorAccessAttemptsInput(
              userIds: [],
              siteIds: [siteId],
              accessControllerIds: acIds,
              syncEventsFirst: syncEventsFirst.value,
              from: DateTime.now().add(Duration(seconds: -1 * pollingSeconds)),
            ),
            first: 5,
          );

      for (final e in events.data) {
        // if access point is
        //restricted and access response is denied then add 2 alerts
        //restricted and access response is granted then add 1 alert
        final accessPoint = accessPoints.firstWhereOrNull(
          (x) => x.id == e.accessPointId,
        );
        if (accessPoint?.restricted ?? false) {
          if (!hasAlert(e)) {
            final hotspotIndex = flashHotspotDenied(e.accessPointId ?? '');
            addAlert(e, hotspotIndex, isRestriced: true);

            if (e.topic1 == 'AccessDenied') {
              addAlert(e, hotspotIndex, isRestriced: false);
            }
          }
        } else if (!hasAlert(e) && e.topic1 == 'AccessDenied') {
          final hotspotIndex = flashHotspotDenied(e.accessPointId ?? '');
          addAlert(e, hotspotIndex, isRestriced: false);
        }
      }
    } catch (err) {
      debugPrint('Polling error: $err');
    } finally {
      _isPolling = false;
    }
  }

  String flashHotspotDenied(String accessPointId) {
    final affectedHotspots = <int>[];
    hotspots = hotspots.map((h) {
      if (h.accessPointId == accessPointId) {
        affectedHotspots.add(h.orderIndex);
        return h.copyWith(status: HotspotStatus.denied);
      }
      return h;
    }).toList();

    // Cancel existing timer if already flashing
    _hotspotTimers[accessPointId]?.cancel();

    // Start new timer
    _hotspotTimers[accessPointId] = Timer(
      const Duration(seconds: 3), // configurable
      () {
        hotspots = hotspots.map((h) {
          if (h.accessPointId == accessPointId) {
            return h.copyWith(status: HotspotStatus.open);
          }
          return h;
        }).toList();
        notifyListeners();
      },
    );

    notifyListeners();

    return affectedHotspots.join(' - ');
  }

  bool hasAlert(DoorAccessAttemptEvent e) {
    return alerts.any(
      (x) => x.accessControllerId == e.accessControllerId && x.rowId == e.rowId,
    );
  }

  void removeAlert(AccessAlert alert) {
    alerts.remove(alert);
    notifyListeners();
  }

  void addAlert(
    DoorAccessAttemptEvent e,
    String hotspotIndex, {
    required bool isRestriced,
  }) {
    final userNameText =
        e.userFullName ?? e.email ?? e.userId ?? e.cardNumber ?? 'No User Info';
    final title = isRestriced
        ? '$userNameText - ${e.accessResponse}'
        : userNameText;

    alerts.insert(
      0,
      AccessAlert(
        hotspotIndex: hotspotIndex,
        rowId: e.rowId,
        accessControllerId: e.accessControllerId,
        userName: title,
        accessPointId: e.accessPointId ?? 'No Access Point Info',
        accessPointName: e.accessPointName ?? 'No Access Point Name',
        time: e.utcTime,
        restricted: isRestriced,
      ),
    );

    // Optional: keep only last 10
    if (alerts.length > 10) {
      alerts.removeLast();
    }

    notifyListeners();
  }

  void disposeTimers() {
    for (final t in _hotspotTimers.values) {
      t.cancel();
    }
  }

  Future<bool> uploadImage() async {
    final baseUrl = appConfig
        .endpoint('doorAccessUrl')
        .replaceAll('/graphql', '');

    final request = http.MultipartRequest(
      'POST',
      Uri.parse('$baseUrl/upload-floor-plan'),
    );

    request.files.add(await createMultipartFile());

    final token = await doorAccessService.httpClient.getToken();

    request.headers['Authorization'] = 'Bearer $token';

    final response = await request.send();

    final body = await response.stream.bytesToString();
    final data = jsonDecode(body) as Map<String, dynamic>;

    imageUrl = data['location'].toString(); // backend returns URL
    isSvg = imageUrl?.endsWith('.svg') ?? false;

    await setImageBytes(imageUrl);

    return true;
  }

  Future<void> setFloorPlan(
    FloorPlan floorPlan, {
    required bool isInEditMode,
  }) async {
    existing = floorPlan;
    await setImageBytes(floorPlan.imageUrl);
    imageUrl = floorPlan.imageUrl;
    isSvg = imageUrl?.endsWith('.svg') ?? false;
    this.isInEditMode = isInEditMode;
    siteId = floorPlan.siteId;
    hotspots = floorPlan.hotspots.map((h) {
      if ((h.accessPointId ?? '').isNotEmpty) {
        final accessPoint = accessPoints.firstWhereOrNull(
          (x) => x.id == h.accessPointId,
        );
        h.status = accessPoint?.restricted ?? false
            ? HotspotStatus.restricted
            : h.status;
      }
      return h;
    }).toList();
    name.value = floorPlan.name;
  }

  void reset(String siteId) {
    existing = null;
    imageUrl = null;
    isSvg = false;
    isInEditMode = true;
    this.siteId = siteId;
    hotspots = [];
    name.value = '';
    imageBytes = null;
    isLoading = false;
    alerts.clear();
    _isPolling = false;
    _hotspotTimers.clear();
  }

  Future<void> setImageBytes(String? imgUrl) async {
    if ((imgUrl ?? '').isNotEmpty) {
      final response = await doorAccessService.httpClient.get(
        Uri.parse(imgUrl!),
      );

      final contentType = response.headers['content-type'] ?? '';

      if (response.statusCode == 200 && contentType.startsWith('image/')) {
        imageBytes = response.bodyBytes;
      } else {
        debugPrint('Invalid image response: $contentType');
        imageBytes = null;
      }
    }
  }

  Future<http.MultipartFile> createMultipartFile() async {
    if (kIsWeb) {
      return http.MultipartFile.fromBytes(
        'file',
        imageBytes!,
        filename: fileName,
      );
    } else {
      return http.MultipartFile.fromPath(
        'file',
        filePath ?? '',
        filename: fileName,
      );
    }
  }

  ///Load access points (dropdown)
  Future<void> loadAccessPoints(String siteId) async {
    accessPoints = await doorAccessService.accessPointsService
        .getAccessPointNames(siteId: siteId);

    notifyListeners();
  }

  ///Add hotspot
  void addHotspot(double x, double y) {
    final newSpot = Hotspot(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: 'New',
      x: x,
      y: y,
      status: HotspotStatus.open,
      orderIndex: hotspots.length + 1,
    );

    hotspots.add(newSpot);
    notifyListeners();
  }

  ///Add hotspot
  void removeHotspot(String id) {
    hotspots.removeWhere((x) => x.id == id);
    notifyListeners();
  }

  ///Update hotspot with access point
  void attachAccessPoint(String hotspotId, String accessPointId) {
    hotspots = hotspots.map((h) {
      if (h.id == hotspotId) {
        final ap = accessPoints.firstWhereOrNull((x) => x.id == accessPointId);
        h.accessPointId = ap?.id;
        h.name = ap?.name ?? accessPointId;
        h.status = ap?.restricted ?? false
            ? HotspotStatus.restricted
            : h.status;
      }
      return h;
    }).toList();

    notifyListeners();
  }

  ///Save hotspots
  Future<(bool, String)> update() async {
    isLoading = true;
    notifyListeners();

    // validate
    final emptyHotspots = hotspots.where(
      (x) => (x.accessPointId ?? '').isEmpty,
    );
    if (emptyHotspots.isNotEmpty) {
      isLoading = false;
      notifyListeners();

      return (false, 'Access point not assigned to one or mmore hot spots');
    }

    var result = false;
    // we want to upload image only for new floor plan
    if (existing != null || await uploadImage()) {
      try {
        result = await doorAccessService.sitesService.saveFloorPlan(
          FloorPlan(
            id: existing?.id ?? '',
            createdOn: DateTime.now(),
            name: name.value ?? '',
            siteId: siteId!,
            imageUrl: imageUrl ?? '',
            hotspots: hotspots,
          ),
        );
      } catch (err) {
        debugPrint(err.toString());
      } finally {
        isInEditMode = !result;
        isLoading = false;
        notifyListeners();
      }
      return (result, '');
    }
    return (false, 'Floor plan image could not be uploaded');
  }

  void toggleHotspotStatus(Hotspot hs) {
    hotspots = hotspots.map((h) {
      if (hs.id == h.id) {
        if (hs.status == HotspotStatus.open) {
          return h.copyWith(status: HotspotStatus.offline);
        } else {
          return h.copyWith(status: HotspotStatus.open);
        }
      }
      return h;
    }).toList();
    notifyListeners();
  }

  Future<(bool, String)> unlockAccessPoint(
    Hotspot hotspot,
    String reason,
  ) async {
    isLoading = true;
    notifyListeners();

    final accessPoint = accessPoints.firstWhereOrNull(
      (x) => x.id == hotspot.accessPointId,
    );
    if (accessPoint == null) {
      isLoading = false;
      notifyListeners();

      return (false, 'Access point not assigned to hotspot');
    }

    try {
      final result = await doorAccessService.accessPointsService
          .unlockAccessPoint(
            accessControllerId: accessPoint.accessControllerId,
            accessPointToken: accessPoint.entity,
            numberOfSeconds: 15,
            reason: reason,
          );

      return result
          ? (true, '')
          : (false, 'Access point could not be unlocked');
    } catch (e) {
      return (false, 'Access point could not be unlocked: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Camera? cameraFor(Hotspot hotspot) {
    return accessPoints
        .firstWhereOrNull((x) => x.id == hotspot.accessPointId)
        ?.camera;
  }

  Future<
    (
      bool success,
      String error,
      Mutation$StartCameraStream$startCameraStream? result,
    )
  >
  startLiveStream(Hotspot hotspot) async {
    final accessPoint = accessPoints.firstWhereOrNull(
      (x) => x.id == hotspot.accessPointId,
    );
    if (accessPoint == null) {
      return (false, 'Access point not assigned to hotspot', null);
    }

    try {
      final result = await doorAccessService.accessPointsService
          .startCameraStream(accessPoint.id);

      return result.isRunning
          ? (true, '', result)
          : (
              false,
              result.message ?? 'Live stream could not be started',
              result,
            );
    } catch (e) {
      return (false, 'Live stream could not be started: $e', null);
    }
  }

  Future<(bool success, String error)> stopLiveStream(Hotspot hotspot) async {
    final accessPoint = accessPoints.firstWhereOrNull(
      (x) => x.id == hotspot.accessPointId,
    );
    if (accessPoint == null) {
      return (false, 'Access point not assigned to hotspot');
    }

    try {
      await doorAccessService.accessPointsService.stopCameraStream(
        accessPoint.id,
      );
      return (true, '');
    } catch (e) {
      return (false, 'Live stream could not be stopped: $e');
    }
  }
}
