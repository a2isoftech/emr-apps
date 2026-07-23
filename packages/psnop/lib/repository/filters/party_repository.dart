import 'package:psnop/models/filter_response_models/active_parties_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class PartyRepository {
  PartyRepository();

  static Future<List<ActivePartiesModel>> fetchActiveParties({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<ActivePartiesModel>? selected,
  }) {
    final repositoryUtils = RepositoryUtils(apiHelper);
    return repositoryUtils.getFilter<ActivePartiesModel>(
      filterName: 'searchTerm',
      query: filter,
      selected: selected,
      url: '/api/parties/listmax',
    );
  }
}
