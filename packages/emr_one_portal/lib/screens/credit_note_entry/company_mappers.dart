import 'package:emr_one_portal/graphql/cam_raven/graphql.dart';
import 'package:emr_one_portal/shared/models/company_model.dart';
import 'package:emr_one_portal_tickets/graphql/queries/get_companies_list.graphql.dart';

class CompanyMapper {
  static Company accountCompanyMapper(
    Query$GetAccountCompanies$account$validForCompanies? source,
  ) {
    return Company(
      name: source!.fullName,
      companyCode: source.code,
    );
  }

  static Company companyMapper(
    Query$Companies$companies source,
  ) {
    return Company(
      name: source.fullName,
      companyCode: source.code,
    );
  }
}
