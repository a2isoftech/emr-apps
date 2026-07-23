import 'package:emr_one_core/widgets/pagination/emr_pagination.dart';
import 'package:flutter/widgets.dart';

abstract class EmrPagedDataSource<TRowData> extends EmrPageControlEvents {
  EmrPagedDataSource();

  Future<void> moveToStart();
  Future<void> moveToPrevious();
  Future<void> moveToNext();
  Future<void> moveToEnd();
  Future<void> pageSizeChange(int newPageSize);

  List<TRowData> loadedData = [];
  ValueNotifier<List<TRowData>> visibleData = ValueNotifier([]);

  void clearData() {
    loadedData = [];
    visibleData.value = [];
    recordCount = 0;
    currentPageNumber = 1;
    clearEvents();
  }

  void clearEvents() {
    onPressedStart = null;
    onPressedPrevious = null;
    onPressedNext = null;
    onPressedEnd = null;
  }

  void resetEvents() {
    //Enable / disable the page navigation depending on state of the data and
    //current page displayed
    onPageSizeChange = pageSizeChange;

    if (loadedData.isEmpty) {
      onPressedStart = null;
      onPressedPrevious = null;
      onPressedNext = null;
      onPressedEnd = null;
      return;
    }

    if (currentPageNumber <= 1) {
      onPressedStart = null;
      onPressedPrevious = null;
    } else {
      onPressedStart = moveToStart;
      onPressedPrevious = moveToPrevious;
    }

    if (currentPageNumber >= (recordCount / pageSize)) {
      onPressedEnd = null;
      onPressedNext = null;
    } else {
      onPressedEnd = moveToEnd;
      onPressedNext = moveToNext;
    }
  }
}
