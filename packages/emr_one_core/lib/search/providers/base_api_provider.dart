import 'package:emr_one_core/search/search.dart';
import 'package:http/http.dart' as http;

abstract class EmrUtilSuggestionBaseApiProvider<T extends Object>
    implements EmrUtilSuggestionProvider<T> {
  Future<http.Response> postData(
    Uri uri,
    String token,
    String body, {
    String contentType = 'application/json',
  }) async {
    return http.post(
      uri,
      body: body,
      headers: {'Authorization': token, 'Content-Type': contentType},
    );
  }
}
