import 'package:http/http.dart' as http;
import 'package:universal_html/html.dart';

class FileDownloadService {

  Future<bool> downloadFile(String? mediaApiUrlWithToken) async {
    if (mediaApiUrlWithToken == null) {
      return false;
    }

    final fileName = getFileName(mediaApiUrlWithToken);
    final response = await http.get(Uri.parse(mediaApiUrlWithToken));
    if (response.statusCode == 200) {
      final blob = Blob([response.bodyBytes]);
      final url = Url.createObjectUrlFromBlob(blob);
      AnchorElement(href: url)
        ..setAttribute('download', fileName)
        ..click();
      Url.revokeObjectUrl(url);
    } else {
      return false;
    }
    return true;
  }

  String getFileName(String url) {
    // Extract the last segment of the URL
    final lastSegment = Uri.parse(url).pathSegments.last;

    final regex = RegExp(r'^(.+?)-[a-f0-9-]{36}\.pdf$'); // GUID
    final match = regex.firstMatch(lastSegment); // Guid and File Name.

    // If a match is found, return the file name without the GUID
    if (match != null && match.groupCount > 0) {
      return '${match.group(1)}.pdf'; // Actual File name without Guid.
    }
    return lastSegment;
  }
}
