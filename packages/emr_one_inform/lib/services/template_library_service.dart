import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/model/client.dart';
import 'package:emr_one_inform/graphql/mutation/DeleteTemplate.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetTeams.graphql.dart';
import 'package:emr_one_inform/graphql/queries/clients.graphql.dart';
import 'package:emr_one_inform/graphql/queries/formTemplateDocument.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getFormTemplateJson.graphql.dart';
import 'package:emr_one_inform/graphql/queries/templates.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/screens/template_library/template_library_models.dart';

class TemplateLibraryService {
  TemplateLibraryService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  Future<List<FormsTemplate>> getTemplates({
    required SearchQueryFilter filter,
  }) async {
    final result = await documentNodeQueryTemplates.execute(
      httpClient,
      Query$Templates.fromJson,
      variables: Variables$Query$Templates(
        filter: Input$SearchQueryFilterInput(
          searchText: filter.searchText,
          includeAll: filter.includeAll,
          clientNames: filter.clientNames,
          startDate: filter.startDate?.toIso8601String(),
          endDate: filter.endDate?.toIso8601String(),
          assetCode: filter.assetCode,
          jobId: filter.jobId,
          createdBy: filter.createdBy,
        ),
      ),
    );

    if (result.hasErrors() || result.data?.formTemplatesByName == null) {
      return [];
    }

    return result.data!.formTemplatesByName.map(_mapFormTemplates).toList();
  }

  FormsTemplate _mapFormTemplates(Query$Templates$formTemplatesByName data) =>
      FormsTemplate(
        id: data.id,
        title: data.title ?? '',
        referenceId: data.referenceId ?? '',
        clientName: data.clientName,
        createdBy: data.createdBy,
        createDate: DateTime.parse(data.createdDate),
        isDigitalSignatureRequired: data.isDigitalSignatureRequired,
        validateBySignature: data.validateBySignature,
        validateByWorkOrder: data.validateByWorkOrder,
        isEmailNotificationRequired: data.isEmailNotificationRequired,
        sendEmailOnFailedQuestions: data.sendEmailOnFailedQuestions,
        emailIds: data.emailIds,
        assignFailedQuestionToTeam: data.assignFailedQuestionToTeam,
        assignFailedQuestionToTeamId: data.assignFailedQuestionToTeamId,
        isPublished: data.isPublished,
        validateFrom: data.validateFrom == null
            ? null
            : DateTime.parse(data.validateFrom!).toLocal(),
        versions: data.versions
            ?.map(
              (e) => TemplateVersion(
                createdBy: e.createdBy,
                createdDate: DateTime.parse(e.createdDate),
                description: e.description,
                documentPath: e.documentPath,
                documentSchemaId: e.documentSchemaId,
                id: e.id,
                isActive: e.isActive,
                templateId: e.templateId,
                uuid: e.uuid,
                version: e.version,
              ),
            )
            .toList(),
      );

  Future<String?> getFormsTemplateJson({required String templateId}) async {
    final result = await documentNodeQueryGetFormTemplateJson.execute(
      httpClient,
      Query$GetFormTemplateJson.fromJson,
      variables: Variables$Query$GetFormTemplateJson(id: templateId),
    );

    if (result.hasErrors() || result.data == null) {
      return '';
    }

    return result.data!.formTemplateJson!.document;
  }

  Future<String?> getFormsTemplateJsonByVersion({
    required String templateId,
  }) async {
    final result = await documentNodeQueryFormTemplateDocument.execute(
      httpClient,
      Query$FormTemplateDocument.fromJson,
      variables: Variables$Query$FormTemplateDocument(id: templateId),
    );

    if (result.hasErrors() || result.data == null) {
      return '';
    }

    return result.data!.formTemplate!.document;
  }

  Future<List<Client>> getClients() async {
    final result = await documentNodeQuerygetClients.execute(
      httpClient,
      Query$getClients.fromJson,
    );

    if (result.hasErrors()) return [];

    if (result.data == null) return [];

    return result.data!.clients
        .where((e) => e.isActive && e.title != 'ONCE')
        .map((e) => Client.fromJson(e.toJson()))
        .toList();
  }

  Future<List<Team>> getTeams(String searchText) async {
    final result = await documentNodeQueryGetTeams.execute(
      httpClient,
      Query$GetTeams.fromJson,
      variables: Variables$Query$GetTeams(teamName: searchText),
    );

    if (result.hasErrors()) return [];

    if (result.data == null) return [];

    return result.data!.teams.map((e) => Team.fromJson(e.toJson())).toList();
  }

  Future<bool> patchTemplate(PatchTemplate value) async {
    try {
      final response = await httpClient.patch(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.patchTemplate,
        ),
        body: jsonEncode(value),
      );

      if (response.statusCode == 200) {
        final apiResponse = jsonDecode(response.body) as Map<String, dynamic>;
        if (apiResponse['errorLevel'] == 'Error') {
          return false;
        }
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<DeleteTemplateResponse> deleteTemplate(
    DeleteTemplateRequest deleteTemplateRequest,
  ) async {
    final response = await documentNodeMutationDeleteTemplate.execute(
      httpClient,
      Mutation$DeleteTemplate.fromJson,
      variables: Variables$Mutation$DeleteTemplate(
        deleteTemplateRequest: Input$DeleteTemplateRequestInput(
          uuid: deleteTemplateRequest.uuid!,
        ),
      ),
    );

    if (response.hasErrors()) {
      return DeleteTemplateResponse(
        errors: response.errors!.map((e) => e.message).toList(),
      );
    }
    return DeleteTemplateResponse(
      success: response.data?.deleteTemplate.errorLevel.name != 'ERROR',
    );
  }
}
