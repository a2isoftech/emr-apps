
import 'package:emr_sharedtypes/models/models.dart';

class DocumentBase {
  DocumentBase({
    required this.id,
    required this.created,
    required this.modified,
    this.extendedProperties = const {},
    this.active = true,
  });

  final String id;

  Map<String, dynamic> extendedProperties;

  final bool active;

  final Created created;
  final Modified modified;
}
