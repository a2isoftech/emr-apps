import 'package:emr_one_core/emr_one_core.dart';

extension GraphQLResponseExtensions<T> on GraphQLResponse<T> {
  String? get errorCode {
    if (errors == null || errors!.isEmpty) {
      return null;
    }
    return errors!
        .where((x) => x.extensions != null && x.extensions!.containsKey('code'))
        .firstOrNull
        ?.extensions?['code'] as String?;
  }
}
