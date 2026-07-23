import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/customers/customer_detail.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class CustomerService {
  CustomerService({required this.apiService});
  final ApiService apiService;

  Future<ApiResponse<List<CustomerDetail>>> getCustomers(
    PagedFilterRequest paginationInfo,
  ) async {
    return apiService.getGraphQLResponse<CustomerDetail>(
      StringConstants.kAccountSearchUrl,
      pageInfo: paginationInfo,
      fromJsonT: CustomerDetail.fromJson,
    );
  }
}
