import 'package:emr_one_forms_engine/core/constants/enums.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/ihttp_service.dart';

class MediaSaveRequest implements IJsonEncodable {
  final String id;
  final String filePath;
  final CapturedMediaType mediaType;

  MediaSaveRequest({
    required this.id,
    required this.filePath,
    required this.mediaType,
  });

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'filePath': filePath,
        'mediaType': mediaType,
      };
}
