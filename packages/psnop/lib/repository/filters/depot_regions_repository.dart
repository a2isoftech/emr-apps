import 'package:psnop/models/filter_response_models/depot_region_response_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class DepotRegionRepository {
  static Future<List<RegionViewModel>> fetchDepotRegionList({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<RegionViewModel>? selected,
  }) {
    final repositoryUtils = RepositoryUtils(apiHelper);

    return repositoryUtils.getFilter<RegionViewModel>(
      filterName: 'SearchTerm',
      query: filter,
      selected: selected,
      url: '/api/region/listmax',
    );
  }
}
