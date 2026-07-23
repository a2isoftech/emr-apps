import 'package:json_annotation/json_annotation.dart';

part 'camera.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Camera {
  Camera({
    required this.name,
    required this.userName,
    required this.password,
    this.imageUrl,
    this.videoUrl,
    this.overlayUrl,
  });

  factory Camera.fromJson(Map<String, dynamic> json) => _$CameraFromJson(json);

  Map<String, dynamic> toJson() => _$CameraToJson(this);

  String name;
  String? imageUrl;
  String? videoUrl;
  String? overlayUrl;
  String userName;
  String password;
}
