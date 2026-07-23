import 'package:http/http.dart';

typedef RetryPredicate = bool Function(BaseResponse response, int attempts);

typedef RetryPredicateMultiPart = bool Function(
  StreamedResponse response,
  int attempts,
);

abstract class IApiService {
  Future<Response> getAsync(String url);

  Future<Response> postAsync({required String url, required Object? data});

  Future<StreamedResponse> postMultipartFormData({
    required String url,
    required dynamic data,
  });
}
