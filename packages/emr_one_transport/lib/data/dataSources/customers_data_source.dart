import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/data/models/customers/customer_detail.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/services/customer_service.dart';

class CustomerDataSource extends EmrQueryGraphQLDataSource<CustomerDetail> {
  CustomerDataSource({required this.customerService});

  final CustomerService customerService;

  @override
  bool get supportsPaging => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    final paginationInfo = PagedFilterRequest(
      searchTerm: queryScope.query.toLowerCase(),
      pageNumber,
      pageSize,
    );
    var customers = ApiResponse<List<CustomerDetail>>([]);
    if (paginationInfo.searchTerm.isNotEmpty) {
      customers = await customerService.getCustomers(paginationInfo);
    }
    data.value = customers.data ?? [];
    loading.value = false;
  }
}
