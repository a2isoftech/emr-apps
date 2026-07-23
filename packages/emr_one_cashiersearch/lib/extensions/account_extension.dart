import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';

extension AccountLocationExtension on AccountLocation {
  String get fts => '$code - $name';
}
