import 'package:json_annotation/json_annotation.dart';

part 'image_shared_access_signature_response.g.dart';

@JsonSerializable()
class ImageSharedAccessSignatureResponse {
  ImageSharedAccessSignatureResponse(this.values);
  final Map<String, String> values;

  static ImageSharedAccessSignatureResponse fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ImageSharedAccessSignatureResponseFromJson(json);
}
