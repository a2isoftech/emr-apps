import 'package:gql_exec/gql_exec.dart';

class GraphQLResponse<T> {
  GraphQLResponse({
    this.errors,
    this.data,
  });

  final List<GraphQLError>? errors;

  final T? data;
}
