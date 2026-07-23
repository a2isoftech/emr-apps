import 'package:flutter/foundation.dart';

@internal
class EmrOmniSearchController extends ChangeNotifier {
  String _text = '';

  String get text => _text;

  /// Sets the search text.
  /// This is a method so that in the future we could add functionality where
  /// modules could call this to update the text in the searchbar.
  void setText(String text) {
    if (_text == text) {
      return;
    }

    _text = text;
  }

  // Call listeners to perform a search.
  void search() => notifyListeners();
}
