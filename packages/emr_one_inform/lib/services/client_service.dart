import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/graphql/queries/clients.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getClientById.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getWorkOrderLifeCycleState.graphql.dart';
import 'package:emr_one_inform/models/api_result.dart';
import 'package:emr_one_inform/models/category.dart';
import 'package:emr_one_inform/screens/add_client/add_client_model.dart';

abstract class IClientService {}

class ClientService implements IClientService {
  ClientService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  Future<List<Category>> getClients({
    String? clientName,
    bool? isEditable,
    bool? isD365,
    bool? canSchedule,
  }) async {
    final result = await documentNodeQuerygetClients.execute(
      httpClient,
      Query$getClients.fromJson,
      variables: Variables$Query$getClients(
        clientName: clientName,
        isEditable: isEditable,
        isD365: isD365,
        canSchedule: canSchedule,
        
      ),
    );

    if (result.hasErrors()) return [];

    if (result.data == null) return [];

    return result.data!.clients
        .map(
          (e) => Category(
            id: e.id,
            title: e.title,
            isEditable: e.isEditable,
            isD365: e.isD365,
            isActive: e.isActive,
            canSchedule: e.canSchedule,
          ),
        )
        .where((e) => e.title != 'ONCE')
        .toList();
  }

  Future<APIResult?> createOrUpdateClient(
    SaveClientRequest saveClientRequest,
  ) async {
    final response = await httpClient.post(
      Uri(
        scheme: httpClient.getUri().scheme,
        host: httpClient.getUri().host,
        port: httpClient.getUri().port,
        path: FormAppApiPath.saveClient,
      ),
      body: json.encode(saveClientRequest),
    );
    if (response.statusCode == 200) {
      final apiResult = APIResult.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return apiResult;
    }
    return null;
  }

  Future<Category?> getClientById({required int clientId}) async {
    final result = await documentNodeQueryGetClientById.execute(
      httpClient,
      Query$GetClientById.fromJson,
      variables: Variables$Query$GetClientById(id: clientId),
    );

    if (result.hasErrors() || result.data == null) return null;

    return Category.fromJson(result.data!.clientById!.toJson());
  }

  Future<List<String>> getLifeCycleStates() async {
    final result = await documentNodeQueryGetLifeCycleStates.execute(
      httpClient,
      Query$GetLifeCycleStates.fromJson,
    );

    if (result.hasErrors() || result.data == null) return List.empty();
     return result.data!.lifeCycleStates;
  }
}
