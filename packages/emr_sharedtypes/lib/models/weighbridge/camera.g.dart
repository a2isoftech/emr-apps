// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Camera _$CameraFromJson(Map<String, dynamic> json) => Camera(
  name: json['name'] as String,
  userName: json['userName'] as String,
  password: json['password'] as String,
  imageUrl: json['imageUrl'] as String?,
  videoUrl: json['videoUrl'] as String?,
  overlayUrl: json['overlayUrl'] as String?,
);

Map<String, dynamic> _$CameraToJson(Camera instance) => <String, dynamic>{
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'videoUrl': instance.videoUrl,
  'overlayUrl': instance.overlayUrl,
  'userName': instance.userName,
  'password': instance.password,
};
