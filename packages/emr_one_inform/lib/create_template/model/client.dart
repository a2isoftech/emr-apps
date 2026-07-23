class Client {
  Client({
    this.id,
    this.title,
    this.isEditable,
    this.isD365,
    this.isActive,
    this.defaultWorkRequestType,
    this.canSchedule,
  });

  Client.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    title = json['title'] as String?;
    isEditable = json['isEditable'] as bool?;
    isD365 = json['isD365'] as bool?;
    isActive = json['isActive'] as bool?;
    defaultWorkRequestType = json['defaultWorkRequestType'] as String?;
    canSchedule = json['canSchedule'] as bool?;
  }
  int? id;
  String? title;
  bool? isEditable;
  bool? isD365;
  bool? isActive;
  String? defaultWorkRequestType;
  bool? canSchedule;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['isEditable'] = isEditable;
    data['isD365'] = isD365;
    data['isActive'] = isActive;
    data['defaultWorkRequestType'] = defaultWorkRequestType;
    data['canSchedule'] = canSchedule;
    return data;
  }
}
