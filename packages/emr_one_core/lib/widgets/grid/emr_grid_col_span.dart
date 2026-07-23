/// Define that a cell should span multiple columns in an [EmrGrid].
/// This will usually be returned by the [EmrGrid.mergeColumns] callback.
class EmrGridColSpan {
  const EmrGridColSpan({required this.start, required this.span});

  final int start;
  final int span;
}
