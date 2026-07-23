import 'package:emr_one_forms_engine/core/services/services.dart';

import 'service_models.dart';

class InstanceAuditHistory {
  late final String actionId;
  final String componentId;
  final String action;
  final String? value;
  late final DateTime date;
  late final String userName;
  late final String userUuid;

  InstanceAuditHistory._internal(
      {required this.componentId, required this.action, this.value}) {
    actionId = ServiceContainer().get<IUniqueIdGenerator>().generateUniqueId();
    userName = ServiceContainer().get<IFormConfiguration>().userName;
    userUuid = ServiceContainer().get<IFormConfiguration>().userUuid;
    date = DateTime.now().toUtc();
  }

  factory InstanceAuditHistory.valueChanged(String componentId, String newValue,
          {String? actionId,
          String? userName,
          String? userUuid,
          DateTime? date}) =>
      InstanceAuditHistory._internal(
          componentId: componentId, action: 'ValueChanged', value: newValue);

  factory InstanceAuditHistory.mediaCaptured(
          String componentId, List<CapturedMedia> media) =>
      InstanceAuditHistory._internal(
          componentId: componentId,
          action: 'MediaCaptured',
          value: '${media.length} items added');

  factory InstanceAuditHistory.noteAdded(String componentId, String note) =>
      InstanceAuditHistory._internal(
          componentId: componentId, action: 'NoteAdded', value: note);

  factory InstanceAuditHistory.submitted() => InstanceAuditHistory._internal(
      componentId: 'submit-component', action: 'Submitted');
}
