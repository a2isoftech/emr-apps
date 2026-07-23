import 'dart:convert';

import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesRepository implements IUserPreferencesRepository {
  static SharedPreferences? _preferences;

  static Future<void> init() async =>
      _preferences ??= await SharedPreferences.getInstance();

  static Future<String?> _getString(String key) async {
    await init();

    return _preferences!.getString(key);
  }

  static Future<bool> _setString(String key, String value) async {
    await init();

    return _preferences!.setString(key, value);
  }

  static Future<List<String>?> _getStringList(String key) async {
    await init();

    return _preferences!.getStringList(key);
  }

  static Future<bool> _setStringList(String key, List<String> value) async {
    await init();

    return _preferences!.setStringList(key, value);
  }

  static Future<bool?> _getBool(String key) async {
    await init();

    return _preferences!.getBool(key);
  }

  static Future<bool> _setBool(String key, bool value) async {
    await init();

    return _preferences!.setBool(key, value);
  }

  @override
  Future<Depot?> getDepot() async {
    final depotJson = await _getString(SharedPreferenceKeys.SelectedDepotKey);
    final depot = depotJson != null
        ? Depot.fromJson(jsonDecode(depotJson) as Map<String, dynamic>)
        : null;
    return depot;
  }

  @override
  Future<JobForms?> getJobs() async {
    final jobsJson = await _getString(SharedPreferenceKeys.JobsList);
    final jobs = jobsJson != null
        ? JobForms.fromJson(jsonDecode(jobsJson) as Map<String, dynamic>)
        : null;
    return jobs;
  }

  @override
  Future<List<String>> getSavedDates() async {
    final savedDates = await _getStringList(
          SharedPreferenceKeys.SearchDatesKey,
        ) ??
        const [];
    return savedDates;
  }

  @override
  Future<List<String>> getSavedTerms() async {
    final savedTerms = await _getStringList(
          SharedPreferenceKeys.SearchTermsKey,
        ) ??
        const [];
    return savedTerms;
  }

  @override
  Future<List<JsonTemplateDocument>?> getTemplateDocument() async {
    final savedJsonTemplates = <JsonTemplateDocument>[];
    final jsonTemplates = await _getString(SharedPreferenceKeys.JsonTemplates);
    if (jsonTemplates == null) return null;
    final data = jsonDecode(jsonTemplates) as List;
    for (var i = 0; i < (data.length); i++) {
      savedJsonTemplates.add(
        JsonTemplateDocument.fromJson(
          Map<String, dynamic>.from(data[i] as Map<dynamic, dynamic>),
        ),
      );
    }
    return savedJsonTemplates;
  }

  @override
  Future<String> getTerritory() async {
    return await _getString(SharedPreferenceKeys.SelectedTerritoryKey) ?? '';
  }

  @override
  Future<bool> getTracingEnabled() async {
    return await _getBool(SharedPreferenceKeys.TraceEnabledKey) ?? false;
  }

  @override
  Future<Yard?> getYard() async {
    final yardJson = await _getString(SharedPreferenceKeys.SelectedYardKey);
    final yard = yardJson != null
        ? Yard.fromJson(jsonDecode(yardJson) as Map<String, dynamic>)
        : null;
    return yard;
  }

  @override
  Future<bool> saveDepot(Depot depot) async {
    final depotJson = jsonEncode(depot.toJson());
    final saved = await _setString(
      SharedPreferenceKeys.SelectedDepotKey,
      depotJson,
    );
    return saved;
  }

  @override
  Future<bool> saveJobs(JobForms jobs) async {
    final jobsJson = jsonEncode(jobs.toJson());
    final saved = await _setString(
      SharedPreferenceKeys.JobsList,
      jobsJson,
    );
    return saved;
  }

  @override
  Future<bool> saveSearchDates(List<String> searchDates) async {
    final saved = await _setStringList(
      SharedPreferenceKeys.SearchDatesKey,
      searchDates,
    );
    return saved;
  }

  @override
  Future<bool> saveSearchTerms(List<String> searchTerms) async {
    final saved = await _setStringList(
      SharedPreferenceKeys.SearchTermsKey,
      searchTerms,
    );
    return saved;
  }

  @override
  Future<bool> saveTemplateDocument(
    List<JsonTemplateDocument> jsonDocuments,
  ) async {
    final saved = await _setString(
      SharedPreferenceKeys.JsonTemplates,
      jsonEncode(jsonDocuments.toList()),
    );
    return saved;
  }

  @override
  Future<bool> saveTerritory(String territory) async {
    final saved = await _setString(
      SharedPreferenceKeys.SelectedTerritoryKey,
      territory,
    );
    return saved;
  }

  @override
  Future<bool> saveTracingEnabled({required bool isTracingEnabled}) async {
    final saved = await _setBool(
      SharedPreferenceKeys.TraceEnabledKey,
      isTracingEnabled,
    );
    return saved;
  }

  @override
  Future<bool> saveYard(Yard yard) async {
    final yardJson = jsonEncode(yard.toJson());
    final saved = await _setString(
      SharedPreferenceKeys.SelectedYardKey,
      yardJson,
    );
    return saved;
  }

  @override
  Future<bool> saveSubmittedJobIds(List<String> workOrders) async {
    final saved = await _setStringList(
      SharedPreferenceKeys.SubmittedJobIds,
      workOrders,
    );
    return saved;
  }

  @override
  Future<List<String>> getSubmittedJobIds() async {
    final submittedIds = await _getStringList(
          SharedPreferenceKeys.SubmittedJobIds,
        ) ??
        const [];
    return submittedIds;
  }

  @override
  Future<bool> saveInProgressJobIds(List<String> workOrders) async {
    final saved = await _setStringList(
      SharedPreferenceKeys.InProgressJobIds,
      workOrders,
    );
    return saved;
  }

  @override
  Future<List<String>> getInProgressJobIds() async {
    final submittedIds = await _getStringList(
          SharedPreferenceKeys.InProgressJobIds,
        ) ??
        const [];
    return submittedIds;
  }

  @override
  Future<bool> saveUsers(List<User> users) async {
    final saved = await _setString(
      SharedPreferenceKeys.CachedUsers,
      jsonEncode(users.toList()),
    );
    return saved;
  }

  @override
  Future<List<User>?> getUsers() async {
    final cachedUsers = <User>[];
    final users = await _getString(SharedPreferenceKeys.CachedUsers);
    if (users == null) return null;
    final data = jsonDecode(users) as List;
    for (var i = 0; i < (data.length); i++) {
      cachedUsers.add(
        User.fromJson(
          Map<String, dynamic>.from(data[i] as Map<dynamic, dynamic>),
        ),
      );
    }
    return cachedUsers;
  }
}
