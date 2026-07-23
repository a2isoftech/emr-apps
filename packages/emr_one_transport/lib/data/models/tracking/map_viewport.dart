import 'package:json_annotation/json_annotation.dart';

part 'map_viewport.g.dart';

@JsonSerializable()
class MapViewport {
  MapViewport({
    required this.latitude,
    required this.longitude,
    required this.zoom,
  });

  factory MapViewport.fromJson(Map<String, dynamic> json) =>
      _$MapViewportFromJson(json);

  Map<String, dynamic> toJson() => _$MapViewportToJson(this);

  final double latitude;
  final double longitude;
  final int zoom;
}
