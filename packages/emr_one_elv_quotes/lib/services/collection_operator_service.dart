import 'dart:convert';
import 'dart:io';

import 'package:emr_one_elv_core/functions/decoder.dart';
import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_core/models/quote_models/collection_detail.dart';
import 'package:emr_one_elv_core/models/quote_models/update_collection_detail.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:http/http.dart';

class CollectionOperatorService {
  CollectionOperatorService({required this.client, required this.appConfig});

  final BaseClient client;
  final AppConfig appConfig;

  Future<ApiResponse<List<CollectionOperator>>> _getCollectionOperatorsFromApi(
    String searchText,
    String territoryCode,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchQuote/getCollectionOperator/$territoryCode',
    );
    final response = await client.get(
      endpoint,
      headers: {'searchText': searchText},
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }
    return ApiResponse(
      CollectionOperator.parseCollectionOperators(
        await decodeBodyBytes(response),
      ),
    );
  }

  Future<List<CollectionOperator>> getCollectionOperators(
    String searchText,
    String territoryCode,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final yyyymm = '${DateTime.now().year}${DateTime.now().month}';
    final collectionOperatorFromPrefs = prefs.getString(
      '$yyyymm-elvCollectionOperators-$territoryCode',
    );
    if (collectionOperatorFromPrefs != null) {
      final collectionOperators = CollectionOperator.parseCollectionOperators(
        collectionOperatorFromPrefs,
      );
      return collectionOperators
          .where(
            (c) =>
                c.accountName.contains(searchText) ||
                c.accountNumber.contains(searchText),
          )
          .toList();
    }

    final collectionOperatorsFromApi = await _getCollectionOperatorsFromApi(
      searchText,
      territoryCode,
    );

    if (collectionOperatorsFromApi.isOk &&
        collectionOperatorsFromApi.response != null) {
      await prefs.setString(
        '$yyyymm-elvCollectionOperators-$territoryCode',
        jsonEncode(
          collectionOperatorsFromApi.response!
              .map<Map<String, dynamic>>((e) => e.toJson())
              .toList(),
        ),
      );
      return collectionOperatorsFromApi.response!
          .where(
            (c) =>
                searchText.isEmpty ||
                c.accountName.contains(searchText) ||
                c.accountNumber.contains(searchText),
          )
          .toList();
    }

    return [];
  }

  Future<ApiResponse<Map<String, List<CollectionOperator>>>>
  _getCollectionOperatorsByHaulagePriceMatrices(
    String territoryCode,
    String batchquoteBundleId,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchQuote/getCollectionOperatorsByHaulagePriceMatrices/$territoryCode/$batchquoteBundleId',
    );

    final response = await client.get(endpoint);

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }
    return ApiResponse(
      CollectionOperator.parseGroupedCollectionOperators(
        await decodeBodyBytes(response),
      ),
    );
  }

  Future<Map<String, List<CollectionOperator>>>
  getCollectionOperatorsByHaulagePriceMatrices({
    required String territoryCode,
    required String batchquoteBundleId,
  }) async {
    final collectionOperatorsFromApi =
        await _getCollectionOperatorsByHaulagePriceMatrices(
          territoryCode,
          batchquoteBundleId,
        );

    if (collectionOperatorsFromApi.isOk &&
        collectionOperatorsFromApi.response != null) {
      return collectionOperatorsFromApi.response!;
    }

    return {};
  }

  Future<ApiResponse<CollectionAndBankDetail>> updateCollectionDetail(
    int batchQuoteId,
    UpdateCollectionDetail updatedCollectionDetail,
    String territoryCode,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/updateCollectionForABatchQuote',
    );

    final requestJson = updatedCollectionDetail.toJson();
    requestJson['batchQuoteId'] = batchQuoteId;
    requestJson['territoryCode'] = territoryCode;

    final response = await client.post(endpoint, body: jsonEncode(requestJson));

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(
      CollectionAndBankDetail.fromJson(jsonDecode(response.body)),
    );
  }

  Future<ApiResponse<BankDetailAndNotes>> updateAccountBankDetailAndNotes({
    required int batchQuoteId,
    required String bankSortCode,
    required String bankAccountNumber,
    required String notes,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/updateBankDetailAndNotesForABatchQuote',
    );

    final requestJson = UpdateBankAndNotesRequest(
      batchQuoteId: batchQuoteId,
      bankSortCode: bankSortCode,
      bankAccountNumber: bankAccountNumber,
      notes: notes,
    ).toJson();

    final response = await client.post(endpoint, body: jsonEncode(requestJson));

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(BankDetailAndNotes.fromJson(jsonDecode(response.body)));
  }
}
