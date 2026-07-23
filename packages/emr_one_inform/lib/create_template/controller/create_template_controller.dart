import 'package:emr_one_inform/create_template/model/client.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/create_template/services/create_template_service.dart';
import 'package:emr_one_inform/models/adhoc_template.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/template_library_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

abstract class ICreateTemplateController extends BaseController {
  bool isTemplateParametersValid();
  Future<String> getNextTemplateNumber();
  String? declaration = '';
  String? doNotUseWarningMessage = '';
  bool isBusy = false;
  Future<String?> previewAdhocTemplate();
  Future<AdhocTemplate?> submitAdhocTemplate();
  Future<bool> checkReferenceId(String referenceId);
  void setIsDeclarationRequired({required bool value});
  void setdoNotUseWarningRequired({required bool value});
  Future<void> getClients();
  List<Client> clients = List.empty(growable: true);
  Future<void> getLists();
  List<FormList> lists = List.empty(growable: true);
  bool get isDeclarationRequired;
  bool get doNotUseWarning;
  CreateEditFormTemplate get template;
  Future<CreateEditFormTemplate> setTemplate(String? templateId);
  Widget? selectedQuestion;
}

class CreateTemplateController extends ICreateTemplateController {
  CreateTemplateController({
    required this.createTemplateService,
    required this.templateLibraryService,
  });

  final ICreateTemplateService createTemplateService;
  final TemplateLibraryService templateLibraryService;

  bool _isDeclarationRequired = false;
  bool _doNotUseWarning = false;
  CreateEditFormTemplate? _template;

  @override
  CreateEditFormTemplate get template => _template ?? CreateEditFormTemplate();

  @override
  bool get isDeclarationRequired => _isDeclarationRequired;
  
  @override
  bool get doNotUseWarning => _doNotUseWarning;

  @override
  Future<CreateEditFormTemplate> setTemplate(String? templateId) async {
    isBusy = true;
    notifyListeners();

    final template = (templateId?.isNotEmpty ?? false)
        ? await createTemplateService.getTemplateToEdit(templateId!)
        : null;
    _template = template ??
        CreateEditFormTemplate(
          id: 0,
          isEmailNotificationRequired: false,
          sendEmailOnFailedQuestions: false,
          isDigitalSignatureRequired: false,
          isQuickTemplate: false,
          uuid: const Uuid().v4(),
          validateBySignature: false,
          validateByWorkOrder: false,
          isPublished: false,
          template: CreateEditFormTemplateInfo(
            uuid: const Uuid().v4(),
            sections: List.empty(growable: true),
          ),
        );

    notifyListeners();

    return _template!;
  }

  @override
  Future<bool> checkReferenceId(String referenceId) async {
    return createTemplateService.checkReferenceId(referenceId);
  }

  @override
  Future<String?> previewAdhocTemplate() {
    return createTemplateService.fetchTemplateJson(_addDeclaration(template));
  }

  @override
  Future<AdhocTemplate?> submitAdhocTemplate() async {
    isBusy = true;
    notifyListeners();

    final adhocTemplate = await createTemplateService
        .createAdhocTemplate(_addDeclarationAndWarningLabel(template));

    isBusy = false;
    notifyListeners();
    return adhocTemplate;
  }

  CreateEditFormTemplate _addDeclarationAndWarningLabel(
    CreateEditFormTemplate originalTemplate,
  )
  {
    return _addDoNotUseWarning(_addDeclaration(template));
  }

  CreateEditFormTemplate _addDeclaration(
    CreateEditFormTemplate originalTemplate,
  ) {
    final template = CreateEditFormTemplate.fromJson(originalTemplate.toJson());
    if (_isDeclarationRequired) {
      template.template!.sections!.last.components!.add(
        Component(
          id: 'declaration',
          type: 'Declaration',
          message: declaration,
        ),
      );
    }
    return template;
  }

  CreateEditFormTemplate _addDoNotUseWarning(
    CreateEditFormTemplate originalTemplate,
  ) {
    final template = CreateEditFormTemplate.fromJson(originalTemplate.toJson());

      //  final doNotUseWarningSet = template.template!.sections!.where(
      //   (element) => element.components!
      //  .where((element) => element.showWarningLabel ?? false).isNotEmpty,);

        if(doNotUseWarningMessage != null && doNotUseWarningMessage!.isNotEmpty 
        && _doNotUseWarning)
        {
          template.template!.sections!.last.components!.add(
          Component(
            id: 'do-not-use-warning',
            type: 'Label',
            message: doNotUseWarningMessage,
            messageType: 'error',
          ),
          );
        }
    return template;
  }

  @override
  Future<String> getNextTemplateNumber() async {
    template.referenceId = await createTemplateService.getNextTemplateNumber();
    notifyListeners();
    return template.referenceId!;
  }

  @override
  bool isTemplateParametersValid() {
    if (template.referenceId == null) return false;

    return (template.title?.isNotEmpty ?? false) &&
        (template.referenceId?.isNotEmpty ?? false) &&
        (template.referenceId!.length > 3) &&
        template.clientId != null &&
        (template.template?.sections?.isNotEmpty ?? false) &&
        !template.template!.sections!.any((e) => !e.isValid());
  }

  @override
  void setIsDeclarationRequired({required bool value}) {
    _isDeclarationRequired = value;
    notifyListeners();
  }

   @override
  void setdoNotUseWarningRequired({required bool value}) {
    _doNotUseWarning = value;
    notifyListeners();
  }

  @override
  Future<void> getClients() async {
    isBusy = true;
    notifyListeners();

    clients = await templateLibraryService.getClients();

    isBusy = false;
    notifyListeners();
  }

  @override
  Future<void> getLists() async {
    isBusy = true;
    notifyListeners();

    lists = await createTemplateService.getLists();

    isBusy = false;
    notifyListeners();
  }
}
