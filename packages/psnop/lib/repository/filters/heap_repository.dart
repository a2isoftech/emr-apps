import 'package:psnop/models/filter_response_models/heap_response_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class HeapRepository {
  HeapRepository();

  static Future<List<HeapResponseModel>> fetchHeaps({
    required String depotCode,
    required String filter,
    required PsnopApiHelper apiHelper,
    List<HeapResponseModel>? selected,
  }) {
    final repositoryUtils = RepositoryUtils(apiHelper);
    return repositoryUtils.getFilter<HeapResponseModel>(
      filterName: 'searchTerm',
      query: filter,
      selected: selected,
      url: '/api/heaps/listmax',
      additionalParams: {'depotCode': depotCode},
    );
  }
}
