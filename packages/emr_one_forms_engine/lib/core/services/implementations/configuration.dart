import 'package:emr_one_forms_engine/core/services/services.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

class FormConfiguration implements IFormConfiguration {
  @override
  String? formsApiUrl;

  @override
  http.Client Function()? clientFactory;

  @override
  double? maxCapturedImageHeight;

  @override
  double? maxCapturedImageWidth;

  @override
  int? maxVideoLengthInSecs;

  @override
  String userName;

  @override
  String userUuid;

  @override
  String? informsAppVersion;

  @override
  late int uploadAttemptInterval;

  @override
  String get saveHistoryUrl => _concatUrl('api/instance/saveHistory');

  @override
  String get saveInstanceUrl => _concatUrl('api/instance/save');

  @override
  String get saveMediaUrl => _concatUrl('api/instance/uploadMedia');

  @override
  String get downloadMediaUrl => _concatUrl('api/instance/downloadMedia/');

  IAuthorizationProvider? authProvider;

  final Future<void>? Function(ServiceContainer container)? onRegisterServices;

  final void Function(String name, Map<String, String> params)? log;

  String _concatUrl(String part) => path.join(formsApiUrl ?? '', part);

  FormConfiguration(
      {required this.userName,
      required this.userUuid,
      this.formsApiUrl,
      this.clientFactory,
      this.maxCapturedImageHeight,
      this.maxCapturedImageWidth,
      this.maxVideoLengthInSecs,
      int? appUploadAttemptInterval,
      this.authProvider,
      this.onRegisterServices,
      this.log,
      this.informsAppVersion}) {
    uploadAttemptInterval = appUploadAttemptInterval ?? 15;
  }
}
