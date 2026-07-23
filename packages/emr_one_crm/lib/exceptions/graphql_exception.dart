class GraphQLException implements Exception {
  const GraphQLException(this._operation) : super();

  final String _operation;

  String get message => 'Failure calling service $_operation';
}
