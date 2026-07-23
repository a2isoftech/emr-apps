import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/graphql/mutation/SaveCompanyPreferences.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetAllCompanies.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetAllCompanyPreferences.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetAllYardsInCompany.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetCompanyPreference.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/company_preference.dart';
import 'package:emr_one_inform/models/form_models.dart';

abstract class ICompanyPreferenceService {
  Future<List<CompanyPreference>> getAllCompanyPreferences();
  Future<CompanyPreference?> getCompanyPreference(String companyCode);
  Future<List<String>> getAllCompanies();
  Future<List<Yard>> getAllYardsForCompany(String companyCode);
  Future<void> save(CompanyPreference companyPreference);
}

class CompanyPreferenceService implements ICompanyPreferenceService {
  CompanyPreferenceService({required this.httpClient});

  final ResilientHttpClient httpClient;

  @override
  Future<List<CompanyPreference>> getAllCompanyPreferences() async {
    final result = await documentNodeQueryGetAllCompanyPreferences.execute(
      httpClient,
      Query$GetAllCompanyPreferences.fromJson,
    );

    if (result.hasErrors() || result.data?.allCompanyPreferences == null) {
      return [];
    }

    return result.data!.allCompanyPreferences
        .map((e) => CompanyPreference.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<CompanyPreference?> getCompanyPreference(String companyCode) async {
    final result = await documentNodeQueryGetCompanyPreference.execute(
      httpClient,
      Query$GetCompanyPreference.fromJson,
      variables: Variables$Query$GetCompanyPreference(companyCode: companyCode),
    );

    if (result.hasErrors() || result.data?.companyPreference == null) {
      return null;
    }

    return CompanyPreference.fromJson(result.data!.companyPreference.toJson());
  }

  @override
  Future<List<String>> getAllCompanies() async {
    final result = await documentNodeQueryGetAllCompanies.execute(
      httpClient,
      Query$GetAllCompanies.fromJson,
    );

    if (result.hasErrors() || (result.data?.allCompanies.isEmpty ?? true)) {
      return [];
    }

    return result.data!.allCompanies;
  }

  @override
  Future<List<Yard>> getAllYardsForCompany(String companyCode) async {
    final result = await documentNodeQueryGetAllYardsInComapny.execute(
      httpClient,
      Query$GetAllYardsInComapny.fromJson,
      variables: Variables$Query$GetAllYardsInComapny(companyCode: companyCode),
    );

    if (result.hasErrors() || (result.data?.allYards.isEmpty ?? true)) {
      return [];
    }

    return result.data!.allYards.map((e) => Yard.fromJson(e.toJson())).toList();
  }

  @override
  Future<void> save(CompanyPreference companyPreference) async {
    await documentNodeMutationSaveCompanyPreferences.execute(
      httpClient,
      Mutation$SaveCompanyPreferences.fromJson,
      variables: Variables$Mutation$SaveCompanyPreferences(
        companyPreference: Input$CreateEditCompanyPreferenceInput(
          companyCode: companyPreference.companyCode!,
          preferenceJson: companyPreference.preferenceJson!,
        ),
      ),
    );
  }
}
