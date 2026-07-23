import 'package:flutter/cupertino.dart';

class EmrCardController {
  EmrCardController({
    bool selected = false,
  }) {
    isSelected = ValueNotifier(selected);
  }

  late final ValueNotifier<bool> isSelected;
}
