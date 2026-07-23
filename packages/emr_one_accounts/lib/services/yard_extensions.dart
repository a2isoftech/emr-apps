import 'package:emr_sharedtypes/models/yard.dart';

extension YardDisplayExtension on Yard {
  String get displayLabel => '$yardCode ($name)';
}
