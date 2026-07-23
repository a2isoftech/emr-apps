import 'dart:convert';

import 'package:emr_one_inform/company_preference/services/company_preference_service.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/company_preference.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';

abstract class ICompanyPreferenceController extends BaseController {
  CompanyPreference? selectedCompanyPreference;
  late CompanyPreference defaultCompanyPreference;
  List<Yard> yards = List.empty(growable: true);
  List<CompanyPreference> get companyPreferences;
  List<String> get companies;
  Future<void> getAllCompanyPreference();
  Future<void> getCompanyPreference(String companyCode);
  Future<void> getAllCompanies();
  Future<void> save();
}

class CompanyPreferenceController extends ICompanyPreferenceController {
  CompanyPreferenceController({
    required this.service,
    required this.landingPageService,
  });

  final ICompanyPreferenceService service;
  final ILandingPageService landingPageService;

  List<CompanyPreference> _companyPreferences = List.empty(growable: true);

  @override
  List<CompanyPreference> get companyPreferences => _companyPreferences;

  @override
  Future<void> getAllCompanyPreference() async {
    _companyPreferences = await service.getAllCompanyPreferences();
    defaultCompanyPreference = (await service.getCompanyPreference('Default'))!;
    reload();
  }

  @override
  Future<void> getCompanyPreference(String companyCode) async {
    final companyPreference = await service.getCompanyPreference(companyCode);
    if (companyPreference == null) return;

    if (!companyPreferences.any((e) => e.companyCode == companyCode)) {
      companyPreferences.add(companyPreference);
    }
    await _setSelectedCompanyPreference(companyPreference);
    reload();
  }

  List<String> _companies = List.empty(growable: true);

  @override
  List<String> get companies => _companies;

  @override
  Future<void> getAllCompanies() async {
    _companies = await service.getAllCompanies();
  }

  Future<void> _setSelectedCompanyPreference(
    CompanyPreference? selectedCompanyPreference,
  ) async {
    this.selectedCompanyPreference = selectedCompanyPreference;
    if (this.selectedCompanyPreference == null) return;
    yards = await service
        .getAllYardsForCompany(this.selectedCompanyPreference!.companyCode!);
    reload();
  }

  @override
  Future<void> save() async {
    await service.save(
      CompanyPreference(
        companyCode: selectedCompanyPreference!.companyCode,
        preferenceJson: jsonEncode(selectedCompanyPreference!.preferenceAsJson),
      ),
    );

    if (selectedCompanyPreference?.companyCode == 'Default') {
      defaultCompanyPreference =
          (await service.getCompanyPreference('Default'))!;
    }

    if (selectedCompanyPreference?.companyCode ==
            InformJobs.yardDetails?.companyCode ||
        selectedCompanyPreference?.companyCode == 'Default') {
      InformJobs.preference = await landingPageService
          .getPreferenceForCompanyCode(InformJobs.yardDetails!.companyCode!);
    }
  }
}
