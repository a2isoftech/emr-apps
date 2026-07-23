import 'dart:async';

import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/boolean_data_provider.dart';

import 'captured_media.dart';

abstract class IFormComponent {
  String get id;

  String? get value;

  bool isRequired = true;
  bool isSRRequired = false;
  String? answeredBy;
  String? answeredByUuid;
  DateTime? answeredDate;
  bool isValid = true;

  List<CapturedMedia> get capturedMedia;

  BooleanValueDataProvider? get visibilityProvider;

  Future<void> addExistingMedia(Iterable<CapturedMedia> media);

  Future<void> removeExistingMedia(Iterable<CapturedMedia> media);

  dynamic propertyValue(String propertyName);

  StreamSubscription addListener(void Function(String t) onChange,
      {bool emitCurrent = true});

  StreamSubscription addListenerForProperty(
      String propertyName, void Function(dynamic t) onChange,
      {bool emitCurrent = true});

  FormComponentInstanceDTO? getData();

  void changeValue(String text);

  void changePropertyValue(String propertyName, dynamic newValue);

  void dispose();

  IFormComponent();

  bool validate();

  String? validationMessage;

  DateTime? answeredDateLocal;
}
