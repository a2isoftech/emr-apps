import 'package:collection/collection.dart';

extension GroupAndSelectFirstExtension<T> on Iterable<T> {
  List<T> groupAndSelectFirst<K>(K Function(T) keySelector) {
    return groupListsBy(keySelector)
        .entries
        .map((entry) => entry.value.first)
        .toList();
  }
}
