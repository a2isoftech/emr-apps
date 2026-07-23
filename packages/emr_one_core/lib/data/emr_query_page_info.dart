/// A class to describe very simple pagination information.
class EmrQueryPageInfo {
  EmrQueryPageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  bool hasPreviousPage;
  bool hasNextPage;
}
