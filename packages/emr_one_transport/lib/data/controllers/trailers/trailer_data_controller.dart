import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:file_saver/file_saver.dart';

class TrailerDataController {
  TrailerDataController({required this.service});
  final CommonService service;

  List<DispatchYards> allYards = [];
  List<ListDetails> allTrailerTypes = [];
  List<ListDetails> allLifeCycleStatuses = [];
  List<ListDetails> allConditions = [];

  Future<void> getFilterValues() async {
    allYards = await service.getDispatchYardsForUser();
    allTrailerTypes = await service.getListByType(StringConstants.trailerTypes);
    allConditions = await service.getListByType(
      StringConstants.assetConditions,
    );
    allLifeCycleStatuses = await service.getListByType(
      StringConstants.truckTrailerStatuses,
    );
  }

  Future<ApiResponse<String>> downloadQRCodes(
    String endpoint,
    MimeType fileType,
    String fileName, {
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await service.getQRCodeFileBytes(
      endpoint,
      queryParams: queryParams,
    );
    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: fileName,
        bytes: response.data,
        mimeType: fileType,
      );
      return ApiResponse(null);
    }
    return ApiResponse(
      null,
      errorMessage: response.errorMessage,
      isSuccess: false,
    );
  }
}
