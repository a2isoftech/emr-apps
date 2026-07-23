enum ApiResponseType { success, warning, error }

typedef ResponseDataCreator<T> = T Function(dynamic jsonData);

class ApiResponse<T> {
  final String? message;
  final ApiResponseType errorLevel;
  final T? data;

  ApiResponse.fromJson(
      Map<String, dynamic> json, ResponseDataCreator<T>? dataCreator)
      : message = json['message'],
        errorLevel = ApiResponseType.values.firstWhere(
            (x) => x.name == json['errorLevel']?.toLowerCase(),
            orElse: () => ApiResponseType.success),
        data = json['data'] == null || dataCreator == null
            ? null
            : dataCreator(json['data']);
}

class SaveInstanceMediaMessage {
  final String id;
  final dynamic message;

  SaveInstanceMediaMessage(this.id, this.message);

  SaveInstanceMediaMessage.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        message = json['message'];
}

class SaveInstancePayload {
  final String id;
  final int databaseId;
  final List<SaveInstanceMediaMessage>? invalidMedia;

  SaveInstancePayload(this.id, this.databaseId, this.invalidMedia);

  factory SaveInstancePayload.fromJson(Map<String, dynamic> json) =>
      _$SaveInstancePayloadFromJson(json);
}

SaveInstancePayload _$SaveInstancePayloadFromJson(Map<String, dynamic> json) {
  Map<String, dynamic>? invalidMediaJson = json['invalidMedia'];
  return SaveInstancePayload(
      json['id'] as String,
      json['databaseId'] as int,
      invalidMediaJson?.entries
              .map((x) => SaveInstanceMediaMessage(x.key, x.value))
              .toList() ??
          []);
}

class SaveHistoryEntryMessage {
  /// Message
  final String item1;

  /// Record uuid
  final String item2;

  SaveHistoryEntryMessage.fromJson(Map<String, dynamic> json)
      : item1 = json['item1'],
        item2 = json['item2'];
}

class SaveHistoryPayload {
  final List<SaveHistoryEntryMessage>? failedEntries;

  SaveHistoryPayload.fromJson(Map<String, dynamic> json)
      : failedEntries = json['failedEntries']
            ?.map((e) => SaveHistoryEntryMessage.fromJson(e))
            .toList();
}
