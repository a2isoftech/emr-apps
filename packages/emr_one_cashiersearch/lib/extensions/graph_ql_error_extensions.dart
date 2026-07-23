import 'package:gql_exec/gql_exec.dart';

extension GraphQLErrorExtensions on GraphQLError {
  String? get code {
    final ext = extensions;
    if (ext == null) return null;
    if (ext['code'] is String) return ext['code'] as String;
    return null;
  }
}
