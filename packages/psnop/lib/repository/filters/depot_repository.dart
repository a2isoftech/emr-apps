import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class DepotRepository {
  static Future<List<DepotResponseModel>> fetchDepotList({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<DepotResponseModel>? selected,
  }) {
    final repositoryUtils = RepositoryUtils(apiHelper);

    return repositoryUtils.getFilter<DepotResponseModel>(
      filterName: 'SearchTerm',
      query: filter,
      selected: selected,
      populate: (target, source) {
        if (target.depotName.isEmpty) {
          target.depotName = source.depotName;
          target.depotShortName = source.depotShortName;
          target.territoryCode = source.territoryCode;
        }
      },
      url: '/api/depotposition/depots/listmax',
    );
  }
}
