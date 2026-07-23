import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_elv_core/functions/decoder.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:emr_one_elv_quotes/models/api/response_models/vehicle_search_result.dart';
import 'package:emr_one_elv_quotes/models/common_classes/api_models/api_exception.dart';
import 'package:emr_one_elv_quotes/models/common_classes/api_models/api_helper.dart';
import 'package:http/http.dart';

class VehicleService {
  VehicleService({
    required this.client,
    required this.appConfig,
    required this.territoryCode,
  });

  final BaseClient client;
  final AppConfig appConfig;
  final String territoryCode;

  Future<ApiResponse<List<VehicleDetail>?>> getVehicleAsync(
    VehicleLookupModel vehicleLookupModel,
  ) async {
    final endpoint = Uri.parse('${appConfig.quoteServiceApiUrl}'
        '/api/vehicles/lookup/');

    final body = vehicleLookupModel;
    final response = await client.post(endpoint, body: jsonEncode(body));
    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.serverFault();
    }

    final vehicleList = <VehicleDetail>[];
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final body = jsonDecode(response.body) as List<dynamic>;
      for (final vehicle in body) {
        final parsedVehicle = VehicleDetail.fromJson(
          vehicle,
        );

        if (parsedVehicle != null) {
          parsedVehicle.vehicleReg ??= '';
          vehicleList.add(
            parsedVehicle,
          );
        }
      }
    }
    if (vehicleList.isNotEmpty || response.body != '[]') {
      return ApiResponse(
        vehicleList,
      );
    }
    return ApiResponse(
      vehicleList,
      isOk: false,
      status: ResponseStatus.serverFault,
      errorMessage: (response.body.isEmpty || response.body == '[]')
          ? 'The Response body is Empty'
          : response.body,
    );
  }

  Future<VehicleSearchResult?> refineManualVehicleSearch(
    String make,
    String model,
    String vehicleIdentifier, {
    String? fuel,
    String? transmission,
    String? variant,
    String? bodyType,
    String? doors,
    String? year,
    String? engineSize,
  }) async {
    final path = '/api/vehicles/$make/$model';

    final queryParams = <QueryParam>[];

    queryParams.add(QueryParam('TerritoryCode', territoryCode));

    if (territoryCode == ElvTerritory.usa.territoryCode()) {
      queryParams.addAll(_queryParams('', 'Vin', vehicleIdentifier));
    } else {
      queryParams.addAll(_queryParams('', 'VehicleReg', vehicleIdentifier));
    }

    if (fuel != null) {
      queryParams.addAll(_queryParams('', 'Fuel', fuel));
    }
    if (transmission != null) {
      queryParams.addAll(_queryParams('', 'Transmission', transmission));
    }
    if (variant != null) {
      queryParams.addAll(_queryParams('', 'Variant', variant));
    }
    if (bodyType != null) {
      queryParams.addAll(_queryParams('', 'BodyType', bodyType));
    }
    if (doors != null) {
      queryParams.addAll(_queryParams('', 'Doors', doors));
    }
    if (year != null) {
      queryParams.addAll(_queryParams('', 'Year', year));
    }
    if (engineSize != null) {
      queryParams.addAll(_queryParams('', 'EngineSize', engineSize));
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('${appConfig.quoteServiceApiUrl}$path$queryString');

    final response = await client.get(uri);

    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return VehicleSearchResult.fromJson(
        jsonDecode(
          await decodeBodyBytes(response),
        ),
      );
    }
    return null;
  }

  Future<List<String>?> getModels(String make) async {
    final endpoint =
        '${appConfig.quoteServiceApiUrl}/api/vehicles/$make?TerritoryCode=$territoryCode';

    final response = await client.get(Uri.parse(endpoint));

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    }

    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await decodeBodyBytes(response);
      return (jsonDecode(responseBody) as List<dynamic>).cast<String>();
    }
    return null;
  }

  Future<List<String>?> getMakes() async {
    final endpoint =
        '${appConfig.quoteServiceApiUrl}/api/vehicles?TerritoryCode=$territoryCode';

    final response = await client.get(Uri.parse(endpoint));

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    }

    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await decodeBodyBytes(response);
      return (jsonDecode(responseBody) as List<dynamic>).cast<String>();
    }
    return null;
  }

  Iterable<QueryParam> _queryParams(
    String collectionFormat,
    String name,
    dynamic value,
  ) {
    assert(name.isNotEmpty, 'Parameter cannot be an empty string.');

    final params = <QueryParam>[];

    if (value is List) {
      if (collectionFormat == 'multi') {
        return value.map(
          (dynamic v) => QueryParam(name, parameterToString(v)),
        );
      }
    } else if (value != null) {
      params.add(QueryParam(name, parameterToString(value)));
    }

    return params;
  }

  Future<ApiResponse<bool>> updateVehicleWithShortVIN(
    VehicleDetail vehicleDescription,
    String territoryCode,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}'
      '/api/vehicles/updateVehicleWithShortVIN',
    );

    final body = {
      'vehicleDescription': vehicleDescription.toJson(),
      'territoryCode': territoryCode,
    };

    final response = await client.post(
      endpoint,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.serverFault();
    }

    return ApiResponse(true);
  }
}
