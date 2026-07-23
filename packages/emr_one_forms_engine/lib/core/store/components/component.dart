import 'dart:async';

import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/models/service/service_models.dart';
import 'package:emr_one_forms_engine/core/services/services.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/boolean_data_provider.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

abstract class FormComponent extends FormDataValueProviderBloc
    implements IFormComponent {
  @override
  String get id => state.id;

  @override
  bool isRequired = true;

  @override
  bool isSRRequired = false;

  @override
  String? answeredBy;

  @override
  String? answeredByUuid;

  @override
  DateTime? answeredDate;

  @override
  DateTime? answeredDateLocal;

  @override
  bool isValid = true;

  String? _visibilityProviderId;
  BooleanValueDataProvider? _visibilityProvider;

  @override
  BooleanValueDataProvider? get visibilityProvider {
    if (_visibilityProviderId != null) {
      _visibilityProvider = ServiceContainer()
          .get<IFormDataProviderRepository>()
          .getProvider(_visibilityProviderId!) as BooleanValueDataProvider?;
      _visibilityProviderId = null;
    }
    return _visibilityProvider;
  }

  final List<CapturedMedia> _capturedMedia = [];

  FormComponent.forState({
    required FormDataProviderState state,
    TemplateComponentDTO? component,
    FormComponentInstanceDTO? instanceData,
    bool? isValid,
  })  : answeredBy = instanceData?.answeredBy,
        answeredByUuid = instanceData?.answeredByUuid,
        answeredDate = instanceData?.answerDate,
        answeredDateLocal = instanceData?.answerDateLocal,
        super.forState(state) {
    if (component?.isRequired != null) {
      isRequired = component!.isRequired!;
    }

    if (component?.isSRRequired != null) {
      isSRRequired = component!.isSRRequired!;
    }

    if (isValid != null) {
      this.isValid = isValid;
    }

    if (component?.visibilityProvider != null) {
      _visibilityProviderId = component!.visibilityProvider!.id;
    }
  }

  static FormDataProviderState generateState(
          {required String id,
          String? value,
          Map<String, dynamic>? properties}) =>
      FormDataValueProviderBloc.generateState(
          id: id, initialValue: value, properties: properties);

  @override
  void changeValue(String newValue) {
    answeredBy = ServiceContainer().get<IFormConfiguration>().userName;
    answeredByUuid = ServiceContainer().get<IFormConfiguration>().userUuid;
    answeredDate = DateTime.now().toUtc();
    answeredDateLocal = DateTime.now().toLocal();
    add(ValueChanged(newValue: newValue));
  }

  @override
  void changePropertyValue(String propertyName, dynamic newValue) {
    if (!state.properties.containsKey(propertyName)) {
      throw Exception('$propertyName is not a member of $runtimeType');
    }
    add(PropertyChanged(propertyName: propertyName, newValue: newValue));
  }

  @override
  StreamSubscription addListenerForProperty(
      String propertyName, void Function(dynamic t) onChange,
      {bool emitCurrent = true}) {
    if (!state.properties.keys.contains(propertyName)) {
      throw Exception('Property $propertyName does not exist on component $id');
    }

    final s = listen(propertyName, onChange);

    if (emitCurrent && state.properties[propertyName] != null) {
      onChange(value);
    }

    return s;
  }

  @override
  StreamSubscription addListener(void Function(String t) onChange,
      {bool emitCurrent = true}) {
    final s = listenToValue(onChange);

    if (emitCurrent && value != null) {
      onChange(value!);
    }

    return s;
  }

  @override
  List<CapturedMedia> get capturedMedia => _capturedMedia;

  @override
  Future<void> addExistingMedia(Iterable<CapturedMedia> media) async {
    _capturedMedia.addAll(media);
  }

  @override
  Future<void> removeExistingMedia(Iterable<CapturedMedia> media) async {
    for (var item in media) {
      _capturedMedia.remove(item);
    }
  }

  @override
  void dispose() {}

  @override
  dynamic propertyValue(String propertyName) => state.properties[propertyName];
}
