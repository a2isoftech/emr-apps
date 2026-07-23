import 'package:emr_one_inform/models/form_models.dart';

abstract class IScheduleTaskService {
  Future<List<User>> getUsers(String filter);
  Future<String?> getFormsTemplateJson(String templateId);
}
