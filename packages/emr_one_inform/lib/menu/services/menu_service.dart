import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/graphql/queries/GetWorkRequests.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getAssets.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getScheduledJobFormsForYard.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/refresh_assets.dart';

class MenuService {
  MenuService({required this.httpClient});

  final ResilientHttpClient httpClient;

  Future<void> refreshCMMS(String yardCode) async {
    final results = await documentNodeQueryGetScheduledJobFormsForYard.execute(
      httpClient,
      Query$GetScheduledJobFormsForYard.fromJson,
      variables: Variables$Query$GetScheduledJobFormsForYard(
        yardCode: yardCode,
        startDate: DateTime.now().toIso8601String(),
        endDate: DateTime.now().toIso8601String(),
        filterForUser: false,
        forcedUpdate: true,
      ),
    );

    if (results.hasErrors() || results.data == null) {
      return;
    }
  }

  Future<void> refreshWorkRequest(String yardCode) async {
    final results = await documentNodeQueryGetWorkRequests.execute(
      httpClient,
      Query$GetWorkRequests.fromJson,
      variables: Variables$Query$GetWorkRequests(
        filter: Input$WorkRequestQueryFilterInput(refreshFromD365: true),
      ),
    );

    if (results.hasErrors() || results.data == null) {
      return;
    }
  }

  Future<void> refreshAssets(RefreshAssetsRequest refreshAssetsRequest) async {
    final response = await httpClient.post(
      Uri(
        scheme: httpClient.getUri().scheme,
        host: httpClient.getUri().host,
        port: httpClient.getUri().port,
        path: FormAppApiPath.refreshAssets,
      ),
      body: json.encode(refreshAssetsRequest),
    );
    if (response.statusCode == 200) {
      // final apiResult = APIResult.fromJson(
      //   jsonDecode(response.body) as Map<String, dynamic>,
      // );
      return;
    }
    return;
  }

  Future<List<Asset>> getAssets({String? assetCode}) async {
    final results = await documentNodeQueryAssets.execute(
      httpClient,
      Query$Assets.fromJson,
      variables: Variables$Query$Assets(
        filter: Input$AssetQueryFilterInput(searchText: assetCode),
      ),
    );

    if (results.hasErrors() || results.data == null) {
      return [];
    }

    return results.data!.assets.map((e) => Asset.fromJson(e.toJson())).toList();
  }
}
