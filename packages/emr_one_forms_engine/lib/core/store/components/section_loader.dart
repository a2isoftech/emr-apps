import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/core/models/api/asset_property.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/iuser_preference_repository.dart';
import 'package:emr_one_forms_engine/core/store/components/rating_component.dart';
import 'package:emr_one_forms_engine/core/store/form_store.dart';
import 'package:emr_one_forms_engine/core/store/store.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/graphql/AssetProperties.graphql.dart';

class ComponentRegistrationResult {
  final List<CapturedMediaDTO> capturedMediaToLoad;
  final List<FormComponent> components;

  ComponentRegistrationResult(this.components, this.capturedMediaToLoad);
}

/// Do this after data providers are registered
ComponentRegistrationResult finalizeAndLoadComponents(
    Iterable<TemplateComponentDTO> components, FormInstanceDTO? instanceData) {
  final List<CapturedMediaDTO> capturedMediaToLoad = [];

  final registrations = components.map<FormDataProviderRepoEntry>((e) {
    FormComponentInstanceDTO? data;
    if (instanceData != null) {
      data = instanceData.componentData
          .cast<FormComponentInstanceDTO?>()
          .firstWhere((d) => d?.componentId == e.id, orElse: () => null);
    }

    if (e is YesNoQuestionComponentDTO) {
      capturedMediaToLoad
          .addAll((data as YesNoQuestionInstanceDTO?)?.capturedMedia ?? []);

      return FormDataProviderRepoEntry(
          initialState: YesNoQuestionComponent.generateState(
              id: e.id, initialValue: data?.answer, notes: data?.notes),
          createProvider: (state) => YesNoQuestionComponent.forState(
              state: state,
              component: e,
              instanceData: data as YesNoQuestionInstanceDTO?));
    } else if (e is StaticLabelComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState: StaticLabelComponent.generateState(e.id),
          createProvider: (state) =>
              StaticLabelComponent.forState(state: state, component: e));
    } else if (e is UrlComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState: UrlComponent.generateState(e.id),
          createProvider: (state) =>
              UrlComponent.forState(state: state, component: e));
    } else if (e is TextInputComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState: TextInputComponent.generateState(e.id,
              initialValue: data?.answer),
          createProvider: (state) => TextInputComponent.forState(
              state: state,
              component: e,
              instanceData: data as TextInputInstanceDTO?));
    } else if (e is DatePickerComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState: DatePickerComponent.generateState(e.id),
          createProvider: (state) => DatePickerComponent.forState(
              state: state,
              component: e,
              instanceData: data as DatePickerInstanceDTO?));
    } else if (e is DropdownComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState:
              DropdownComponent.generateState(e.id, initialValue: data?.answer),
          createProvider: (state) => DropdownComponent.forState(
              state: state,
              component: e,
              instanceData: data as DropdownInstanceDTO?));
    } else if (e is DeclarationComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState: DeclarationComponent.generateState(e.id),
          createProvider: (state) => DeclarationComponent.forState(
              state: state,
              component: e,
              instanceData: data as DeclarationInstanceDTO?));
    } else if (e is CheckboxComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState:
              CheckboxComponent.generateState(e.id, initialValue: data?.answer),
          createProvider: (state) => CheckboxComponent.forState(
              state: state,
              component: e,
              instanceData: data as CheckboxInstanceDTO?));
    } else if (e is EmailComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState:
              EmailComponent.generateState(e.id, initialValue: data?.answer),
          createProvider: (state) => EmailComponent.forState(
              state: state,
              component: e,
              instanceData: data as EmailInstanceDTO?));
    } else if (e is PhoneComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState:
              PhoneComponent.generateState(e.id, initialValue: data?.answer),
          createProvider: (state) => PhoneComponent.forState(
              state: state,
              component: e,
              instanceData: data as PhoneInstanceDTO?));
    } else if (e is RatingComponentDTO) {
      return FormDataProviderRepoEntry(
          initialState:
              RatingComponent.generateState(e.id, initialValue: data?.answer),
          createProvider: (state) => RatingComponent.forState(
              state: state,
              component: e,
              instanceData: data as RatingInstanceDTO?));
    }

    throw Exception('${e.runtimeType} is not a supported component');
  }).toList();

  final repo = ServiceContainer().get<IFormDataProviderRepository>();
  repo.register(registrations);

  repo.initRegistrations();

  final componentList = repo.providers.whereType<FormComponent>().toList();

  return ComponentRegistrationResult(componentList, capturedMediaToLoad);
}

