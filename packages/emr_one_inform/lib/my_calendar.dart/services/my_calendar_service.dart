import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/GetFormJobs.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/form_job.dart';

abstract class IMyCalendarService {
  IMyCalendarService({required this.httpClient});

  final ResilientHttpClient httpClient;

  Future<List<FormJob>?> getJobs({
    required String yardCode,
    required String startDate,
    required String endDate,
  });
}

class MyCalendarService extends IMyCalendarService {
  MyCalendarService({required super.httpClient});

  @override
  Future<List<FormJob>?> getJobs({
    required String yardCode,
    required String startDate,
    required String endDate,
  }) async {
    final results = await documentNodeQueryGetFormJobs.execute(
      httpClient,
      Query$GetFormJobs.fromJson,
      variables: Variables$Query$GetFormJobs(
        filter: Input$FormJobFilterInput(
          startDate: startDate,
          endDate: endDate,
          filterForUser: true,
          stateIds: [1, 2],
        ),
      ),
    );

    if (results.hasErrors()) {
      return null;
    }

    if (results.data == null) {
      return null;
    }

    final jobForms = results.data!.formJobs
        .map((e) => FormJob.fromJson(e.toJson()))
        .toList();

    return jobForms;
  }
}
