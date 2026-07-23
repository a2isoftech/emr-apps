import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/getAssetByCode.graphql.dart';
import 'package:emr_one_inform/models/scanned_asset.dart';
import 'package:http/http.dart';

class ScannedAssetService {
  ScannedAssetService({
    required this.httpClient,
  });

  final Client httpClient;

  Future<ScannedAsset?> getAssetByCode(String assetCode) async {
    final results = await documentNodeQueryGetAssetByCode.execute(
      httpClient,
      Query$GetAssetByCode.fromJson,
      variables: Variables$Query$GetAssetByCode(assetCode: assetCode),
    );

    if (results.hasErrors() ||
        results.data == null ||
        results.data!.assetByCode == null) {
      return null;
    }

    return ScannedAsset.fromJson(results.data!.assetByCode!.toJson());
  }
}
