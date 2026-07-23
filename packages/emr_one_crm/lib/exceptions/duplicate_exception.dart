class DuplicateException implements Exception {
  const DuplicateException(this._type, this._value) : super();

  final String _type;
  final String _value;

  String get message => "Duplicate $_type value '$_value'";
}
