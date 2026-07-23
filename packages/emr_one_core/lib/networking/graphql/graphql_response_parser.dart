import 'dart:convert';

import 'package:emr_one_core/networking/graphql/networking_graphql.dart';
import 'package:gql_exec/gql_exec.dart';

class GraphQLResponseParser {
  /// Parse a response body.
  static GraphQLResponse<T> parseResponse<T>(
    String body,
    FromJson<T> fromJson,
  ) {
    try {
      final decodedBody = jsonDecode(body) as Map<String, dynamic>;
      final decodedBodyData =
          decodedBody['data'] as Map<String, dynamic>? ?? {};

      return GraphQLResponse<T>(
        errors: (decodedBody['errors'] as List?)
            ?.map(
              (dynamic error) => _parseError(error as Map<String, dynamic>),
            )
            .toList(),
        data: decodedBodyData.isNotEmpty ? fromJson(decodedBodyData) : null,
      );
    } catch (error) {
      return GraphQLResponse<T>(
        errors: [GraphQLError(message: error.toString())],
      );
    }
  }

  /// Parses a response error.
  static GraphQLError _parseError(Map<String, dynamic> error) => GraphQLError(
        message: error['message'] as String,
        path: error['path'] as List?,
        locations: (error['locations'] as List?)
            ?.map(
              (dynamic location) =>
                  _parseLocation(location as Map<String, dynamic>),
            )
            .toList(),
        extensions: error['extensions'] as Map<String, dynamic>?,
      );

  /// Parses a response error location.
  static ErrorLocation _parseLocation(Map<String, dynamic> location) =>
      ErrorLocation(
        line: location['line'] as int,
        column: location['column'] as int,
      );
}
