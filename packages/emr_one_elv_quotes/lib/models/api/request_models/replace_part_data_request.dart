import 'package:emr_one_elv_quotes/models/common_classes/cat/part_data.dart';

class ReplacePartDataRequest {
  ReplacePartDataRequest({
    required this.partDescription,
    required this.replacementPartData,
    this.metaData = const [],
  });

  String partDescription;
  PartData replacementPartData;
  List<StringStringKeyValuePair>? metaData;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['partDescription'] = partDescription;
    json['replacementPartData'] = replacementPartData.toJson();
    if (metaData != null) {
      json['metaData'] = metaData;
    }
    return json;
  }

  static ReplacePartDataRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ReplacePartDataRequest(
        partDescription: json['partDescription'] as String,
        replacementPartData: PartData.fromJson(json['replacementPartData'])!,
        metaData: StringStringKeyValuePair.listFromJson(json['metaData']),
      );
    }
    return null;
  }

  static List<ReplacePartDataRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ReplacePartDataRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplacePartDataRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class StringStringKeyValuePair {
  StringStringKeyValuePair({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  static StringStringKeyValuePair? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return StringStringKeyValuePair(
        key: json['key'] as String?,
        value: json['value'] as String?,
      );
    }
    return null;
  }

  static List<StringStringKeyValuePair>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StringStringKeyValuePair>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StringStringKeyValuePair.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
