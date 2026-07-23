class APIResult {
  APIResult({this.message});

  factory APIResult.fromJson(Map<String, dynamic> json) =>
      _$APIResultFromJson(json);

  final String? message;
}

APIResult _$APIResultFromJson(Map<String, dynamic> json) => APIResult(
      message: json['message'] as String?,
    );
