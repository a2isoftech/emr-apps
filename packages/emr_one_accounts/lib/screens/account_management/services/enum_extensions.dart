import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/screens/account_management/models/key_value_pair.dart';
import 'package:flutter/material.dart';

class EnumExtensions {
  static List<KeyValuePair<T, String>> pickerItems<T extends Enum>(
    Iterable<T> values,
  ) =>
      values.filterValues
          .map((v) => (key: v, value: v.toString().split('.').last))
          .toList();

  static TEnum? stringToEnum<TEnum>(String enumString, List<TEnum> enumValues) {
    return enumValues
        .firstWhereOrNull((e) => e.toString().split('.').last == enumString);
  }

  static ValueNotifier<KeyValuePair<TEnum, String>>
      getEnumValueNotifier<TEnum extends Enum>(
    String enumString,
    List<TEnum> enumValues, {
    String? value,
  }) {
    final firstOption = (
      key: enumValues.first,
      value: enumValues.first.toString().split('.').last,
    );
    if (enumString.isEmpty) {
      return ValueNotifier<KeyValuePair<TEnum, String>>(firstOption);
    }

    final enumStringSanitized =
        enumString.contains('.') ? enumString.split('.').last : enumString;

    // Convert the string to the enum value
    final enumValue = stringToEnum<TEnum>(enumStringSanitized, enumValues);

    if (enumValue == null) {
      return ValueNotifier<KeyValuePair<TEnum, String>>(firstOption);
    }

    // Create the KeyValuePair
    final pair = (key: enumValue, value: value ?? enumStringSanitized);

    // Return it as a ValueNotifier
    return ValueNotifier<KeyValuePair<TEnum, String>>(pair);
  }
}
