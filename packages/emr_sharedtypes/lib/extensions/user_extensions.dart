import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension UserExtensions on User {
  String get displayName => '$firstName $lastName'.trim();
}
