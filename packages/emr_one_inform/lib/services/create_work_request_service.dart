import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/graphql/queries/assets.graphql.dart';
import 'package:emr_one_inform/graphql/queries/depots.graphql.dart';
import 'package:emr_one_inform/graphql/queries/workRequestOptionsForDepot.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/asset_query_filter.dart';
import 'package:emr_one_inform/models/depot.dart';
import 'package:emr_one_inform/models/depot_query_filter.dart';
import 'package:emr_one_inform/models/new_work_request_media.dart';
import 'package:emr_one_inform/models/work_request_add_request.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

abstract class ICreateWorkRequestService {
  Future<bool> createWorkRequest(
    WorkRequestAddRequest workRequestAddRequest,
  );
  Future<List<Asset>> getAssets(AssetQueryFilter depotNo);
  Future<List<Depot>> getDepots(DepotQueryFilter filter);
  Future<List<Depot>> getWorkRequestOptionsForDepots(DepotQueryFilter filter);
  Future<bool> uploadNewWorkRequestMedia(
    NewWorkRequestMedia newWorkRequestMedia,
  );
}

class CreateWorkRequestService implements ICreateWorkRequestService {
  CreateWorkRequestService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  @override
  Future<bool> createWorkRequest(
    WorkRequestAddRequest workRequestAddRequest,
  ) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.newWorkRequest,
        ),
        body: json.encode(workRequestAddRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Map<String, dynamic> workRequestAddRequestToJson(
    WorkRequestAddRequest instance,
  ) =>
      <String, dynamic>{
        'newRequestId': instance.newRequestId,
        'description': instance.description,
        'notes': instance.notes,
        'assetId': instance.assetId,
        'requestType': instance.requestType,
        'serviceLevel': instance.serviceLevel,
        'faultSymptom': instance.faultSymptom,
        'media': instance.media?.map((e) => e.toJson()).toList(),
      };

  @override
  Future<List<Asset>> getAssets(AssetQueryFilter filter) async {
    final results = await documentNodeQueryAssets.execute(
      httpClient,
      Query$Assets.fromJson,
      variables: Variables$Query$Assets(
        filter: Input$AssetQueryFilterInput(
          assetCodes: filter.assetCodes,
          depotNos: filter.depotNos,
          searchText: filter.searchText,
          yardCodes: filter.yardCodes,
        ),
      ),
    );

    if (results.hasErrors() ||
        results.data == null ||
        results.data!.assets.isEmpty) {
      return [];
    }

    debugPrint(results.data?.assets.length.toString());

    return results.data!.assets.map((e) => Asset.fromJson(e.toJson())).toList();
  }

  @override
  Future<List<Depot>> getDepots(DepotQueryFilter filter) async {
    final results = await documentNodeQueryDepots.execute(
      httpClient,
      Query$Depots.fromJson,
      variables: Variables$Query$Depots(
        filter: Input$DepotQueryFilterInput(
          depotNos: filter.depotNos,
          searchText: filter.searchText,
          yardCodes: filter.yardCodes,
        ),
      ),
    );

    if (results.hasErrors() ||
        results.data == null ||
        results.data!.depots.isEmpty) {
      return [];
    }

    return results.data!.depots.map((e) => Depot.fromJson(e.toJson())).toList();
  }

  @override
  Future<List<Depot>> getWorkRequestOptionsForDepots(
    DepotQueryFilter filter,
  ) async {
    final results = await documentNodeQueryWorkRequestOptionsForDepot.execute(
      httpClient,
      Query$WorkRequestOptionsForDepot.fromJson,
      variables: Variables$Query$WorkRequestOptionsForDepot(
        filter: Input$DepotQueryFilterInput(
          depotNos: filter.depotNos,
          searchText: filter.searchText,
          yardCodes: filter.yardCodes,
        ),
      ),
    );

    if (results.hasErrors() ||
        results.data == null ||
        results.data!.depots.isEmpty) {
      return [];
    }

    return results.data!.depots.map((e) => Depot.fromJson(e.toJson())).toList();
  }

  @override
  Future<bool> uploadNewWorkRequestMedia(
    NewWorkRequestMedia newWorkRequestMedia,
  ) async {
    try {
      var baseUrl = httpClient.getUri().toString();
      if (baseUrl.endsWith('/')) {
        baseUrl = baseUrl.substring(0, baseUrl.length - 1);
      }
      return postMultipartFormData(
        '$baseUrl${FormAppApiPath.newWorkRequestMedia}',
        newWorkRequestMedia,
      );
    } catch (e) {
      return false;
    }
  }

  Future<bool> postMultipartFormData(
    String url,
    NewWorkRequestMedia body,
  ) async {
    final client = http.Client();

    try {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      );
      request.headers['accept'] = 'application/json';
      final authorization = await httpClient.getToken();

      if (authorization != null) {
        request.headers['authorization'] = 'Bearer $authorization';
      }

      String? mimeType;

      try {
        mimeType = lookupMimeType(body.file!.path);
      } catch (e) {
        // ignored
      }
      final multipartFile = http.MultipartFile.fromBytes(
        'MediaData',
        await body.file!.readAsBytes(),
        filename: body.file!.path.split('/').last,
        contentType: MediaType.parse(mimeType ?? body.file!.mimeType!),
      );
      request.files.add(multipartFile);
      request.fields['Id'] = body.id;
      request.headers['content-type'] = 'multipart/form-data';

      final response = await client.send(request);

      if (response.statusCode == 200) {
        return true;
      } else if (response.statusCode == 204) {
        return true;
      } else {
        throw HttpException(
          'Received status code ${response.statusCode} from server',
        );
      }
    } on SocketException {
      return false;
    } on HttpException {
      return false;
    } finally {
      client.close();
    }
  }
}
