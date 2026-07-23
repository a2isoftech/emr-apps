import 'data_provider.dart';

class ApiRequestDataProviderDTO extends TemplateDataProviderDTO {
  static const String _defaultIdKey = 'id';
  static const String _defaultValueKey = 'text';

  String url;
  Map<String, String>? defaultParameters;
  String resultKey = _defaultIdKey;
  String resultText = _defaultValueKey;
  String? errorMessage;

  static String getDefaultErrorMessage(String url) =>
      'Data request to $url failed';

  ApiRequestDataProviderDTO(super.id, this.url) {
    errorMessage = getDefaultErrorMessage(url);
  }

  ApiRequestDataProviderDTO.fromJson(super.json)
    : url = json['url'],
      errorMessage = getDefaultErrorMessage(json['url']),
      defaultParameters = json['defaultParameters']?.map(
        (k, v) => MapEntry(k, v as String),
      ),
      resultKey = json['resultKey'] ?? _defaultIdKey,
      resultText = json['resultText'] ?? _defaultValueKey,
      super.fromJson();
}
