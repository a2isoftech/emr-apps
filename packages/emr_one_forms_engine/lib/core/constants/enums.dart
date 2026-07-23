// ignore_for_file: constant_identifier_names,non_constant_identifier_names

enum CapturedMediaType { image, video }

enum CapturedMediaSource { camera, gallery }

enum AlertMessageType { success, error, warning, information }



const Map<CapturedMediaType, String> CapturedMediaTypeName = {
  CapturedMediaType.image: 'image',
  CapturedMediaType.video: 'video'
};

final Map<String, CapturedMediaType> CapturedMediaTypeMap =
    CapturedMediaTypeName.map((key, value) => MapEntry(value, key));
