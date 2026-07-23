class QueryResult {
  final Map<String, dynamic>? data;
  final String? error;

  bool get hasError => error != null;

  QueryResult(this.data, this.error);
}

abstract class IGraphQLClient {
  Future<QueryResult> executeQuery(
      {required String query, required Map<String, dynamic> variables});
}

abstract class IGraphQLClientService {
  IGraphQLClient getGraphQLClient(String url);

  Future<QueryResult> executeQuery({
    required String url,
    required String query,
    required Map<String, dynamic> variables,
  });
}
