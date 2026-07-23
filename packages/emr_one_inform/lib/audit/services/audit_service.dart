import 'package:emr_one_core/networking/networking.dart';
import 'package:emr_one_inform/graphql/queries/getFormInstanceAuditLogs.graphql.dart';
import 'package:emr_one_inform/models/form_instance.dart';
import 'package:emr_one_inform/models/form_instance_status_log.dart';

// ignore: one_member_abstracts
abstract class IAuditService {
   Future<List<FormInstanceStatusLog>?> getLogs(
    String? instanceId, );
     Future<FormInstance?> getInstanceLogs(
    String? instanceId, );
}

class AuditService extends IAuditService {
   AuditService({required this.httpClient});

  final ResilientHttpClient httpClient;
  
  @override
  Future<List<FormInstanceStatusLog>?> getLogs(String? instanceId) async {
     final results = await documentNodeQueryFormInstanceStatusLogs.execute(
          httpClient,
          Query$FormInstanceStatusLogs.fromJson,
          variables: Variables$Query$FormInstanceStatusLogs(id: instanceId!),
        );

    if (results.hasErrors()) {
      return Future.error(Exception(results.errors?.first.message));
    }

    if (results.data == null) {
      return Future.error(Exception(results.errors?.first.message));
    }
     if (results.data?.formInstance!.logs?.isEmpty ?? true) {
      return null;
    }

    final logs = results.data!.formInstance!.logs!
        .map(
          (e) => FormInstanceStatusLog.fromJson(e.toJson()),
        )
        .toList();
    return logs;
  }
  
  @override
  Future<FormInstance?> getInstanceLogs(String? instanceId) async {
     final results = await documentNodeQueryFormInstanceStatusLogs.execute(
          httpClient,
          Query$FormInstanceStatusLogs.fromJson,
          variables: Variables$Query$FormInstanceStatusLogs(id: instanceId!),
        );

    if (results.hasErrors()) {
      return Future.error(Exception(results.errors?.first.message));
    }

    if (results.data == null) {
      return Future.error(Exception(results.errors?.first.message));
    }
     if (results.data?.formInstance!.logs?.isEmpty ?? true) {
      return null;
    }

    final instanceJson = results.data!.formInstance;
    final instance = FormInstance.fromJson(instanceJson!.toJson());
    instance.logs = results.data!.formInstance!.logs!
        .map(
          (e) => FormInstanceStatusLog.fromJson(e.toJson()),
        )
        .toList();

        return instance;
  }
}
