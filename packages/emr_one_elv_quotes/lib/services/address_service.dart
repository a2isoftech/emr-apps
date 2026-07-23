import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_elv_core/functions/decoder.dart';
import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_quotes/models/api/response_models/address_search_result.dart';
import 'package:http/http.dart';

class AddressService {
  AddressService({
    required this.client,
    required this.appConfig,
    required this.activeTerritory,
  });

  final BaseClient client;
  final AppConfig appConfig;
  final ElvTerritory activeTerritory;

  Future<ApiResponse<List<AddressSearchResult>>> findAsync(
    String text,
    int optimisticLimit,
  ) async {
    final countryCode = activeTerritory.addressLookupCountryCode();

    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/address?text=$text&optimisticLimit=100&countryCode=$countryCode',
    );

    final response = await client.get(endpoint);

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.serverFault();
    }

    return ApiResponse(
      _deserializeList(
        jsonDecode(await decodeBodyBytes(response)) as List<dynamic>,
      ).cast<AddressSearchResult>().toList(),
    );
  }

  Future<ApiResponse<Address?>> retrieveAsync(String id) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/address/$id',
    );

    final response = await client.get(endpoint);

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(
      Address.fromJson(
        jsonDecode(
          await decodeBodyBytes(response),
        ),
      ),
    );
  }

  List<dynamic> _deserializeList(List<dynamic> list) {
    return list.map<dynamic>(AddressSearchResult.fromJson).toList();
  }
}
