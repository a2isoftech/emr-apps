import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';

class InspectionService extends BaseService {
  InspectionService({
    required super.resilientClient,
    required super.appConfig,
  });

  Future<InspectionDocumentsResponseModel> getVehicleDocuments(
      {required int batchQuoteId, required int quoteId,}) async {
    final response = await documentNodeQueryGetVehicleDocuments.execute(
      resilientClient,
      Query$GetVehicleDocuments.fromJson,
      variables: Variables$Query$GetVehicleDocuments(
          batchQuoteId: batchQuoteId, quoteId: quoteId,),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors?.map((e) => e.message).join(', '));
    }

    return InspectionDocumentsResponseModel.fromJson(
      response.data!.vehicleDocuments.toJson(),
    );
  }
}
