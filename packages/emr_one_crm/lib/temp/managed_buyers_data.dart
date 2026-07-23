import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_info/managed_buyer.dart';
import 'package:emr_one_crm/graphql/trader/queries/get_managed_buyers.graphql.dart';
import 'package:http/http.dart';

class ManagedBuyersData {
  static Future<List<ManagedBuyer>> getSuggestions(
    BaseClient client,
    UserInfoService userInfoService,
    AppConfig appConfig,
    String query, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(minutes: 5),
    bool forceLoad = false,
  }) async {
    cacheProvider ??=
        await SharedPrefsCacheProvider.createFromDefaultInstance();
    if (appConfig.useCAM) {
      return userInfoService.userInfo.managedBuyers;
    } else {
      final response = await documentNodeQueryGetManagedBuyers.execute(
        client,
        Query$GetManagedBuyers.fromJson,
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: forceLoad,
      );

      final pattern = RegExp(query, caseSensitive: false);

      if (!response.hasErrors()) {
        return response.data!.managedBuyers
            .where((e) => e.username.contains(pattern))
            .map(
              (e) => ManagedBuyer(username: e.username, azureId: e.azureId),
            )
            .toList();
      }
    }

    return [];
  }
}
