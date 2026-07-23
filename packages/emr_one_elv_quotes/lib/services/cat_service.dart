import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_elv_core/functions/decoder.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_quotes/models/api/response_models/techemet_cat_lookup_response.dart';
import 'package:http/http.dart';

class CatService {
  CatService({required this.client, required this.appConfig});

  final BaseClient client;
  final AppConfig appConfig;

  Future<ApiResponse<TechemetCatLookupResponse?>> getCats({
    required String vehicleReg,
    required String yardCode,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.catApiUrl}/api/CatLookup?VRM=$vehicleReg&YardCode=$yardCode',
    );

    final response = await client.get(endpoint);

    if (response.statusCode >= HttpStatus.badRequest ||
        !(response.body.isNotEmpty &&
            response.statusCode != HttpStatus.noContent)) {
      return ApiResponse.badRequest();
    }

    return ApiResponse(
      TechemetCatLookupResponse.fromJson(
        jsonDecode(await decodeBodyBytes(response)),
      ),
    );
  }
}
