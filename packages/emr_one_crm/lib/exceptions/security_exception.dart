class SecurityException implements Exception {
  const SecurityException(this._operation) : super();

  final String _operation;

  String get message => 'Security does not allow $_operation';
}
