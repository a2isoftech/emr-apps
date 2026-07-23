import 'dart:convert';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_crm/models/haulage_price.dart';
import 'package:emr_one_crm/models/haulage_price_matrix_api_response.dart';
import 'package:http/http.dart';

class HaulagePriceMatrixService {
  HaulagePriceMatrixService({
    required this.httpClient,
    required this.config,
  }) {
    if (config.haulagePriceMatrixBaseUrl.isEmpty) {
      throw Exception('haulagePriceMatrixBaseUrl not set in AppConfig');
    }
  }

  final BaseClient httpClient;
  final AppConfig config;

  Future<HaulagePrice?> getMaxHaulagePrice(
    String firstLocationCode,
    String secondLocationCode,
  ) async {
    final url =
        '${config.haulagePriceMatrixBaseUrl}/api/price/max?firstLocationCode=$firstLocationCode&secondLocationCodesCsv=$secondLocationCode';
    final response = await httpClient.get(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
      },
    );

    final x = jsonDecode(response.body) as Map<String, dynamic>;
    final apiResponse = HaulagePriceMatrixApiResponse.fromJson(x);

    return apiResponse.items;
  }

  Future<List<HaulagePrice>?> getHaulagePrice(
    String firstLocationCode,
    String secondLocationCode,
    String startDate,
    String endDate,
  ) async {
    final url =
        '${config.haulagePriceMatrixBaseUrl}/api/Price/queryHaulageRates';

    final body = {
      'FirstLocationCode': firstLocationCode,
      'SecondLocationCodes': [secondLocationCode],
      'StartDate': startDate,
      'EndDate': endDate,
    };

    final response = await httpClient.post(
      Uri.parse(url),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to fetch haulage price: '
        '${response.statusCode} ${response.body}',
      );
    }

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;

    final items = decoded['items'] as List<dynamic>;

    return items
        .map((e) => HaulagePrice.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
