// import 'package:emr_one_forms_engine/core/services/interfaces/iauthorization_provider.dart';
// import 'package:emr_one_forms_engine/core/services/interfaces/igraphql_client_service.dart'
//     as forms;
// import 'package:graphql_flutter/graphql_flutter.dart';

// class FormsGraphQLClient implements forms.IGraphQLClient {
//   late final GraphQLClient client;
//   final IAuthorizationProvider? authProvider;
//   static bool _refreshToken = false;

//   FormsGraphQLClient(String url, this.authProvider) {
//     Link link = HttpLink(url);

//     if (authProvider != null) {
//       link = AuthLink(getToken: () => _getAuthToken()).concat(link);
//     }

//     client = GraphQLClient(
//       cache: GraphQLCache(),
//       link: link,
//       defaultPolicies: DefaultPolicies(
//         query: Policies(fetch: FetchPolicy.noCache),
//       ),
//     );
//   }

//   Future<forms.QueryResult> _runQuery(QueryOptions options, bool retry) async {
//     try {
//       final result = await client.query(options);
//       return forms.QueryResult(result.data, result.exception?.toString());
//     } catch (ex) {
//       if (retry) {
//         _refreshToken = true;
//         return await _runQuery(options, false);
//       }
//       return forms.QueryResult(null, ex.toString());
//     }
//   }

//   @override
//   Future<forms.QueryResult> executeQuery(
//       {required String query, required Map<String, dynamic> variables}) async {
//     final options = QueryOptions(document: gql(query), variables: variables);
//     return await _runQuery(options, true);
//   }

//   Future<String> _getAuthToken() async {
//     final token = await authProvider!.getAuthorizationHeader(_refreshToken);
//     _refreshToken = false;
//     return token;
//   }
// }

// class GraphQLClientService implements forms.IGraphQLClientService {
//   final IAuthorizationProvider? authProvider;
//   final Map<String, FormsGraphQLClient?> _clientMap = {};

//   GraphQLClientService(this.authProvider);

//   @override
//   forms.IGraphQLClient getGraphQLClient(String url) {
//     var client = _clientMap[url];

//     if (client == null) {
//       client = FormsGraphQLClient(url, authProvider);
//       _clientMap[url] = client;
//     }

//     return client;
//   }

//   @override
//   Future<forms.QueryResult> executeQuery({
//     required String url,
//     required String query,
//     required Map<String, dynamic> variables,
//   }) =>
//       getGraphQLClient(url).executeQuery(query: query, variables: variables);
// }
