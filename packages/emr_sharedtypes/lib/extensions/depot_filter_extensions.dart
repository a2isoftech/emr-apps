import 'package:emr_sharedtypes/models/depot.dart';

extension DepotFilterExtensions on Future<List<Depot>> {
  Future<List<Depot>> filterGradeTypes(List<String> gradeTypes) async =>
      (await this)
          .where((depot) => gradeTypes.contains(depot.gradeType))
          .toList();
}
