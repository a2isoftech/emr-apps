import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

typedef CustomSelectBoxItemsIterableFunc<T> = String Function(T item);
typedef CustomSelectBoxKeysIterableFunc<T, T1> = T Function(T1 item);
typedef CustomSelectBoxItemsMapTextFunc<T, T1> = String Function(
  T key,
  T1 value,
);
typedef CustomSelectBoxItemsMapTextFunc2<T, T1, T2> = String Function(
  T1 key,
  T2 value,
);
typedef CustomSelectBoxItemsMapKeyFunc<T, T1> = T? Function(T key, T1 value);
typedef CustomSelectBoxItemsMapKeyFunc2<T, T1, T2> = T? Function(
  T1 key,
  T2 value,
);
typedef CustomControlItemsBuildChild<T, T1> = Widget Function(T key, T1 value);

class CustomControlItems<T> extends Equatable {
  CustomControlItems({
    Map<T?, String>? items,
  }) {
    if (items != null) {
      _items.addAll(items);
    }
  }

  final Map<T?, String> _items = {};

  String? operator [](T key) => _items.containsKey(key) ? _items[key] : null;

  bool get isEmpty => _items.isEmpty;

  bool any(bool Function(T? element) test) => _items.keys.any(test);

  T? get single => _items.keys.single;

  T? get first => _items.entries.first.key;

  int get length => _items.length;

  /// Takes an [Iterable] of type [T] where [T] is also the return key for the
  /// user control.
  /// [text] defines how to map the [Iterable] to the user visible text of the
  /// control
  /// [key] is optional and if defined provides a mapping function to the key
  /// return when the user selects that option, the return type must be [T]

  static CustomControlItems<T> fromIterable<T>(
    Iterable<T> items,
    CustomSelectBoxItemsIterableFunc<T> text, {
    CustomSelectBoxKeysIterableFunc<T, T>? key,
  }) {
    return fromIterable2<T, T>(
      items,
      text,
      key: key ?? (e) => e,
    );
  }

  /// Takes an [Iterable] or type [T1] and a definition of [T] which is the type
  /// returned from the user control when the user selects that option.
  /// [text] provides a mapping function to provide the user visible text for
  /// that control
  /// [key] provides a mapping function to provide the value return when the
  /// user selects that specific option
  /// [placeholderText] is the default when no valid selection is made, the key
  /// is always null.
  static CustomControlItems<T> fromIterable2<T, T1>(
    Iterable<T1> items,
    CustomSelectBoxItemsIterableFunc<T1> text, {
    required CustomSelectBoxKeysIterableFunc<T, T1> key,
  }) {
    Map<T, String> processedItems;

    processedItems = {
      for (final e in items) key(e): text(e),
    };

    return CustomControlItems<T>(items: processedItems);
  }

  static CustomControlItems<T> empty<T>() {
    return CustomControlItems<T>();
  }

  /// Takes a [Map] of <T, String> where T is the key type that will be returned
  /// when an item of the corresponding control is selected
  /// If you don't define a [key] or [text] definition then the
  /// map will be mapped 1 for 1 to this control items list
  /// [defaultText] is the default when no valid selection is made, the key is
  /// always null.
  static CustomControlItems<T> fromMap<T>(
    Map<T, String> hashMap, {
    CustomSelectBoxItemsMapKeyFunc<T, String>? key,
    CustomSelectBoxItemsMapTextFunc<T, String>? text,
    String? defaultText,
  }) {
    final getKeyFunc = key ?? (k, v) => k;
    final getTextFunc = text ?? (k, v) => v;

    return CustomControlItems.fromMap3<T, T, String>(
      hashMap,
      key: getKeyFunc,
      text: getTextFunc,
      defaultText: defaultText,
    );
  }

  /// Takes a [Map] of <T, T1> where T is the key type that will be returned
  /// and T1 is the the type that the user visible text is built from.
  /// As T1 is unknown [text] function is must be defined and return a [String]
  /// [key] is optional and if defined will allow you to process the key, if it
  /// is not defined it will be mapped directly to the CustomItems objects
  /// [defaultText] is the default when no valid selection is made, the key is
  /// always null.
  static CustomControlItems<T> fromMap2<T, T1>(
    Map<T, T1> hashMap, {
    required CustomSelectBoxItemsMapTextFunc<T, T1> text,
    CustomSelectBoxItemsMapKeyFunc<T, T1>? key,
    String? defaultText,
  }) {
    final getKeyFunc = key ?? (k, v) => k;

    return CustomControlItems.fromMap3<T, T, T1>(
      hashMap,
      key: getKeyFunc,
      text: text,
      defaultText: defaultText,
    );
  }

  /// Takes a [Map] of <T, T1, T2> where T is the key type that will be returned
  /// T1 is the type T is build from and T2 is the the type that the user
  /// visible text is built from.
  /// As T1 does not match the type of T explicitly a function [key] must be
  /// defined to provide a mapping.
  /// As T2 is unknown [text] function is must be defined and return a [String]
  /// [defaultText] is the default when no valid selection is made, the key is
  /// always null.
  static CustomControlItems<T> fromMap3<T, T1, T2>(
    Map<T1, T2> hashMap, {
    required CustomSelectBoxItemsMapKeyFunc2<T, T1, T2> key,
    required CustomSelectBoxItemsMapTextFunc2<String, T1, T2> text,
    String? defaultText,
  }) {
    final items = <T?, String>{};

    for (final element in hashMap.keys) {
      final itemKey = key(element, hashMap[element] as T2);
      final itemText = text(element, hashMap[element] as T2);
      items[itemKey] = itemText;
    }

    return CustomControlItems<T>(items: items);
  }

  List<DropdownMenuItem<T>> toDropdownMenuItem<T1, T2>({
    required CustomControlItemsBuildChild<T1, T2> childBuilder,
  }) {
    final dropDownMenuItems = <DropdownMenuItem<T>>[];

    for (final key in _items.keys) {
      final text = _items[key];

      dropDownMenuItems.add(
        DropdownMenuItem<T>(
          value: key,
          child: childBuilder(key as T1, text as T2),
        ),
      );
    }

    return dropDownMenuItems;
  }

  @override
  List<Object?> get props => [_items];

  bool hasEntry(T? item) {
    if (item == null) {
      return false;
    }

    return _items.containsKey(item);
  }
}
