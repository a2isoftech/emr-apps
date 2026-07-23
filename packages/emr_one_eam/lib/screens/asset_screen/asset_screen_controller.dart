import 'package:flutter/material.dart';

class AssetScreenController {
  final ValueNotifier<bool> isFullScreen = ValueNotifier(false);
  final ValueNotifier<int> selectedTabIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('Search');
  void setTabIndex(int? index) {
    selectedTabIndex.value = index ?? 0;
  }

  void setTitle(String newTitle) {
    title.value = newTitle.toUpperCase();
  }
}
