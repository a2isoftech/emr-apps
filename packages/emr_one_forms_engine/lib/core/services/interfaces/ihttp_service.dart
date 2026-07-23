import 'dart:typed_data';

abstract class IJsonEncodable {
  Map<String, dynamic> toJson();
}

typedef TypedJsonParser<T> = T Function(dynamic json);

class HttpResult<T> {
  bool success;
  String? errorMessage;
  T? response;
  String? responseBody;

  HttpResult(this.success,
      {this.errorMessage, this.response, this.responseBody});
}

abstract class IHttpService {
  Future<HttpResult<T>> get<T>(String url, TypedJsonParser<T> parser);

  Future<HttpResult<T>> post<T>(
      String url, IJsonEncodable body, TypedJsonParser<T> parser);

  Future<HttpResult<T>> postList<T>(
      String url, List<IJsonEncodable> body, TypedJsonParser<T> parser);

  Future<HttpResult<T>> postMultipartFormData<T>(
      String url, IJsonEncodable body, TypedJsonParser<T> parser);

  Future<HttpResult<Uint8List>> getFile(String url);
}
