import 'dart:convert';

import 'package:emr_account_registration/services/login_service.dart';
import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/services/azure_form_recogniser_service.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JourneyController with ChangeNotifier {
  static const String modelKey = 'SignupModel';

  final RunContext runContext;
  final AccountService accountService;
  final AzureFormRecogniserService azureFormRecogniserService;
  final MediaService mediaService;
  final StandingDataInterface standingDataService;
  final ChangeNotifyingService changeNotifyingService;

  static Map<String, String> roles = {};
  static Map<String, String> industryGroups = {};
  static Map<String, Enum$VisitFrequency> visitFrequencies = {};
  static Map<String, String> titles = {};

  // this model is used to allow storing the signup model just in a static variable instead of
  // shared preferences. this would be used only when useStaticModelForJourney is passed as true
  static SignupModel? _signupModel;

  JourneyController({
    required this.accountService,
    required this.azureFormRecogniserService,
    required this.mediaService,
    required this.standingDataService,
    required this.changeNotifyingService,
    required this.runContext,
  });

  late final UiAbstraction uiActions = UiAbstraction.getUiActions(runContext);

  late final ValidationService validationService = ValidationService(
    journeyController: this,
  );

  late final NavigationService navigationService = NavigationService(
    journeyController: this,
  );

  late final PaymentDetailsService paymentDetailsService =
      PaymentDetailsService(journeyController: this);

  late final DocumentService documentService = DocumentService(
    journeyController: this,
  );

  late final LoginService loginService = LoginService(journeyController: this);

  DataBindingService? _dataBindingInternal;

  late final DataBindingService _defaultDataBinding = DataBindingService(
    SignupModel(
      localeCountryCode: AccountRegistrationStrings.defaultCountry,
      localeLanguageCode: AccountRegistrationStrings.defaultCountry,
      runContext: runContext,
      currentStep: SignupStep.register,
    ),
    journeyController: this,
  );

  DataBindingService get dataBinding =>
      _dataBindingInternal ?? _defaultDataBinding;

  bool get isBankDetailsEdited => _isBankDetailsEdited;

  bool _processing = false;
  bool _isBankDetailsEdited = false;

  void startProcessing() {
    _processing = true;
    changeNotifyingService.notifyListenersInternal();
  }

  void endProcessing({bool notify = true}) {
    _processing = false;
    if (notify) {
      changeNotifyingService.notifyListenersInternal();
    }
  }

  void setBankDetailsEditStatus() {
    _isBankDetailsEdited = true;
    changeNotifyingService.notifyListenersInternal();
  }

  bool get isProcessing => _processing;

  static Future<SignupModel> initialize(
    Locale locale,
    RunContext runContext,
    BuildContext context, {
    bool useStaticModelForJourney = false,
  }) async {
    debugPrint('useStaticModelForJourney : $useStaticModelForJourney');
    var model = await _retrieveModel(
      useStaticModelForJourney: useStaticModelForJourney,
    );

    return _initialize(
      model,
      locale,
      runContext,
      context.mounted ? context : null,
      sanitizePhone: false,
    );
  }

  static Future<SignupModel> _initialize(
    SignupModel? model,
    Locale locale,
    RunContext runContext,
    BuildContext? context, {
    required bool sanitizePhone,
  }) async {
    await CountryData.populateCountries();

    final cntCode = locale.countryCode == 'GB' ? 'UK' : locale.countryCode;

    model ??= SignupModel(
      localeCountryCode: cntCode,
      localeLanguageCode: locale.languageCode,
      locatedAtCountryCode: cntCode,
      phoneNumberCountryCode: cntCode,
      currentStep: SignupStep.register,
      runContext: runContext,
    );

    final cnt = CountryData.getCountryData(model.getLocatedAtCountryCode());

    model.dialingCode = cnt?.dialingCode;

    if (sanitizePhone) {
      model.phoneNumberOriginal = model.phoneNumberOriginal?.replaceAll(
        model.dialingCode ?? '',
        '',
      );
      model.phoneNumber = model.phoneNumberOriginal;
    }

    await saveModel(model);

    if (!runContext.isPortal) {
      titles = await context?.coreApi.referenceData.getTitles() ?? {};
      roles = await context?.coreApi.referenceData.getSignupRoles() ?? {};
      industryGroups =
          await context?.coreApi.referenceData.getMapOfStringAndString(
            'SignupIndustryGroups',
          ) ??
          {};
      visitFrequencies =
          await context?.coreApi.referenceData.getVisitFrequencies() ?? {};
    }

    return model;
  }

  Future<SignupModel> loadExisting(
    String accountCode,
    Locale locale,
    RunContext runContext,
    BuildContext context,
  ) async {
    var model = await accountService.getSignupModel(accountCode, runContext);

    return _initialize(
      model,
      locale,
      runContext,
      context.mounted ? context : null,
      sanitizePhone: true,
    );
  }

  void refresh(SignupModel signupModel) {
    _dataBindingInternal = DataBindingService(
      signupModel,
      journeyController: this,
    );
  }

  static Future<SignupModel?> retrieveModel({
    bool useStaticModelForJourney = false,
  }) => _retrieveModel(useStaticModelForJourney: useStaticModelForJourney);

  static Future<SignupModel?> _retrieveModel({
    required bool useStaticModelForJourney,
  }) async {
    if (useStaticModelForJourney) {
      debugPrint('returning signup model from static field');
      return _signupModel;
    } else {
      debugPrint('returning signup model from shared prefs');
      var modelJson = await _get(modelKey);
      if (modelJson.isNotEmpty) {
        try {
          Map<String, dynamic> signupModelMap = jsonDecode(modelJson);
          return SignupModel.fromJson(signupModelMap);
        } catch (err) {
          LoggingService.logToConsole(err.toString());
          return null;
        }
      }
      return null;
    }
  }

  void notifyListenersInternal() {
    notifyListeners();
  }

  static Future<SignupModel> saveModel(SignupModel model) async {
    _signupModel = model;
    var modelJson = '{}';
    try {
      modelJson = jsonEncode(model.toJson());
    } catch (err) {
      LoggingService.logToConsole(err.toString());
    }

    await _set(modelKey, modelJson);

    return model;
  }

  static Future<void> resetModel() async {
    _signupModel = null;
    await _set(modelKey, '');
  }

  static Future<String> _get(String key, {String defaultValue = ''}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? defaultValue;
  }

  static Future<void> _set(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
}
