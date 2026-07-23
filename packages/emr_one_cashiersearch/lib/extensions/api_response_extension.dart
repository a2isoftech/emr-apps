import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/models/ticket_service_api_response.dart';

extension ApiResponseExtension<T> on ApiResponse<T> {
  TicketServiceApiResponse<T> toTicketServiceApiRespone() {
    return TicketServiceApiResponse(
      isSuccess: success,
      result: data,
      error: ApiError(errorCode: '', errorMessage: message, details: {}),
    );
  }
}
