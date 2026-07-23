import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/graphql/queries/GetFromLists.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetTemplateJson.graphql.dart';
import 'package:emr_one_inform/graphql/queries/checkReferenceId.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getNextTemplateNumber.graphql.dart';
import 'package:emr_one_inform/graphql/queries/templateToEdit.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/adhoc_template.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_model.dart';

abstract class ICreateTemplateService {
  Future<bool> checkReferenceId(String referenceId);
  Future<AdhocTemplate?> createAdhocTemplate(
    CreateEditFormTemplate createEditFormTemplate,
  );
  Future<String> fetchTemplateJson(
    CreateEditFormTemplate createEditFormTemplate,
  );
  Future<String> getNextTemplateNumber();
  Future<bool> createFormList(CreateFormListRequest createFormList);
  Future<List<FormList>> getLists();
  Future<CreateEditFormTemplate?> getTemplateToEdit(String templateId);
}

class CreateTemplateService implements ICreateTemplateService {
  CreateTemplateService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  @override
  Future<bool> checkReferenceId(String referenceId) async {
    final results = await documentNodeQueryCheckReferenceId.execute(
      httpClient,
      Query$CheckReferenceId.fromJson,
      variables: Variables$Query$CheckReferenceId(referenceId: referenceId),
    );

    if (results.hasErrors() || results.data == null) {
      return false;
    }

    return results.data!.formTemplateReferenceId;
  }

  @override
  Future<AdhocTemplate?> createAdhocTemplate(
    CreateEditFormTemplate createEditFormTemplate,
  ) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.createAdhocWorkOrder,
        ),
        body: json.encode(createEditFormTemplate),
      );

      if (response.statusCode == 200) {
        final adhocTemplate = AdhocTemplate.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
        return adhocTemplate;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String> fetchTemplateJson(
    CreateEditFormTemplate createEditFormTemplate,
  ) async {
    try {
      final results = await documentNodeQueryGetTemplateJson.execute(
        httpClient,
        Query$GetTemplateJson.fromJson,
        variables: Variables$Query$GetTemplateJson(
          template: Input$CreateEditFormTemplateInput.fromJson(
            createEditFormTemplate.toJson(),
          ),
        ),
      );

      if (results.hasErrors() || results.data == null) {
        return '';
      }

      return results.data!.templateJson.value;
    } catch (e) {
      return '';
    }
  }

  @override
  Future<String> getNextTemplateNumber() async {
    try {
      final results = await documentNodeQueryGetNextTemplateNumber.execute(
        httpClient,
        Query$GetNextTemplateNumber.fromJson,
      );

      if (results.hasErrors() || results.data == null) {
        return '';
      }

      return results.data!.nextTemplateNumber.data;
    } catch (e) {
      return '';
    }
  }

  @override
  Future<bool> createFormList(CreateFormListRequest createFormList) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.createFormList,
        ),
        body: json.encode(createFormList),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<List<FormList>> getLists() async {
    try {
      final results = await documentNodeQueryGetFormLists.execute(
        httpClient,
        Query$GetFormLists.fromJson,
      );

      if (results.hasErrors() || results.data == null) {
        return [];
      }

      return results.data!.formLists
          .map((e) => FormList.fromJson(e.toJson()))
          .toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<CreateEditFormTemplate?> getTemplateToEdit(String templateId) async {
    final result = await documentNodeQueryGetTemplateToEdit.execute(
      httpClient,
      Query$GetTemplateToEdit.fromJson,
      variables: Variables$Query$GetTemplateToEdit(id: templateId),
    );

    if (result.hasErrors() || result.data == null) return null;
    return CreateEditFormTemplate.fromJson(
      result.data!.templateToEdit!.toJson(),
    );
  }
}
