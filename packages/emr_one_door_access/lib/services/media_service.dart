import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

class MediaService {
  MediaService({required this.client});

  final BaseClient client;

  Future<Uint8List?> getImage(String url) async {
    try {
      final response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.bodyBytes;
      }
    } catch (err) {
      debugPrint(err.toString());
    }
    return null;
  }
}
