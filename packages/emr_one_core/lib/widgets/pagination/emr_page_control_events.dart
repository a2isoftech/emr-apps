import 'package:flutter/widgets.dart';

class EmrPageControlEvents {
  List<int> pageSizes = [];

  int currentPageNumber = 0;
  int recordCount = 0;
  int pageSize = 0;

  final ValueNotifier<bool> loading = ValueNotifier(true);

  void Function()? onPressedStart;
  void Function()? onPressedPrevious;
  void Function()? onPressedNext;
  void Function()? onPressedEnd;
  void Function(int pageSize)? onPageSizeChange;
}
