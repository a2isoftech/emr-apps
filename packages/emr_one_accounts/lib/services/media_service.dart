import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:uuid/uuid.dart';

class MediaService {
  MediaService({required this.client});

  final BaseClient client;

  Future<bool> uploadDocument({
    required String mediaApiUrlWithToken,
    required String fileName,
    required Uint8List fileBytes,
  }) async {
    final request = MultipartRequest('POST', Uri.parse(mediaApiUrlWithToken));
    final fileToSend = MultipartFile.fromBytes(
      'formFile',
      fileBytes,
      filename: fileName,
    );
    request.files.add(fileToSend);
    final response = await client.send(request);
    final streamResponse = await Response.fromStream(response);
    return streamResponse.statusCode >= 200 && streamResponse.statusCode <= 299;
  }

  Future<Uint8List?> getImage(String url) async {
    final response = await client.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      return response.bodyBytes;
    }
    return null;
  }

  static String getRandomFileIdentifier() {
    const uuid = Uuid();
    return uuid.v4();
  }
}
