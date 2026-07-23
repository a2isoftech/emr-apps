import 'package:emr_core_api/emr_core_api.dart';

extension GraphQlErrorExtensions
    on
        List<
          Mutation$CreateProspectRetailAccount$createProspectAccount$errors?
        > {
  bool hasDuplicateAccountError() {
    return any((e) => e != null && e.code == 'CONTACT_INFO_IN_USE');
  }
}

extension GraphQlErrorExtensionsInternal
    on
        List<
          Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors?
        > {
  bool hasDuplicateAccountError() {
    return any((e) => e != null && e.code == 'CONTACT_INFO_IN_USE');
  }
}
