// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:emr_one_core/search/search.dart';

typedef EmrUtilGetTokenProvider = Future<String> Function();

/// A concrete implementation of [EmrUtilSuggestionProvider].
///
/// This implementation makes a http call to the CAM api to query possible
/// account matches and returns the results as a list of Strings.
///
/// This is a reference implementation intended to demonstrate how to create
/// a basic provider which calls an API. It is NOT intended to be used in
/// production apps, instead you should provide your own implementation
/// based on this.
class EmrCamPartySuggestionsProvider
    extends EmrUtilSuggestionBaseApiProvider<String> {
  EmrCamPartySuggestionsProvider();

  /// The URL for the CAM api (Development env).
  static const String kCamUri =
      'https://emr-account-management-dev.azurewebsites.net/graphql/';

  /// The GraphQL query string template to be used to fetch matching parties.
  static const String kAccountQuery = r'''
  {
      "query": "{ accounts(where: { accountNumber: { contains: \"<term>\" } }) { nodes { accountNumber } } }"
  } 
  ''';

  /// The [getSuggestions] is the method which must be implemented to get
  /// results from your source. It should asynchornously return a list of
  /// items matching your chosen type, in this case [String].
  @override
  Future<List<String>> getSuggestions(String query) async {
    final token = await getToken();

    final uri = Uri.parse(getCamUri());

    final response = await postData(uri, token, transformQuery(query));

    if (response.statusCode != 200) {
      // at this point deal with error, for demo purposes return empty
      return [];
    }

    return transformResults(response.body);
  }

  String transformQuery(String searchTerm) {
    return getCamQuery().replaceFirst('<term>', searchTerm);
  }

  List<String> transformResults(String rawResponse) {
    final parsed = jsonDecode(rawResponse);

    return parsed['data']['accounts']['nodes']
        .map<String>((Map<String, Object> x) => x['accountNumber']! as String)
        .toList() as List<String>;
  }

  String getCamUri() => kCamUri;

  String getCamQuery() => kAccountQuery;

  Future<String> getToken() => Future.value('');
}
