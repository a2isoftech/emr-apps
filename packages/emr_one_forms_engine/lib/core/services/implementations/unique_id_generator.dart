import 'package:emr_one_forms_engine/core/services/interfaces/iunique_id_generator.dart';
import 'package:uuid/uuid.dart';

class UUIDGenerator implements IUniqueIdGenerator {
  static const _uuid = Uuid();

  @override
  String generateUniqueId() {
    return _uuid.v4();
  }
}
