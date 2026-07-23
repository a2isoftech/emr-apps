import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:emr_one_elv_core/functions/decoder.dart';
import 'package:emr_one_elv_core/models/custom_quote_request_model.dart';
import 'package:emr_one_elv_core/models/quote_models/bundle_search_model.dart';
import 'package:emr_one_elv_core/models/quote_models/bundle_search_response.dart';
import 'package:emr_one_elv_quote_api/graphql/mutation/mutation.dart';
import 'package:emr_one_elv_quotes/models/api/request_models/create_batch_quote_request.dart';
import 'package:emr_one_elv_quotes/models/api/request_models/quick_known_vehicle_price_request.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:http/http.dart';
import 'package:universal_html/html.dart' as html hide Text;

class QuoteService {
  QuoteService({
    required this.client,
    required this.appConfig,
    required this.quoteServiceGraphQlClient,
  });

  final BaseClient client;
  final AppConfig appConfig;
  final ResilientHttpClient quoteServiceGraphQlClient;

  CancelableOperation<BatchQuoteSearchModel?>? searchQuoteHistoryAsyncOperation;

  //STILL IN USE FOR VIN SCRAP
  Future<ApiResponse<BatchQuoteModel?>> createBatchQuoteAsync({
    required int quoteId,
    required String accountNumber,
    required String quoteSource,
    CustomCollectionInformation? customCollectionInformation,
    List<VehicleDetail>? vehicles,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote',
    );

    final vehicleList = vehicles
        ?.map(
          (e) => QuoteToAttatchModel(
            vehicleId: e.id,
            configuration: VehicleConfiguration.defaultValues(),
          ),
        )
        .toList();

    final body = json.encode(
      CreateBatchQuoteRequest(
        quoteId: quoteId,
        accountNumber: accountNumber,
        customCollection: customCollectionInformation,
        quoteSource: quoteSource,
        additionalQuotes: vehicleList,
      ).toJson(),
    );

    final response = await client.post(endpoint, body: body);

    if (response.body.isNotEmpty &&
        jsonDecode(response.body) ==
            'Vehicle has already been received and cannot be used in a quote') {
      return ApiResponse(
        null,
        errorMessage: response.body,
        isOk: false,
        status: ResponseStatus.badRequest,
      );
    }

    if (response.statusCode >= HttpStatus.badRequest ||
        !(response.body.isNotEmpty &&
            response.statusCode != HttpStatus.noContent)) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(
      BatchQuoteModel.fromJson(jsonDecode(await decodeBodyBytes(response))),
    );
  }

  Future<ApiResponse<SpeculativeQuote?>> createSpeculativeQuote({
    required String yardCode,
    required String postcode,
    required VehicleConfiguration configuration,
    required VehicleDetail description,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/price/yard/'
      '$yardCode/vehicle/'
      '${description.id}',
    );

    final body = json.encode(
      QuickKnownVehiclePricingRequest(
        postcode: postcode,
        configuration: configuration,
      ).toJson(),
    );

    final response = await client.post(endpoint, body: body);

    if (response.body.isNotEmpty &&
        jsonDecode(response.body) ==
            'Vehicle has already been received and cannot be used in a quote') {
      return ApiResponse(
        null,
        errorMessage:
            '${description.id} ${description.make} ${description.model} '
            '\nVehicle has already been received and'
            ' cannot be used in a quote',
        isOk: false,
        status: ResponseStatus.badRequest,
      );
    }

    if (response.statusCode >= HttpStatus.badRequest ||
        !(response.body.isNotEmpty &&
            response.statusCode != HttpStatus.noContent)) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(
      SpeculativeQuote.fromJson(jsonDecode(await decodeBodyBytes(response))),
    );
  }

