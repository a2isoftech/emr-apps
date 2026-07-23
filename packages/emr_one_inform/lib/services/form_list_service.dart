import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/graphql/queries/GetFormListById.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetFromLists.graphql.dart';
import 'package:emr_one_inform/models/api_result.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_model.dart';

abstract class IFormListService {}

class FormListService implements IFormListService {
  FormListService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  Future<List<FormList>> getLists({
    String? startDate,
    String? endDate,
    String? listName,
    String? createdBy,
  }) async {
    final result = await documentNodeQueryGetFormLists.execute(
      httpClient,
      Query$GetFormLists.fromJson,
      variables: Variables$Query$GetFormLists(
        startDate: startDate,
        endDate: endDate,
        listName: listName,
        createdBy: createdBy,
      ),
    );

    if (result.hasErrors()) return [];

    if (result.data == null) return [];

    return result.data!.formLists
        .map((e) => FormList.fromJson(e.toJson()))
        .toList();
  }

  Future<bool> createList({
    required CreateFormListRequest createFormListRequest,
  }) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.createFormList,
        ),
        body: json.encode(createFormListRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateList({
    required UpdateFormListRequest updateFormListRequest,
  }) async {
    try {
      final response = await httpClient.put(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.updateFormList,
        ),
        body: json.encode(updateFormListRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<APIResult?> deleteList(
    DeleteFormListRequest deleteListRequest,
  ) async {
    final response = await httpClient.delete(
      Uri(
        scheme: httpClient.getUri().scheme,
        host: httpClient.getUri().host,
        port: httpClient.getUri().port,
        path: FormAppApiPath.deleteFormList,
      ),
      body: json.encode(deleteListRequest),
    );
    if (response.statusCode == 200) {
      final apiResult = APIResult.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return apiResult;
    }
    return null;
  }

  Future<FormList?> getFormListById({required int listId}) async {
    final result = await documentNodeQueryGetListById.execute(
      httpClient,
      Query$GetListById.fromJson,
      variables: Variables$Query$GetListById(id: listId),
    );

    if (result.hasErrors() || result.data == null) return null;

    return FormList.fromJson(result.data!.listById!.toJson());
  }
}
