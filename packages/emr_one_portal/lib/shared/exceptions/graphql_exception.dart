class GraphQLException implements Exception{
GraphQLException(this.message);
final String message;

@override
  String toString() => message;
}
