import 'dart:convert';

import 'package:emr_one_forms_engine/core/models/submit_parameters.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_keyed_value.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/value_data_provider.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:flutter/material.dart';

import 'components/section.dart';
import 'components/section_loader.dart';
import 'components/yes_no_question_component.dart';
import 'data_providers/data_provider_bloc/data_provider_bloc.dart';
import 'data_providers/data_provider_loader.dart';
import 'iform_store.dart';

// base store for the form state
class FormStore implements IFormStore {
  @override
  late final String title;
  @override
  String? instanceId;
  @override
  late final String templateId;
  @override
  InstanceJobData? jobInfo;
  @override
  late final String scheduledItemId;

  String? startedBy;
  String? startedByUuid;
  DateTime? startDate;
  String? submittedBy;
  String? submittedByUuid;
  DateTime? submittedDate;
  String? assetCode;
  String? territoryCode;

  DateTime? startDateLocal;
  DateTime? submittedDateLocal;

  CapturedMediaDTO? signature;
  List<String>? emailsToNotify;

  late final Map<String, IFormSection> _sections;
  late final Map<String, IFormComponent> _components;
  List<Future<dynamic>> _saveActions = [];

  static const String _failedQuestionsProviderId = 'failedQuestionsList';
  late final FormValuesDataProvider failedQuestionsProvider;
  late final List<FormDataKeyedProviderBloc> dropdownListProvider = [];
  late final List<FormDataKeyedProviderBloc> mroListProvider = [];

  FormStore._formStore();

  static Future<FormStore> create(
      FormTemplateDTO templateJson, String scheduledItemId,
      {FormInstanceDTO? instance,
      InstanceJobData? jobInfo,
      bool? isPreview}) async {
    FormsEngine().log?.call(FormsEngineTelemetry.kFormStore,
        {'message': 'setting attributes on formstore'});
    final store = FormStore._formStore();
    store.title = jobInfo?.workOrderDescription ?? templateJson.title;
    store.templateId = templateJson.uuid;
    store.jobInfo = jobInfo;
    store.scheduledItemId = scheduledItemId;
    store.assetCode = jobInfo?.assetCode;
    store.territoryCode = jobInfo?.territoryCode;

    if (instance != null) {
      FormsEngine().log?.call(FormsEngineTelemetry.kFormStore,
          {'message': 'setting instance data on formstore'});
      store.instanceId = instance.id;
      store.startedBy = instance.startedBy;
      store.startedByUuid = instance.startedByUuid;
      store.startDate = instance.startDate;
      store.submittedDate = instance.submitDate;
      store.submittedBy = instance.submittedBy;
      store.submittedByUuid = instance.submittedByUuid;
      store.startDateLocal = instance.startDateLocal;
      store.submittedDateLocal = instance.submitDateLocal;
    }

    final repo = ServiceContainer().get<IFormDataProviderRepository>();
    FormsEngine().log?.call(
        FormsEngineTelemetry.kFormStore, {'message': 'Registering providers'});
    repo.register(loadDataProviders(templateJson.dataProviders));

    repo.register([
      FormDataProviderRepoEntry(
          initialState: FormValuesDataProvider.generateState(
              _failedQuestionsProviderId, []),
          createProvider: (state) => FormValuesDataProvider.forState(state)),
    ]);

    FormsEngine().log?.call(
        FormsEngineTelemetry.kFormStore, {'message': 'Loading components'});
    final loadInfo =
        finalizeAndLoadComponents(templateJson.components, instance);

    FormsEngine().log?.call(
        FormsEngineTelemetry.kFormStore, {'message': 'Loading sections'});
    final loadedSections = loadFormSections(
        sections: templateJson.sections, componentList: loadInfo.components);

    store._sections = {for (var s in loadedSections) s.id: s};
    store._components = {for (var c in loadInfo.components) c.id: c};

    // persist the current instance if it was loaded
    if (instance != null) {
      final dbManager = ServiceContainer().get<IDatabaseManager>();
      final instanceDto = store.getInstanceData();
      FormsEngine().log?.call(FormsEngineTelemetry.kFormStore, {
        'message': 'Updating instance data in local db',
        'instanceId': instance.id,
        'scheduleId': scheduledItemId
      });
      if (isPreview == null || !isPreview) {
        await dbManager.insertFormInstance(
            jobInfo: jobInfo,
            uuid: instance.id,
            json: jsonEncode(instanceDto),
            scheduledItemId: scheduledItemId,
            isSubmitted: false,
            isNewInstance: false);
      }
    }

    // this is async and kicking it off here but not awaiting. see about moving
    // this if it's causing issues
    FormsEngine().log?.call(
        FormsEngineTelemetry.kFormStore, {'message': 'Loading media items'});
    await loadCapturedMediaForComponents(
        instance?.id ?? '', loadInfo.capturedMediaToLoad, loadInfo.components);

    // save the instance after captured media is loaded / fetched
    if (instance != null) {
      final dbManager = ServiceContainer().get<IDatabaseManager>();
      final instanceDto = store.getInstanceData();
      FormsEngine().log?.call(FormsEngineTelemetry.kFormStore,
          {'message': 'Updating instance data in local db'});
      if (isPreview == null || !isPreview) {
        await dbManager.insertFormInstance(
            jobInfo: jobInfo,
            uuid: instance.id,
            json: jsonEncode(instanceDto),
            scheduledItemId: scheduledItemId,
            isSubmitted: false,
            isNewInstance: false);
      }
    }

    FormsEngine().log?.call(
        FormsEngineTelemetry.kFormStore, {'message': 'Setting up providers'});
    store.failedQuestionsProvider = ServiceContainer()
        .get<IFormDataProviderRepository>()
        .getProvider(_failedQuestionsProviderId)! as FormValuesDataProvider;

    List<ValuesDataProviderDTO> dropdownDataProviders =
        templateJson.dataProviders.whereType<ValuesDataProviderDTO>().toList();
    for (var provider in dropdownDataProviders) {
      ServiceContainer()
              .get<IFormDataProviderRepository>()
              .getProvider(provider.id) ??
          store.dropdownListProvider.add(ServiceContainer()
              .get<IFormDataProviderRepository>()
              .getProvider(provider.id) as FormDataKeyedProviderBloc);
    }

    FormsEngine().log?.call(
        FormsEngineTelemetry.kFormStore, {'message': 'Getting MRO Validators'});
    await getMroValidators(templateJson, store);

    store._monitorChanges();

    return store;
  }

