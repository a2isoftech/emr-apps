// ignore: one_member_abstracts
abstract class IJsonEncodable {
  Map<String, dynamic> toJson();
}

class MediaSaveRequest implements IJsonEncodable {
  MediaSaveRequest({
    required this.id,
    required this.filePath,
  });
  final String id;
  final String filePath;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'filePath': filePath,
      };
}
