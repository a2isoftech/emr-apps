import 'package:emr_one_core/config/config.dart';
import 'package:intl/intl.dart';

class UriUtils {
  static Uri yardManagementAllocationsLink(
    AppConfig config, {
    required String depot,
    required DateTime startDate,
    required DateTime endDate,
    String? grade,
    String? gradeGroup,
    String? salesGrade,
  }) {
    final baseUrl = config.yardManagementDeepLinkBaseUrl;

    final formatter = DateFormat('dd-MM-yyyy');
    final formattedStartDate = formatter.format(startDate);
    final formattedEndDate = formatter.format(endDate);

    return Uri.parse('$baseUrl/allocations').replace(
      queryParameters: _params(
        depot: depot,
        grade: grade,
        gradeGroup: gradeGroup,
        pickupFromDate: formattedStartDate,
        pickupToDate: formattedEndDate,
        salesGrade: salesGrade,
      ),
    );
  }

  static Uri yardManagementIncomingLink(
    AppConfig config, {
    required DateTime endDate,
    required DateTime startDate,
    required String yardCode,
    String? grade,
  }) {
    final baseUrl = config.yardManagementDeepLinkBaseUrl;

    final formatter = DateFormat('yyyy-MM-dd');
    final formattedStartDate = formatter.format(startDate);
    final formattedEndDate = formatter.format(endDate);

    return Uri.parse('$baseUrl/liveloads').replace(
      queryParameters: _params(
        custAccountNo: 'D',
        custFilter: 'Customer',
        endDate: formattedEndDate,
        filter: 'Range',
        searchTerm: grade,
        startDate: formattedStartDate,
        view: 'Inbound',
        yardCode: yardCode,
      ),
    );
  }

  static Uri yardManagementRequestLink(
    AppConfig config, {
    required String depot,
    String? gradeGroup,
    String? grade,
  }) {
    final baseUrl = config.yardManagementDeepLinkBaseUrl;
    return Uri.parse('$baseUrl/requests').replace(
      queryParameters: _params(
        depot: depot,
        grade: grade,
        gradeGroup: gradeGroup,
      ),
    );
  }

  static Map<String, String> _params({
    String? custAccountNo,
    String? custFilter,
    String? depot,
    String? endDate,
    String? filter,
    String? grade,
    String? gradeGroup,
    String? pickupFromDate,
    String? pickupToDate,
    String? salesGrade,
    String? searchTerm,
    String? startDate,
    String? view,
    String? yardCode,
  }) {
    final params = <String, String?>{
      'custAccNo': custAccountNo,
      'custFilter': custFilter,
      'depot': depot,
      'endDate': endDate,
      'filter': filter,
      'grade': grade,
      'gradegroup': gradeGroup,
      'pickupfromdate': pickupFromDate,
      'pickuptodate': pickupToDate,
      'salesgrade': salesGrade,
      'searchTerm': searchTerm,
      'startDate': startDate,
      'view': view,
      'yardCode': yardCode,
    };

    params.removeWhere((key, value) => value == null || value.isEmpty);

    return params.map((key, value) => MapEntry(key, value!));
  }
}
