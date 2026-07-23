import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/GetWorkOrderIds.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getAssets.graphql.dart';
import 'package:emr_one_inform/graphql/queries/users.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';

class CommonService implements ICommonService {
  CommonService({required this.httpClient});

  final ResilientHttpClient httpClient;

  @override
  Future<List<String>> getUsers(String searchText) async {
    if (searchText.length <= 2) return List.empty(growable: true);

    final results = await documentNodeQueryUsers.execute(
      httpClient,
      Query$Users.fromJson,
      variables: Variables$Query$Users(filter: searchText),
    );

    if (results.hasErrors() || results.data == null) {
      return [];
    }

    return results.data!.users
        .map((e) => User.fromJson(e.toJson()))
        .map((e) => e.displayName)
        .toList();
  }

  @override
  Future<List<String>> getWorkOrderIds({
    required String searchText,
    bool? filterForUser,
    List<int>? stateIds,
  }) async {
    if (searchText.length <= 2) return List.empty(growable: true);

    final result = await documentNodeQueryGetWorkOrderIds.execute(
      httpClient,
      Query$GetWorkOrderIds.fromJson,
      variables: Variables$Query$GetWorkOrderIds(
        searchPattern: searchText,
        filterForUser: filterForUser,
        stateIds: stateIds,
      ),
    );
    if (result.hasErrors() || result.data == null) return [];

    return result.data!.workOrderIds.toList();
  }

  @override
  Future<List<Asset>> getAssetByName(String searchText) async {
    if (searchText.length <= 2) return List.empty(growable: true);
    final result = await documentNodeQueryAssets.execute(
      httpClient,
      Query$Assets.fromJson,
      variables: Variables$Query$Assets(
        filter: Input$AssetQueryFilterInput(searchText: searchText),
      ),
    );
    if (result.hasErrors() || result.data == null) return [];
    return result.data!.assets.map((e) => Asset.fromJson(e.toJson())).toList();
  }
}
