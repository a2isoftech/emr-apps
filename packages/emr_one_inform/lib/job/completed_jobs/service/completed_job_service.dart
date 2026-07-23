import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/graphql/queries/completedJobs.graphql.dart';
import 'package:emr_one_inform/graphql/queries/exportPdfForCompletedJobs.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/job/completed_jobs/model/completed_form_instance_query_filter.dart';
import 'package:emr_one_inform/job/completed_jobs/model/completed_job.dart';
import 'package:emr_one_inform/job/completed_jobs/service/icompleted_job_service.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/paginated_result.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';

class CompletedJobsService implements ICompletedJobService {
  CompletedJobsService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  static const String loggerPrefix = '[CompletedJobsService] - ';

  @override
  Future<PaginatedResult<List<CompletedJob>?>> getCompletedJobs(
    CompletedFormInstanceQueryFilter filter,
    int first,
    String? after,
  ) async {
    final result = await documentNodeQueryCompletedJobs.execute(
      httpClient,
      Query$CompletedJobs.fromJson,
      variables: Variables$Query$CompletedJobs(
        first: first,
        after: after,
        filter: Input$CompletedFormInstanceQueryFilterInput(
          workOrderId: filter.workOrderId,
          yardCode: filter.yardCode,
          startDate: filter.startDate?.toIso8601String(),
          endDate: filter.endDate?.toIso8601String(),
          filterForUser: filter.filterForUser,
          assetCode: filter.assetCode,
          submittedBy: filter.submittedBy,
        ),
      ),
    );

    if (result.hasErrors()) {
      return Future.error(Exception(result.errors?.first.message));
    }

    if (result.data == null) {
      return Future.error(Exception(result.errors?.first.message));
    }

    if (result.data?.completedFormInstances?.nodes?.isEmpty ?? true) {
      return PaginatedResult(nextPageToken: '', items: [], hasNextPage: false);
    }

    final completedForms = result.data!.completedFormInstances!.nodes!
        .map(
          (e) => CompletedJob(
            assetCode: e.assetCode,
            assetName: e.assetName,
            companyCode: e.companyCode,
            jobTrade: e.jobTrade,
            jobType: e.jobType,
            jobTypeVariant: e.jobTypeVariant,
            startedBy: e.startedBy,
            submittedDate: e.submittedDate == null
                ? null
                : DateTime.parse(e.submittedDate!),
            workOrderDescription: e.workOrderDescription,
            workOrderId: e.workOrderId,
            yardCode: e.yardCode,
            depotNo: e.depotNo,
            template: FormTemplate.fromJson(e.template!.toJson()),
            scheduledItemId: e.scheduledItemId,
            scheduleItemType: e.scheduleItemType,
            validations: e.validations
                .map(
                  (x) => JobValidation(
                    validatedBy: x.validatedBy,
                    validatedOn: DateTime.parse(x.validatedOn),
                    status: x.status,
                    notes: x.notes,
                    referenceId: x.referenceId,
                  ),
                )
                .toList(),
            jobPriority: e.jobPriority,
            submittedBy: e.submittedBy,
            teamName: e.teamName,
            category: e.category,
          ),
        )
        .toList();
    final nextPageToken =
        result.data?.completedFormInstances?.pageInfo.endCursor;
    final hasNextPage =
        result.data?.completedFormInstances?.pageInfo.hasNextPage;
    return PaginatedResult(
      nextPageToken: nextPageToken,
      items: completedForms,
      hasNextPage: hasNextPage!,
    );
  }

  @override
  Future<Uint8List> downloadPDF(
    String url,
    String workOrderId,
    String companyCode,
  ) async {
    try {
      final path = url + workOrderId;
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: path,
          queryParameters: {'cmpcode': companyCode},
        ),
        body: '{}',
      );

      if (response.statusCode != 200) {
        throw Exception('Could not get the file.');
      }
      return response.bodyBytes;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> exportPDFs(List<String> workOrderIds) async {
    if (!(await isStoragePermissionGranted())) {
      throw Exception('Permission denied');
    }

    final base64String = await downloadZipFile(workOrderIds);
    final bytes = base64.decode(base64String);
    final path = await _getDownloadDirectory();
    final dateTimeStamp =
        DateFormat('yyyy-MM-dd_HH-mm-ss').format(DateTime.now());
    final file = File('$path/Export-$dateTimeStamp.zip');
    await file.writeAsBytes(bytes, flush: true);

    return file.path;
  }

  Future<bool> isStoragePermissionGranted() async {
    if (Platform.isIOS) {
      return true;
    }

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt >= 30) {
      if (await Permission.manageExternalStorage.isGranted) return true;
      if (await Permission.manageExternalStorage.isPermanentlyDenied) {
        return false;
      }
      return Permission.manageExternalStorage.request().isGranted;
    }

    if (await Permission.storage.isGranted) return true;
    if (await Permission.storage.isPermanentlyDenied) return false;
    return Permission.storage.request().isGranted;
  }

  Future<String> _getDownloadDirectory() async {
    if (Platform.isIOS) {
      return (await getApplicationDocumentsDirectory()).path;
    }

    final dir = await getExternalStorageDirectory();
    final splits = dir!.path.split('/');
    // var constructedPath = '';
    final constructedPath = StringBuffer();
    for (final element in splits) {
      if (element.isEmpty) continue;

      if (element == 'Android') {
        // constructedPath += '/Download';
        constructedPath.write('/Download');

        if (!Directory(constructedPath.toString()).existsSync()) {
          Directory(constructedPath.toString()).createSync(recursive: true);
        }

        // if (!(await Directory(constructedPath.toString()).exists())) {
        //  await Directory(constructedPath.toString()).create(recursive: true);
        // }
        break;
      }
      // constructedPath += '/$element';
      constructedPath.write('/$element');
    }
    // return constructedPath;
    return constructedPath.toString();
  }

  Future<String> downloadZipFile(List<String> workOrderIds) async {
    final result = await documentNodeQueryExportPdfForCompletedJobs.execute(
      httpClient,
      Query$ExportPdfForCompletedJobs.fromJson,
      variables: Variables$Query$ExportPdfForCompletedJobs(
        filter: Input$ExportPdfForCompletedJobsFilterInput(
          workOrderIds: workOrderIds,
        ),
      ),
    );

    if (result.hasErrors()) {
      throw Exception('Error');
    }

    if (result.data == null) {
      throw Exception('Error');
    }

    return result.data!.exportPdfForCompletedJobs.zipFileAsBase64;
  }

  @override
  Future<void> validateBySignature(
    String workOrderId,
    Uint8List stream,
    String notes,
  ) async {
    var uri = httpClient.getUri().toString();
    if (uri.endsWith('/')) uri = uri.substring(0, uri.length - 1);
    await postMultipartFormData(
      '$uri${FormAppApiPath.validateBySignature}',
      workOrderId,
      stream,
      notes,
    );
  }

  Future<bool> postMultipartFormData(
    String url,
    String workOrderId,
    Uint8List stream,
    String notes,
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

      const mimeType = 'image/png';

      final multipartFile = http.MultipartFile.fromBytes(
        'MediaData',
        stream,
        filename: const Uuid().v4(),
        contentType: MediaType.parse(mimeType),
      );
      request.files.add(multipartFile);
      request.fields['Id'] = workOrderId;
      request.fields['Notes'] = notes;
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
