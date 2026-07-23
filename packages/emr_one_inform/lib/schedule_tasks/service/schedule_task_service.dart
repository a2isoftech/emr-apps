import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/queries/getFormTemplateJson.graphql.dart';
import 'package:emr_one_inform/graphql/queries/users.graphql.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/schedule_tasks/service/ischedule_task_service.dart';

class ScheduleTaskService extends IScheduleTaskService {
  ScheduleTaskService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  static const String loggerPrefix = '[ScheduleTaskService] - ';

  @override
  Future<List<User>> getUsers(String filter) async {
    final results = await documentNodeQueryUsers.execute(
      httpClient,
      Query$Users.fromJson,
      variables: Variables$Query$Users(filter: filter),
    );

    if (results.hasErrors()) {
      return [];
    }

    if (results.data == null) {
      return [];
    }

    return results.data!.users.map((e) => User.fromJson(e.toJson())).toList();
  }

  @override
  Future<String?> getFormsTemplateJson(String templateId) async {
    final results = await documentNodeQueryGetFormTemplateJson.execute(
      httpClient,
      Query$GetFormTemplateJson.fromJson,
      variables: Variables$Query$GetFormTemplateJson(id: templateId),
    );

    if (results.hasErrors()) {
      return null;
    }

    if (results.data == null) {
      return null;
    }

    return results.data!.formTemplateJson!.document;
  }
}
