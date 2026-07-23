import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/models/account_model.dart';

class ExistingAccountModel {
  ExistingAccountModel({
    required this.searchText,
    required this.isBusy,
    required this.hasSearched,
    required this.existingSearchText,
    this.accounts,
    this.pageInfo,
  });
  factory ExistingAccountModel.initial() => ExistingAccountModel(
        searchText: '',
        isBusy: false,
        hasSearched: false,
        existingSearchText: '',
      );
  String searchText;
  bool isBusy;
  List<AccountModel>? accounts;
  EmrQueryGraphQLPageInfo? pageInfo;
  bool hasSearched;
  String existingSearchText;
}
