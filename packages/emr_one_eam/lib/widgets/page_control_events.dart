import 'package:emr_one_core/widgets/pagination/emr_pagination.dart';

class PageControlEvents extends EmrPageControlEvents {
  PageControlEvents({required this.onPageChanged}) {
    pageSizes = [5, 10, 15, 25, 50, 100];
    pageSize = 10;
    onPageSizeChange = onPageSizeChanged;
    onPressedEnd = onEndPressed;
    onPressedNext = onNextPressed;
    onPressedPrevious = onPreviousPressed;
    onPressedStart = onStartPressed;

    currentPageNumber = 1;
  }

  int pageCount = 1;
  String? startCursor;
  String? endCursor;

  void Function({String? after, String? before, int? first, int? last})
      onPageChanged;

  void reset() {
    startCursor = null;
    endCursor = null;
    recordCount = 0;
    currentPageNumber = 1;
    pageCount = 1;
  }

  void update(String? startCursor, String? endCursor, int recordCount) {
    this.startCursor = startCursor;
    this.endCursor = endCursor;
    this.recordCount = recordCount;
    pageCount = (recordCount / pageSize).ceil();
  }

  void onPageSizeChanged(int pageSize) {
    currentPageNumber = 1;
    this.pageSize = pageSize;
    onPageChanged(first: pageSize);
  }

  void onEndPressed() {
    currentPageNumber = pageCount;
    onPageChanged(last: recordCount % pageSize);
  }

  void onNextPressed() {
    if (currentPageNumber >= pageCount) return;
    currentPageNumber++;
    onPageChanged(
      after: endCursor,
      first: currentPageNumber == pageCount ? recordCount % pageSize : pageSize,
    );
  }

  void onPreviousPressed() {
    if (currentPageNumber <= 1) return;
    currentPageNumber--;
    onPageChanged(before: startCursor, last: pageSize);
  }

  void onStartPressed() {
    currentPageNumber = 1;
    onPageChanged(first: pageSize);
  }
}
