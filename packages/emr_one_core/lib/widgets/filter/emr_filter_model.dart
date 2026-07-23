import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EmrFilterModel<T> {
  EmrFilterModel({
    required this.key,
    required this.name,
    this.text,
    this.textBuilder,
    this.value,
    this.enableDelete = true,
    this.jsonConverter,
  });

  // Each filter needs a GlobalKey to identify the Chip for the popover.
  final GlobalKey globalKey = GlobalKey();

  final String key;

  final String name;

  final String? text;

  final T? value;

  final bool enableDelete;

  T Function(dynamic json)? jsonConverter;

  final Widget? Function(
    BuildContext context,
    EmrFilterModel<dynamic> filterModel,
  )? textBuilder;

  EmrFilterModel<dynamic> copyWith({
    String? name,
    String? text,
    Widget? Function(BuildContext context, EmrFilterModel<dynamic> filterModel)?
        textBuilder,
    T? value,
  }) =>
      EmrFilterModel<T>(
        key: key,
        name: name ?? this.name,
        text: text ?? this.text,
        textBuilder: textBuilder ?? this.textBuilder,
        value: value ?? this.value,
        enableDelete: enableDelete,
        jsonConverter: jsonConverter,
      );

  T? getValue(dynamic value) {
    try {
      if (jsonConverter != null) {
        return jsonConverter!.call(value);
      }

      if (T == List<String>) {
        return (value as List).cast<String>() as T;
      }
      if (T is List<int>) {
        return (value as List).cast<int>() as T;
      }
      return value as T;
    } catch (e) {
      // failed to cast
      if (kDebugMode) {
        print('Error while casting: $e');
      }
      return null;
    }
  }
}
