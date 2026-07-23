import 'dart:convert';
import 'dart:io';

import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:http/http.dart';

class YardService {
  YardService({
    required this.client,
    required this.appConfig,
  });

  final BaseClient client;
  final AppConfig appConfig;

  Future<List<Yard>> getElvYardsFromUserYards(List<Yard> userYards) async {
    final yardsFromGeoLocation = await getGeoLocationYards();

    if (yardsFromGeoLocation.isEmpty) return userYards;

    final elvYards = userYards
        .where((element) => yardsFromGeoLocation.contains(element.yardCode))
        .toList();

    return elvYards;
  }

  Future<List<String>> getGeoLocationYards() async {
    final prefs = await SharedPreferences.getInstance();
    final yyyymm = '${DateTime.now().year}${DateTime.now().month}';
    final elvYards = prefs.getStringList('$yyyymm-elvYards');

    if (elvYards != null) return elvYards;

    final endpoint = '${appConfig.geolocationApiUrl}/api/yards/getAllYards';

    final response = await client.get(Uri.parse(endpoint));

    if (response.statusCode != 200) return [];

    final yards = (json.decode(response.body) as List<dynamic>)
        .map(GeoLocationYardClass.fromJson)
        .toList();

    if (yards.isEmpty) return [];

    final enabledYards = yards
        .where(
          (e) =>
              (e?.enabledForCollection ?? false) ||
              (e?.enabledForDelivery ?? false),
        )
        .toList();

    final yardCodes = enabledYards.map((e) => e!.yardCode).toList();

    await prefs.setStringList(
      '$yyyymm-elvYards',
      yardCodes,
    );

    return yardCodes;
  }

  Future<bool> isValidPostcode(String postcode) async {
    final endpoint =
        '${appConfig.geolocationApiUrl}/api/postcode-info?Postcode=$postcode';

    final response = await client.get(Uri.parse(endpoint));

    if (response.statusCode == HttpStatus.ok) {
      final postCodeInfo = jsonDecode(response.body) as Map<String, dynamic>;

      final isValidPostcode = postCodeInfo['isValid'] as bool;
      return isValidPostcode;
    } else {
      throw Exception(
        'Failed to validate postcode: '
        '${response.statusCode} - ${response.body}',
      );
    }
  }

  Future<List<PostcodeToYardDistanceResponseModel>?>
      findDistanceBetweenPostcode(
    String? postcode,
    List<String?>? yardCodes,
  ) async {
    if (postcode == null ||
        postcode.isEmpty ||
        yardCodes == null ||
        yardCodes.isEmpty) {
      return null;
    }

    final filteredYardCodeList =
        yardCodes.where((x) => (x ?? '').isNotEmpty).map((x) => x!).toList();

    final endpoint =
        '${appConfig.geolocationApiUrl}/api/postcode-info/getDistanceFromYard';

    final response = await client.post(
      Uri.parse(endpoint),
      body: jsonEncode(
        PostcodeToYardDistanceRequestModel(
          postcode: postcode,
          yardCodes: filteredYardCodeList,
        ),
      ),
    );

    if (response.statusCode == HttpStatus.ok) {
      final items = jsonDecode(response.body) as List;
      return items
          .map(
            (x) => PostcodeToYardDistanceResponseModel.fromJson(
              x as Map<String, dynamic>,
            ),
          )
          .toList();
    } else {
      throw Exception(
        'Failed to validate postcode: '
        '${response.statusCode} - ${response.body}',
      );
    }
  }
}

class GeoLocationYardClass {
  GeoLocationYardClass({
    required this.yardCode,
    required this.enabledForCollection,
    required this.enabledForDelivery,
  });
  String yardCode;
  bool enabledForCollection;
  bool enabledForDelivery;

  static GeoLocationYardClass? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GeoLocationYardClass(
        yardCode: json['yardCode'] as String,
        enabledForCollection: json['enabledForCollection'] as bool,
        enabledForDelivery: json['enabledForDelivery'] as bool,
      );
    }
    return null;
  }
}
