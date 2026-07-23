import 'dart:convert';

import 'package:flutter/material.dart';

enum HotspotStatus { open, denied, offline, restricted, unknown }

class Hotspot {
  Hotspot({
    required this.id,
    required this.name,
    required this.orderIndex,
    required this.x,
    required this.y,
    required this.status,
    this.accessPointId,
  });

  ///JSON → Object
  factory Hotspot.fromJson(Map<String, dynamic> json) {
    return Hotspot(
      id: json['id'] as String,
      orderIndex: json['orderIndex'] as int,
      name: json['name'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      status: _statusFromString(json['status'] as String?),
    );
  }
  final String id;
  String name;
  final int orderIndex;
  final double x; // normalized (0–1)
  final double y; // normalized (0–1)
  HotspotStatus status;
  String? accessPointId;

  ///Copy (useful for updates)
  Hotspot copyWith({
    String? id,
    String? name,
    double? x,
    double? y,
    HotspotStatus? status,
    String? accessPointId,
    int? orderIndex,
  }) {
    return Hotspot(
      id: id ?? this.id,
      name: name ?? this.name,
      x: x ?? this.x,
      y: y ?? this.y,
      status: status ?? this.status,
      accessPointId: accessPointId ?? this.accessPointId,
      orderIndex: orderIndex ?? this.orderIndex,
    );
  }

  ///Object → JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'x': x,
      'y': y,
      'status': status.name,
      'accessPointId': accessPointId,
      'orderIndex': orderIndex,
    };
  }

  ///String helpers
  static HotspotStatus _statusFromString(String? value) {
    switch (value) {
      case 'open':
        return HotspotStatus.open;
      case 'denied':
        return HotspotStatus.denied;
      case 'offline':
        return HotspotStatus.offline;
      case 'restricted':
        return HotspotStatus.restricted;
      default:
        return HotspotStatus.unknown;
    }
  }

  Color get color {
    switch (status) {
      case HotspotStatus.open:
        return Colors.green;
      case HotspotStatus.denied:
        return Colors.red;
      case HotspotStatus.offline:
        return Colors.grey;
      case HotspotStatus.restricted:
        return Colors.orange;
      case HotspotStatus.unknown:
        return Colors.black;
    }
  }

  ///Optional: animation speed per status
  Duration get animationDuration {
    switch (status) {
      case HotspotStatus.denied:
        return const Duration(milliseconds: 800); // fast pulse
      case HotspotStatus.open:
        return const Duration(seconds: 2); // slow pulse
      case HotspotStatus.offline:
        return const Duration(seconds: 3);
      case HotspotStatus.restricted:
        return const Duration(seconds: 1);
      case HotspotStatus.unknown:
        return const Duration(seconds: 2);
    }
  }

  @override
  String toString() => jsonEncode(toJson());
}
