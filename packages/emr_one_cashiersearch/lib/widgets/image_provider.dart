import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CashierSearchFileProvider extends StatelessWidget {
  const CashierSearchFileProvider({required this.url, super.key});

  final String url;

  Future<_FileResult> _loadFile() async {
    final token = await FirebaseLogin.getToken();
    final headers = {'Authorization': 'Bearer $token'};

    final response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      return _FileResult(
        bytes: response.bodyBytes,
        contentType: response.headers['content-type'],
        headers: headers,
      );
    } else {
      throw Exception('Failed to load file: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<_FileResult>(
      future: _loadFile(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Icon(Icons.error);
        }

        final result = snapshot.data!;
        Widget? child;

        if (isPdf(result.bytes)) {
          child = EmrPdfViewer(
            data: result.bytes,
          );
        } else {
          child = InteractiveViewer(
            minScale: 0.5,
            maxScale: 4,
            child: Image.memory(
              result.bytes,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error),
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded || frame != null) {
                  return child;
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          );
        }
        if (!kIsWeb) {
          return CachedNetworkImage(
            imageUrl: url,
            httpHeaders: result.headers,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Padding(
              padding: const EdgeInsets.all(Insets.gutter * 2),
              child: Center(
                child: SizedBox(
                  width: 48,
                  height: 48,
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
        }

        return child;
      },
    );
  }
}

bool isPdf(Uint8List data) {
  if (data.length < 4) return false;

  return utf8.decode(data.sublist(0, 4), allowMalformed: true) == '%PDF';
}

class _FileResult {
  _FileResult({required this.bytes, required this.headers, this.contentType});
  final Uint8List bytes;
  final String? contentType;
  final Map<String, String> headers;
}
