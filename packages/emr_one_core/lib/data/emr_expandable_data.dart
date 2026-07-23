/// A class that can be used with [EmrExpandableDataManager].
abstract class EmrExpandableData<T> {
  EmrExpandableData({
    this.visible = true,
    this.expanded,
    this.grouping = '',
    this.children = const [],
  });

  // A value used to group rows together.
  String grouping;

  // Whether the row is visible or not.
  bool visible;

  // If this is `null` the row can't be expanded. Otherwise this is its state.
  bool? expanded;

  // Child data.
  final List<T> children;
}