  Future<ApiResponse<BatchQuoteModel?>> confirmBatchQuoteAsync({
    required int batchQuoteId,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/$batchQuoteId/confirm',
    );

    final response = await client.post(endpoint);

    if (response.statusCode >= HttpStatus.internalServerError) {
      return ApiResponse(
        null,
        status: ResponseStatus.serverFault,
        errorMessage: response.body,
        isOk: false,
      );
    } else if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse(
        null,
        status: ResponseStatus.badRequest,
        errorMessage: response.body,
        isOk: false,
      );
    }

    return ApiResponse(
      BatchQuoteModel.fromJson(jsonDecode(await decodeBodyBytes(response))),
    );
  }

  Future<ApiResponse<BatchQuoteBundleResponse?>> newCreateBatchQuote({
    required CustomQuoteRequestModel body,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/customquote',
    );
    final formattedBody = body.toJson();
    final response = await client.post(
      endpoint,
      body: jsonEncode(formattedBody),
    );

    if (response.statusCode >= HttpStatus.internalServerError) {
      return ApiResponse(
        null,
        status: ResponseStatus.serverFault,
        errorMessage: response.body,
        isOk: false,
      );
    } else if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse(
        null,
        status: ResponseStatus.badRequest,
        errorMessage: response.body,
        isOk: false,
      );
    }

    final bundle = BatchQuoteBundleResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    return ApiResponse(bundle);
  }

  Future<ApiResponse<BatchQuoteBundleResponse?>> newSimpleCreateBatchQuote({
    required SimpleBundleRequestModel body,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/multiquote',
    );
    final formattedBody = body.toJson();
    final response = await client.post(
      endpoint,
      body: jsonEncode(formattedBody),
    );

    if (response.statusCode >= HttpStatus.internalServerError) {
      return ApiResponse(
        null,
        status: ResponseStatus.serverFault,
        errorMessage: response.body,
        isOk: false,
      );
    } else if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse(
        null,
        status: ResponseStatus.badRequest,
        errorMessage: response.body,
        isOk: false,
      );
    }

    final bundle = BatchQuoteBundleResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    return ApiResponse(bundle);
  }

  Future<ApiResponse<BatchQuoteModel?>> getBatchQuote(int batchQuoteId) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/$batchQuoteId',
    );

    final response = await client.get(endpoint);

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(
      BatchQuoteModel.fromJson(jsonDecode(await decodeBodyBytes(response))),
    );
  }

  Future<ApiResponse<BatchQuoteModel?>> updateCurbWeight({
    required int batchQuoteId,
    required int quoteId,
    required double curbWeight,
    required VehicleConfiguration vehicleConfiguration,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/'
      '$batchQuoteId/'
      'updatecurbweight/$quoteId/$curbWeight',
    );

    final response = await client.post(
      endpoint,
      body: jsonEncode(vehicleConfiguration),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }
    return ApiResponse(
      BatchQuoteModel.fromJson(jsonDecode(await decodeBodyBytes(response))),
    );
  }

  Future<ApiResponse<BatchQuoteModel?>> addAccountDetails(
    AccountDetails accountDetails,
    int batchQuoteId,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/accountdetails',
    );

    final body = {
      'accountNumber': accountDetails.accountNumber,
      'batchQuoteId': batchQuoteId,
      'email': accountDetails.email,
      'firstName': accountDetails.firstName,
      'lastName': accountDetails.lastName,
      'phoneNumber': accountDetails.contact,
    };

    final response = await client.post(endpoint, body: jsonEncode(body));

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(
      BatchQuoteModel.fromJson(jsonDecode(await decodeBodyBytes(response))),
    );
  }

  Future<void> downloadExcel(int batchQuoteId) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/$batchQuoteId/download-excel',
    );

    final response = await client.post(endpoint);

    if (response.statusCode == 200) {
      final blob = html.Blob([response.bodyBytes]);

      final anchorElement = html.AnchorElement(
        href: html.Url.createObjectUrlFromBlob(blob),
      );

      anchorElement.setAttribute('download', '$batchQuoteId.xlsx');
      anchorElement.click();
    } else {
      throw Exception('Failed to download Excel file');
    }
  }

  Future<void> quoteVsInspection(int quoteID) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/$quoteID/getQuoteVsInspectionPdf',
    );

    final response = await client.get(endpoint);

    if (response.statusCode == 200) {
      final blob = html.Blob([response.bodyBytes]);

      final anchorElement = html.AnchorElement(
        href: html.Url.createObjectUrlFromBlob(blob),
      );

      anchorElement.setAttribute(
        'download',
        'Quote Vs Inspection Report - $quoteID.pdf',
      );
      anchorElement.click();
      return;
    } else {
      throw Exception('Failed to download Quote Vs Inspection');
    }
  }

  Future<ApiResponse<String>> getRawInfo(
    String identifier,
    String territoryCode,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/rawInfo/$identifier/$territoryCode',
    );

    final response = await client.get(endpoint);

    try {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return ApiResponse(json['data'] as String);
    } catch (e) {
      Exception(e);
    }

    if (response.statusCode == 200) {
      return ApiResponse(response.body);
    } else {
      return ApiResponse.badRequest();
    }
  }

  Future<ApiResponse<BatchQuoteBundleResponse>> loadBatchQuoteBundle(
    String id,
  ) async {
    late final Response response;

    if (int.tryParse(id) != null) {
      response = await loadBatchQuoteViaBatchQuoteID(id);
    } else {
      response = await loadBatchQuoteViaBundleID(id);
    }
    final error = _errorCheckResponse<BatchQuoteBundleResponse>(response);
    if (error != null) {
      return error;
    }

    final bundle = BatchQuoteBundleResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    return ApiResponse(bundle);
  }

  Future<ApiResponse<BatchQuoteBundleResponse>> cloneBundle(
    String bundleID,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}'
      '/api/bundle/clonebybundleid/'
      '$bundleID',
    );

    final response = await client.get(endpoint);

    final error = _errorCheckResponse<BatchQuoteBundleResponse>(response);
    if (error != null) {
      return error;
    }

    final bundle = BatchQuoteBundleResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    return ApiResponse(bundle);
  }

  Future<ApiResponse<BundleSearchResponse>> searchBundles(
    BundleSearchModel searchModel,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}'
      '/api/search/batchquotes',
    );

    final body = searchModel.toJson();

    final response = await client.post(endpoint, body: json.encode(body));
    if (response.statusCode >= HttpStatus.internalServerError) {
      return ApiResponse(
        null,
        status: ResponseStatus.serverFault,
        errorMessage: response.body,
        isOk: false,
      );
    } else if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse(
        null,
        status: ResponseStatus.badRequest,
        errorMessage: response.body,
        isOk: false,
      );
    }

    final bundle = BundleSearchResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );

    return ApiResponse(bundle);
  }

  Future<Response> loadBatchQuoteViaBundleID(String batchQuoteBundleId) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}'
      '/api/bundle/retrievebybundleid/'
      '$batchQuoteBundleId',
    );

    return client.get(endpoint);
  }

  Future<Response> loadBatchQuoteViaBatchQuoteID(String batchQuoteId) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}'
      '/api/bundle/retrievebybatchquoteid/'
      '$batchQuoteId',
    );

    return client.get(endpoint);
  }

  Future<ApiResponse<List<LeadSource>?>> getLeadSourcesAsync() async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}'
      '/api/leadSources',
    );

    final response = await client.get(endpoint);

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.serverFault();
    }

    List<LeadSource>? leadSourceList;

    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      leadSourceList = (jsonDecode(response.body) as List)
          .map<LeadSource>(
            (item) => LeadSource.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return ApiResponse(leadSourceList);
    } else {
      return ApiResponse(
        leadSourceList,
        status: ResponseStatus.serverFault,
        errorMessage: response.body,
      );
    }
  }

  Future<List<LeadSource>?> loadLeadSources() async {
    final prefs = await SharedPreferences.getInstance();
    final yyyymm = '${DateTime.now().year}${DateTime.now().month}';
    final leadSourcesString = prefs.getStringList('$yyyymm-leadSources');

    if (leadSourcesString != null) {
      return leadSourcesString.map((leadSourceJson) {
        return LeadSource.fromJson(
          jsonDecode(leadSourceJson) as Map<String, dynamic>,
        );
      }).toList();
    }

    final leadSourcesResponse = await getLeadSourcesAsync();

    if (leadSourcesResponse.response == null) {
      return null;
    }

    await prefs.setStringList(
      '$yyyymm-leadSources',
      leadSourcesResponse.response!
          .map((ls) => jsonEncode(ls.toJson()))
          .toList(),
    );

    return leadSourcesResponse.response!;
  }

  Map<LeadSource, String> mapLeadSourcesToHashMap(
    List<LeadSource>? leadSources,
  ) {
    if (leadSources == null) {
      return {LeadSource(id: 0): ''};
    }

    return {
      LeadSource(id: 0): '',
      for (final lead in leadSources) lead: lead.name,
    };
  }

  Future<ApiResponse<BatchQuoteModel>> abandonBatchQuote({
    required int batchQuoteId,
    required String abandonReason,
    required String territoryCode,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/abandonBatchQuote/$batchQuoteId',
    );

    final body = <String, String>{
      'AbandonQuoteReason': abandonReason,
      'TerritoryCode': territoryCode,
    };

    final response = await client.post(endpoint, body: json.encode(body));

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }
    return ApiResponse(
      BatchQuoteModel.fromJson(jsonDecode(await decodeBodyBytes(response))),
    );
  }

  Future<ApiResponse<List<String>>> getAbandonReasons(
    String territoryCode,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final yyyymm = '${DateTime.now().year}${DateTime.now().month}';
    final abandonReasonsFromPrefs = prefs.getString(
      '$yyyymm-elvAbandonReasons-$territoryCode',
    );
    if (abandonReasonsFromPrefs != null && abandonReasonsFromPrefs.isNotEmpty) {
      final abandonReasonsList = List<String>.from(
        jsonDecode(abandonReasonsFromPrefs) as List,
      );
      if (abandonReasonsList.isNotEmpty) {
        return ApiResponse(abandonReasonsList);
      }
    }

    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}'
      '/api/batchquote/getQuoteAbandonReasons/$territoryCode',
    );

    final response = await client.get(endpoint);

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.serverFault();
    }

    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final abandonReasons = (jsonDecode(response.body) as List)
          .map((e) => e.toString())
          .toList();

      await prefs.setString(
        '$yyyymm-elvAbandonReasons-$territoryCode',
        jsonEncode(abandonReasons),
      );

      return ApiResponse(abandonReasons);
    } else {
      return ApiResponse(
        [],
        status: ResponseStatus.serverFault,
        errorMessage: response.body,
      );
    }
  }

  ApiResponse<T>? _errorCheckResponse<T>(Response response) {
    if (response.statusCode >= HttpStatus.internalServerError) {
      return ApiResponse(
        null,
        status: ResponseStatus.serverFault,
        errorMessage: response.body,
        isOk: false,
      );
    } else if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse(
        null,
        status: ResponseStatus.badRequest,
        errorMessage: response.body,
        isOk: false,
      );
    }
    return null;
  }

  Future<Uint8List?> getExistingImage(String path) async {
    final endpoint = appConfig.mediaApi;
    final token = await FirebaseLogin.getToken();
    final response = await client.get(
      Uri.parse('$endpoint/$path'),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode != 200) {
      return null;
    }
    return response.bodyBytes;
  }

  Future<bool> reopenInspection(int quoteId) async {
    final response = await documentNodeMutationReopenInspection.execute(
      quoteServiceGraphQlClient,
      Mutation$ReopenInspection.fromJson,
      variables: Variables$Mutation$ReopenInspection(quoteId: quoteId),
    );
    if (response.hasErrors()) {
      return false;
    }
    return response.data?.reopenInspection ?? false;
  }
}