  @override
  bool validate() {
    bool formIsValid = true;

    for (var component in _components.values) {
      if (!component.validate()) {
        debugPrint(component.validationMessage);
        formIsValid = false;
      }
    }
    return formIsValid;
  }

  @override
  Future<void> submit(SubmitParameters params) async {
    if (validate()) {
      submittedBy = ServiceContainer().get<IFormConfiguration>().userName;
      submittedByUuid = ServiceContainer().get<IFormConfiguration>().userUuid;
      submittedDate = DateTime.now().toUtc();
      submittedDateLocal = DateTime.now().toLocal();
      signature = params.signature;
      emailsToNotify = params.emailsToNotify;

      await ServiceContainer()
          .get<ISaveFormInstanceService>()
          .save(submit: true, actions: [InstanceAuditHistory.submitted()]);
    }
  }

  @override
  FormDataProviderBloc getDataProvider(String id) {
    final repo = ServiceContainer().get<IFormDataProviderRepository>();
    final provider = repo.getProvider(id);

    if (provider == null) {
      throw Exception('Data provider with id "$id" does not exist');
    }

    return provider;
  }

  @override
  IFormComponent getComponent(String id) {
    final component = _components[id];
    if (component == null) {
      throw Exception('Component with id "$id" does not exist');
    }
    return component;
  }

  @override
  Iterable<IFormSection> get formSections =>
      _sections.entries.map((e) => e.value).toList();

  @override
  Future<void> dispose() async {
    for (var c in _components.entries) {
      c.value.dispose();
    }

    final repo = ServiceContainer().get<IFormDataProviderRepository>();
    await repo.dispose();
  }

  @override
  FormInstanceDTO getInstanceData() {
    instanceId ??=
        ServiceContainer().get<IUniqueIdGenerator>().generateUniqueId();
    startedBy ??= ServiceContainer().get<IFormConfiguration>().userName;
    startedByUuid ??= ServiceContainer().get<IFormConfiguration>().userUuid;
    startDate ??= DateTime.now().toUtc();
    startDateLocal ??= DateTime.now().toLocal();

    return FormInstanceDTO(
        id: instanceId!,
        templateId: templateId,
        startDate: startDate!,
        startedBy: startedBy!,
        startedByUuid: startedByUuid!,
        submitDate: submittedDate,
        submittedBy: submittedBy,
        submittedByUuid: submittedByUuid,
        startDateLocal: startDateLocal!,
        submitDateLocal: submittedDateLocal,
        signature: signature,
        emailsToNotify: emailsToNotify,
        componentData: _components.values
            .map((e) => e.getData())
            .where((e) => e != null)
            .map((e) => e!)
            .toList());
  }

  Future<void> _saveChanges(InstanceAuditHistory historyRecord) async {
    final saveService = ServiceContainer().get<ISaveFormInstanceService>();
    await saveService.save(actions: [historyRecord]);
  }

  void _monitorChanges() {
    for (var component in _components.values) {
      component.addListener((t) => _onComponentValueChanged(component, t),
          emitCurrent: false);

      if (component is YesNoQuestionComponent) {
        component.addListenerForProperty(
            YesNoQuestionProperties.notes,
            (t) => _saveActions.add(
                _saveChanges(InstanceAuditHistory.noteAdded(component.id, t))),
            emitCurrent: false);

        component.addListenerForProperty(
            YesNoQuestionProperties.capturedMedia,
            (t) => _saveActions.add(_saveChanges(
                InstanceAuditHistory.mediaCaptured(component.id, t))),
            emitCurrent: false);
      }
    }

    _emitFailedQuestions();
  }

  void _emitFailedQuestions() {
    final failedQuestions = _components.values
        .where((e) =>
            e is YesNoQuestionComponent &&
            e.value == YesNoQuestionAnswerValues.no &&
            (e.showWarningLabel != null && e.showWarningLabel == true))
        .toList();

    failedQuestionsProvider.add(ValueListChanged(
        values: failedQuestions
            .map((q) => ProviderKeyedValue(
                id: q.id, value: YesNoQuestionAnswerValues.no))
            .toList()));
  }

  void _onComponentValueChanged(IFormComponent component, String newValue) {
    _saveActions.add(_saveChanges(
        InstanceAuditHistory.valueChanged(component.id, newValue)));

    if (component is YesNoQuestionComponent) {
      _emitFailedQuestions();
    }
  }

  @override
  Future<void> waitForSave() async {
    while (_saveActions.isNotEmpty) {
      final currActions = _saveActions;
      _saveActions = [];
      await Future.wait(currActions);
    }
  }
}
