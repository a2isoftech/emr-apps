import 'package:emr_one_core/emr_one_core.dart';

class SimplePolicy extends Policy {
  SimplePolicy(this.url);

  final String url;

  UserService? userService;
  SettingsService? settingsService;

  @override
  Uri getUri({Uri? uri}) {
    if (uri == null) {
      return Uri.parse(url);
    }

    final result = Uri.parse(url).resolveUri(uri);

    return result;
  }

  /// The default headers to add to requests. If the header parameter is passed
  /// into e.g. the `get` or `post` methods, and the default headers already
  /// contains a header with a matching key, then the default header value will
  /// be overwritten.
  @override
  Future<Map<String, String>> getDefaultHeaders() async => Future.value({
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        if ((userService?.hasUser ?? false) && settingsService != null)
          'X-Yard-Code': await settingsService!.yardCode(),
      });
}
