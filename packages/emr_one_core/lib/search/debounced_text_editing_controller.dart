import 'dart:async';

import 'package:flutter/widgets.dart';

class DebouncedTextEditingController extends TextEditingController {
  DebouncedTextEditingController({
    this.debounceDelay = kDefaultDebounceDelay,
    String? text,
  }) {
    _value = TextEditingValue(text: text ?? '');
  }
  static const kDefaultDebounceDelay = 350;

  final int debounceDelay;

  TextEditingValue _value = TextEditingValue.empty;
  Timer? _debounce;

  @override
  TextEditingValue get value {
    return _value;
  }

  @override
  set value(TextEditingValue newValue) {
    // If only text selection changes, update the super value so the UI is
    // updated straight away.
    if (_value.text == newValue.text &&
        '${_value.selection}' != '${newValue.selection}') {
      _value = newValue;
      super.value = _value;

      return;
    }

    // Cancel an existing timer if there's one that hasn't yet been invoked.
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(Duration(milliseconds: debounceDelay), () {
      // Setting this causes the ValueNotifier to trigger.
      super.value = _value;
    });

    // Keep track of the changes so the UI updates immediately.
    _value = newValue;
  }
}
