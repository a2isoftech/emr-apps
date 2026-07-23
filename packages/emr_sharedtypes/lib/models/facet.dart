class Facet {
  Facet({required this.key, this.value});

  String key;
  Value? value;
}

class Value {
  Value({this.name, this.values});

  String? name;
  List<Values>? values;
}

class Values {
  Values({this.range, this.count, this.name});

  String? range;
  int? count;
  String? name;
}
