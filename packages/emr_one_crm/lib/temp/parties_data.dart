import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/queries/queries.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:http/http.dart';

class PartyData {
  static Future<PaginatedResult<List<Account>>> getPartiesTradeR(
    BaseClient client,
    String? query, {
    int skip = 0,
    int take = 50,
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(minutes: 5),
    bool forceLoad = false,
    EmrFilterModel<String>? accountManagerFilter,
  }) async {
    cacheProvider ??=
        await SharedPrefsCacheProvider.createFromDefaultInstance();
    // Buyer parties search.
    if (accountManagerFilter != null) {
      final response = await documentNodeQueryPartySearchTradeRBuyers.execute(
        client,
        Query$PartySearchTradeRBuyers.fromJson,
        variables: Variables$Query$PartySearchTradeRBuyers(
          buyerId: accountManagerFilter.value!,
        ),
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: forceLoad,
      );

      if (!response.hasErrors() && response.data!.buyerParties.isNotEmpty) {
        return PaginatedResult(
          null,
          response.data!.buyerParties
              .where(
                (e) =>
                    e.party_account_no!.contains(
                      RegExp(
                        query ?? '.*',
                        caseSensitive: false,
                      ),
                    ) ||
                    e.party_name!.contains(
                      RegExp(
                        query ?? '.*',
                        caseSensitive: false,
                      ),
                    ),
              )
              .map(
                (e) => Account.simple('', e.party_account_no, e.party_name),
              )
              .toList(),
        );
      }

      return PaginatedResult(null, []);
    }

    // Managed parties search.
    final response = await documentNodeQueryPartySearchTradeR.execute(
      client,
      Query$PartySearchTradeR.fromJson,
      variables: Variables$Query$PartySearchTradeR(
        query: query ?? '',
        skip: skip,
        take: take,
      ),
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
    );

    if (!response.hasErrors() && response.data!.partiesManaged.isNotEmpty) {
      return PaginatedResult(
        null,
        response.data!.partiesManaged
            .map(
              (e) => Account.simple('', e.party_account_no, e.party_name),
            )
            .toList(),
      );
    }

    return PaginatedResult(null, []);
  }
}
