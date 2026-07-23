import 'package:emr_one_core/widgets/pagination/emr_pagination.dart';

class PageControlEvents extends EmrPageControlEvents {
  PageControlEvents({required this.onPageChanged}) {
    pageSizes = [10, 15, 25, 50, 100];
    pageSize = 25;
    onPageSizeChange = onPageSizeChanged;
    onPressedEnd = hasNextPage ? onEndPressed : null;
    onPressedNext = onNextPressed;
    onPressedPrevious = onPreviousPressed;
    onPressedStart = hasPreviousPage ? onStartPressed : null;

    currentPageNumber = 1;
  }

  int pageCount = 1;

  bool hasNextPage = true;
  bool hasPreviousPage = true;

  void Function(int pageNumber, int pageSize) onPageChanged;

  void reset() {
    recordCount = 0;
    currentPageNumber = 1;
    pageCount = 1;
  }

  void update(int recordCount) {
    currentPageNumber = 1;
    this.recordCount = recordCount;
    pageCount = (recordCount / pageSize).ceil();
    onPageChange();
  }

  void onPageSizeChanged(int pageSize) {
    pageCount = (recordCount / pageSize).ceil();
    currentPageNumber = 1;
    this.pageSize = pageSize;
    onPageChange();
  }

  void onEndPressed() {
    if (currentPageNumber >= pageCount) return;
    currentPageNumber = pageCount;
    onPageChange();
  }

  void onNextPressed() {
    if (currentPageNumber >= pageCount) return;
    currentPageNumber++;
    onPageChange();
  }

  void onPreviousPressed() {
    if (currentPageNumber <= 1) return;
    currentPageNumber--;
    onPageChange();
  }

  void onStartPressed() {
    if (currentPageNumber <= 1) return;
    currentPageNumber = 1;
    onPageChange();
  }

  void onPageChange() {
    onPageChanged(currentPageNumber, pageSize);
  }
}
