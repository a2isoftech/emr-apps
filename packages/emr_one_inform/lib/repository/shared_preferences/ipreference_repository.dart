import 'package:emr_one_inform/models/depot.dart';
import 'package:emr_one_inform/models/job_forms.dart';
import 'package:emr_one_inform/models/json_template_document.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/yard.dart';

abstract class IUserPreferencesRepository {
  Future<Depot?> getDepot();

  Future<JobForms?> getJobs();

  Future<List<String>> getSavedDates();

  Future<List<String>> getSavedTerms();

  Future<List<JsonTemplateDocument>?> getTemplateDocument();

  Future<String> getTerritory();

  Future<bool> getTracingEnabled();

  Future<Yard?> getYard();

  Future<bool> saveDepot(Depot depot);

  Future<bool> saveJobs(JobForms jobs);

  Future<bool> saveSearchDates(List<String> searchDates);

  Future<bool> saveSearchTerms(List<String> searchTerms);

  Future<bool> saveTemplateDocument(List<JsonTemplateDocument> jsonTemplates);

  Future<bool> saveTerritory(String territory);

  Future<bool> saveTracingEnabled({required bool isTracingEnabled});

  Future<bool> saveYard(Yard yard);

  Future<bool> saveSubmittedJobIds(List<String> workOrders);

  Future<List<String>> getSubmittedJobIds();

  Future<bool> saveInProgressJobIds(List<String> workOrders);

  Future<List<String>> getInProgressJobIds();

  Future<List<User>?> getUsers();
  Future<bool> saveUsers(List<User> users);
}
