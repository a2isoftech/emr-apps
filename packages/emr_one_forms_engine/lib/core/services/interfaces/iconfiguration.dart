import 'package:http/http.dart' as http;

abstract class IFormConfiguration {
  String? get formsApiUrl;

  http.Client Function()? clientFactory;

  double? get maxCapturedImageHeight;

  double? get maxCapturedImageWidth;

  int? get maxVideoLengthInSecs;

  String get userName;

  String get userUuid;

  String? get informsAppVersion;

  int get uploadAttemptInterval;

  String get saveInstanceUrl;

  String get saveMediaUrl;

  String get saveHistoryUrl;

  String get downloadMediaUrl;
}
