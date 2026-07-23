import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class Publication<T> {
  Publication({
    required this.id,
    required this.publicationName,
    required this.issueDate,
    this.grades = const [],
    this.yards = const [],
    this.depots = const [],
  });

  final int id;

  final String publicationName;

  final DateTime? issueDate;

  List<T> grades;

  List<Yard> yards;
  List<Depot> depots;
}
