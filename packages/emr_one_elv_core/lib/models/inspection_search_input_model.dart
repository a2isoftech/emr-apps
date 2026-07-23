class InspectionSearchInput {
  InspectionSearchInput({
    required this.yardCode,
    required this.searchText,
  });
  final String yardCode;
  final String searchText;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};

    json['yardCode'] = yardCode;
    json['searchText'] = searchText;
    return json;
  }
}
