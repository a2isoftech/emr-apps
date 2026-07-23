class YardDetails {
  YardDetails({this.territory, this.companyCode, this.yardCode, this.yardName});

  YardDetails.fromJson(Map<String, dynamic> json) {
    territory = json['territory'] as String?;
    companyCode = json['companyCode'] as String?;
    yardCode = json['yardCode'] as String?;
    yardName = json['yardName'] as String?;
  }
  String? territory;
  String? companyCode;
  String? yardCode;
  String? yardName;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['territory'] = territory;
    data['companyCode'] = companyCode;
    data['yardCode'] = yardCode;
    data['yardName'] = yardName;
    return data;
  }
}
