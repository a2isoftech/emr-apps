class PageInfo {
  PageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    required this.startCursor,
    required this.endCursor,
  });

  PageInfo.fromJson(Map<String, dynamic> json) {
    hasNextPage = json['hasNextPage'] as bool;
    hasPreviousPage = json['hasPreviousPage'] as bool;
    startCursor = json['startCursor'] as String?;
    endCursor = json['endCursor'] as String?;
  }
  PageInfo.empty()
      : hasNextPage = false,
        hasPreviousPage = false,
        startCursor = null,
        endCursor = null;

  late bool hasNextPage;
  late bool hasPreviousPage;
  late String? startCursor;
  late String? endCursor;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['hasNextPage'] = hasNextPage;
    data['hasPreviousPage'] = hasPreviousPage;
    data['startCursor'] = startCursor;
    data['endCursor'] = endCursor;
    return data;
  }
}
