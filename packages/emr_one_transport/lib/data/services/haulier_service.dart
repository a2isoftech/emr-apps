import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class HaulierService {
  HaulierService({
    required this.httpClient,
  }) : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  // search from all haulier types
  // i.e. internal, Managed & 3rd Party
  Future<List<Haulier>> searchHauliers(String searchTerm) async {
    final response = await _apiService.getList<Haulier>(
      StringConstants.kHaulierList,
      fromJsonT: Haulier.fromJson,
      queryParams: {
        StringConstants.searchTerm: searchTerm,
        StringConstants.includeInternal: StringConstants.trueString,
        StringConstants.getAllRecords: StringConstants.falseString,
        'sortOrder': 'asc',
        'sortBy': 'Code',
        'pageSize': '20',
      },
    );
    return response.data ?? [];
  }

  Future<List<UserManagedHauliers>> getUserManagedHauliers() async {
    final apiResponse = await _apiService.getList<UserManagedHauliers>(
      StringConstants.kgetManagedHauliers,
      fromJsonT: UserManagedHauliers.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }
}