Future<void> loadCapturedMediaForComponents(
    String instanceId,
    List<CapturedMediaDTO> capturedMediaToLoad,
    List<FormComponent> componentList) async {
  if (capturedMediaToLoad.isNotEmpty) {
    FormsEngine()
        .log
        ?.call(FormsEngineTelemetry.kFormStore, {'message': 'Media detected'});
    final mediaService = ServiceContainer().get<IMediaService>();
    final media = await mediaService.loadMedia(
        instanceUuid: instanceId, media: capturedMediaToLoad);

    FormsEngine().log?.call(FormsEngineTelemetry.kFormStore,
        {'message': 'Updating media item in components'});
    for (var c in componentList) {
      c.addExistingMedia(
          media.where((e) => e.componentId == c.id && e.file != null));
    }
  }
}

Future<void> getMroValidators(
    FormTemplateDTO templateJson, FormStore store) async {
  var mroComponents =
      templateJson.components.where((e) => e.mroDataProvider != null);
  if (mroComponents.isEmpty) return;
  var components = mroComponents.first;
  var dataValidator = templateJson.dataProviders
      .where((e) => e.id == components.mroDataProvider?.id)
      .first as GraphQLQueryDataProviderDTO;
  final policy = SimplePolicy(dataValidator.url!);
  policy.timeout = const Duration(minutes: 10);
  policy.getToken = (ServiceContainer()
      .get<IAuthorizationProvider?>()
      ?.getSimpleAuthorizationToken)!;
  policy.shouldRetry = (retryContext) => Future.value(false);
  var client = ResilientHttpClient.withPolicy(
    policy,
  );
  if (store.assetCode != null && store.territoryCode != null) {
    var result = await documentNodeQuerygetProperty.execute(
        client, Query$getProperty.fromJson,
        variables: Variables$Query$getProperty(
            assetCode: store.assetCode!, territoryCode: store.territoryCode!));
    if (result.data != null) {
      List<AssetProperty> valList = result.data!.assetProperty
          .map((e) => AssetProperty.fromJson(e.toJson()))
          .toList();
      await ServiceContainer()
          .get<IUserPreferencesRepository>()
          .saveAssetPropertiesDataList(StringLiteral.MroValidationKey, valList);
    }
  }
}

List<FormSection> loadFormSections(
    {required Iterable<TemplateSectionDTO> sections,
    required List<FormComponent> componentList}) {
  final List<FormSection> sectionList = [];
  String errorMsg = '';

  for (var section in sections) {
    final formSection = FormSection(section.id, header: section.header);
    formSection.components = [];

    for (var id in section.componentIds) {
      final foundComponents = componentList.where((e) => e.id == id).toList();

      // sanity check to make sure expected components are not missing / duped
      if (foundComponents.isEmpty) {
        errorMsg += '$id does not exist in components. ';
      } else if (foundComponents.length > 1) {
        errorMsg += 'Multiple components with id $id exist. ';
      } else {
        formSection.components.add(foundComponents.first);
      }
    }

    sectionList.add(formSection);
  }

  if (errorMsg.isNotEmpty) {
    throw Exception('Error parsing components: $errorMsg'.trimRight());
  }

  // sanity check to make sure same component isn't in multiple sections
  final conflicts = sectionList
      .where((s) => sectionList.any((s2) =>
          s != s2 && s.components.any((sc) => s2.components.contains(sc))))
      .toList();

  if (conflicts.isNotEmpty) {
    throw Exception(
        'Same component id exists in multiple sections. See sections: ${conflicts.map((e) => '"${e.id}"').join(', ')}');
  }

  return sectionList;
}
