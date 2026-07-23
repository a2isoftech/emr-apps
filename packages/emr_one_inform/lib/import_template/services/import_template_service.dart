import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/graphql/queries/clients.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getClientByReferenceId.graphql.dart';
import 'package:emr_one_inform/import_template/models/dropped_file.dart';
import 'package:emr_one_inform/import_template/models/list_item.dart';
import 'package:emr_one_inform/models/category.dart';
import 'package:emr_one_inform/screens/template_library/template_library_models.dart';
import 'package:http/http.dart' as http;
import 'package:universal_html/html.dart' as html;

class ImportTemplateService {
  ImportTemplateService({required this.httpClient});

  final ResilientHttpClient httpClient;

  Future<List<ListItem>> getClientsForDropdown() async {
    final result = await documentNodeQuerygetClients.execute(
      httpClient,
      Query$getClients.fromJson,
    );
    if (result.hasErrors()) return [];
    if (result.data == null) return [];
    return result.data!.clients
        .map((e) => ListItem(id: e.id, title: e.title))
        .toList();
  }

  Future<String?> importTemplate(
    DroppedFile? templateToUpload,
    String filename,
    int clientId,
    PatchTemplate templatePermissions,
  ) async {
    final multipartFile = http.MultipartFile(
      'xlsxFile',
      templateToUpload!.stream,
      templateToUpload.bytes,
      filename: filename,
    );

    var baseUrl = httpClient.getUri().toString();
    if (baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    final response = await uploadTemplateDefinition(
      url: '$baseUrl${FormAppApiPath.importTemplate}',
      clientId: clientId,
      multipartFile: multipartFile,
      templatePermissions: templatePermissions,
    );

    // var strResponse = await response.stream.bytesToString();
    if (response.statusCode == html.HttpStatus.unauthorized ||
        response.statusCode == html.HttpStatus.forbidden) {
      return 'You are not authorised to import templates.';
    }
    final message = json.decode(await response.stream.bytesToString())
        as Map<String, dynamic>;
    if (message['errorCode'] != null) return message['errorDetails'].toString();

    return null;
  }

  Future<Category?> getClientByReferenceId(String referenceId) async {
    final result = await documentNodeQueryGetClientByReferenceId.execute(
      httpClient,
      Query$GetClientByReferenceId.fromJson,
      variables:
          Variables$Query$GetClientByReferenceId(refereceId: referenceId),
    );

    if (result.hasErrors() || result.data?.clientByReferenceId == null) {
      return null;
    }

    return Category.fromJson(result.data!.clientByReferenceId!.toJson());
  }

  Future<http.StreamedResponse> uploadTemplateDefinition({
    required String url,
    required int clientId,
    required http.MultipartFile multipartFile,
    PatchTemplate? templatePermissions,
  }) async {
    http.StreamedResponse response;
    var doReattempt = false;

    do {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      );
      // final completer = Completer<http.StreamedResponse>();
      request.headers['accept'] = 'application/json';
      request.headers['content-type'] = 'multipart/form-data';
      request.headers['authorization'] =
          'Bearer ${await httpClient.getToken()}';

      request.fields['clientId'] = clientId.toString();
      request.fields['patchTemplateModel'] = jsonEncode(templatePermissions);

      request.files.add(multipartFile);

      response = await request.send();

      if (response.statusCode == html.HttpStatus.unauthorized ||
          response.statusCode == html.HttpStatus.forbidden) {
        return response;
      }

      // await completer.future;
      doReattempt =
          !doReattempt && (response.statusCode == html.HttpStatus.unauthorized);
    } while (doReattempt);

    return response;
  }

  Future<String?> downloadTemplate() async {
    final token = await httpClient.getToken();
    final headers = {
      'Authorization': 'Bearer $token',
      'content-disposition': 'attachment',
      'Accept': 'application/json',
      'content-type':
          'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    };

    var baseUrl = httpClient.getUri().toString();
    if (baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    final response = await http.Client().get(
      Uri.parse('$baseUrl${FormAppApiPath.downloadTemplate}'),
      headers: headers,
    );

    if (response.statusCode == html.HttpStatus.unauthorized ||
        response.statusCode == html.HttpStatus.forbidden) {
      return 'You are not authorised to access this option';
    }

    if (response.statusCode != 200) {
      return 'Failed to download import template. Status code'
          ' ${response.statusCode}.';
    }

    final base64 = base64Encode(response.bodyBytes);
    final anchor = html.AnchorElement(
      href:
          'data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,$base64',
    )..target = 'blank';
    anchor.download = 'Form Template Definition.xlsx';
    html.document.body?.append(anchor);
    anchor.click();
    anchor.remove();

    return null;
  }
}
