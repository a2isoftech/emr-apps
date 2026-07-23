import 'package:emr_one_forms_engine/core/models/service/service_models.dart';

import 'idisposable.dart';
import 'iinitializable.dart';

abstract class ISaveFormInstanceService implements IDisposable, IInitializable {
  Future<void> storeMedia(
      {required IFormComponent component, required List<CapturedMedia> media});

  Future<void> deleteMedia(
      {required IFormComponent component, required List<CapturedMedia> media});

  Future<void> save(
      {bool submit = false, required List<InstanceAuditHistory> actions});

  Future<void> upload({String instanceId});

  Future<void> uploadMediaToServer(String instanceId);
}
