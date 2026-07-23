enum CustomAuthErrorCode {
  none,
  invalidCredentials,
  pinExpired,
  failedToResetPin
}

class CustomTokenResponse {
  CustomTokenResponse({this.success = false, this.errorCode, this.idToken});
  CustomTokenResponse.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool,
        errorCode = _$enumDecode(_$CustomTokenErrorCodeMap, json['errorCode']),
        idToken = json['idToken'] as String?;

  final bool success;
  final CustomAuthErrorCode? errorCode;
  final String? idToken;

  static K? _$enumDecode<K, V>(
    Map<K, V> enumValues,
    Object? source, {
    K? unknownValue,
  }) {
    if (source == null) return null;

    return enumValues.entries.singleWhere(
      (e) => e.value == source,
      orElse: () {
        if (unknownValue == null) {
          throw ArgumentError(
            '`$source` is not one of the supported values: '
            '${enumValues.values.join(', ')}',
          );
        }
        return MapEntry(unknownValue, enumValues.values.first);
      },
    ).key;
  }
}

const _$CustomTokenErrorCodeMap = {
  CustomAuthErrorCode.none: 'None',
  CustomAuthErrorCode.invalidCredentials: 'InvalidCredentials',
  CustomAuthErrorCode.pinExpired: 'PinExpired',
  CustomAuthErrorCode.failedToResetPin: 'FailedToResetPin',
};
