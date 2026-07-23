import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/import_template/models/dropped_file.dart';
import 'package:emr_one_inform/import_template/models/list_item.dart';
import 'package:emr_one_inform/import_template/services/import_template_service.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/screens/template_library/template_library_models.dart';
import 'package:emr_one_inform/services/template_library_service.dart';
import 'package:flutter/foundation.dart';

class ImportTemplateController extends BaseController {
  ImportTemplateController({
    required this.service,
    required this.createTaskService,
    required this.templateLibraryService,
  });

  int? clientId;
  DroppedFile? templateToUpload;
  bool searchDisabled = true;
  late final Future<List<ListItem>> clients;
  bool isImportingTemplate = false;
  DateTime? effectiveDate;
  bool isValidateBySignature = false;
  bool isDigitalSignature = false;
  bool isValidateByWO = false;
  bool isEmailNotificationRequired = false;
  bool sendEmailOnFailedQuestions = false;
  bool isPublished = false;
  String? emailIds;
  String? assignFailedQuestionToTeamId;
  String? assignFailedQuestionToTeam;

  Team? selectedTeam;

  final TemplateLibraryService templateLibraryService;
  final ImportTemplateService service;
  final ICreateTaskService createTaskService;

  List<User> selectedUsers = List.empty(growable: true);

  void getClients() {
    clients = service.getClientsForDropdown();
  }

  Future<List<User>> getUsers(String filter) async {
    return createTaskService.getUsers(filter);
  }

  Future<List<Team>> getTeams(String searchText) async {
    return templateLibraryService.getTeams(searchText);
  }

  Future<String?> importTemplate() async {
    try {
      isImportingTemplate = true;
      notifyListeners();

      final errorMessage = await service.importTemplate(
        templateToUpload,
        templateToUpload!.name,
        clientId ?? (await clients).first.id,
        PatchTemplate(
          templateId: '',
          isDigitalSignatureRequired: isDigitalSignature,
          validateBySignature: isValidateBySignature,
          validateByWorkOrder: isValidateByWO,
          validateFrom: DateTime.now(),
          isEmailNotificationRequired: isEmailNotificationRequired,
          sendEmailOnFailedQuestions: sendEmailOnFailedQuestions,
          emailIds: emailIds,
          assignFailedQuestionToTeamId: assignFailedQuestionToTeamId,
          isPublished: isPublished,
        ),
      );

      if (errorMessage == null) {
        clientId = null;
        templateToUpload = null;
      }

      _validateButton();
      return errorMessage;
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }
      return 'An error has occurred-Template Update Failed';
    } finally {
      isImportingTemplate = false;
      notifyListeners();
    }
  }

  Future<void> setTemplate(DroppedFile? file) async {
    templateToUpload = file;

    final referenceId = templateToUpload?.name.split('.')[0];
    if (referenceId != null) {
      final client = await service.getClientByReferenceId(referenceId);
      if (client != null) {
        clientId = client.id;
        isDigitalSignature = client.isDigitalSignatureRequired ?? false;
        isValidateBySignature = client.validateBySignature ?? false;
        isValidateByWO = client.validateByWorkOrder ?? false;
        emailIds = client.emailIds;
        isEmailNotificationRequired =
            client.isEmailNotificationRequired ?? false;
        sendEmailOnFailedQuestions = client.sendEmailOnFailedQuestions ?? false;
        assignFailedQuestionToTeam = client.assignFailedQuestionToTeam;
        assignFailedQuestionToTeamId = client.assignFailedQuestionToTeamId;

        effectiveDate =
            DateTime.tryParse(client.validateFrom!.substring(0, 10));
      }
    }
    _validateButton();
  }

  void _validateButton() {
    final disabled = templateToUpload == null || clientId == null;
    if (disabled != searchDisabled) {
      searchDisabled = disabled;
    }
    reload();
  }

  void setClientId(int clientId) {
    this.clientId = clientId;
    _validateButton();
  }

  Future<String?> downloadTemplate() {
    return service.downloadTemplate();
  }
}
