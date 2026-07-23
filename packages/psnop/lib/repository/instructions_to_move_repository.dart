import 'package:psnop/models/instructions_to_move/instructions_to_move_summary_request_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary_response_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class InstructionsToMoveRepository {
  InstructionsToMoveRepository({required PsnopApiHelper apiHelper}) {
    _repositoryUtils = RepositoryUtils(apiHelper);
  }

  late final RepositoryUtils _repositoryUtils;

  Future<InstructionsToMoveSummaryResponseModel?> getSummary(
    InstructionsToMoveSummaryRequestModel filter,
  ) {
    return _repositoryUtils.post<InstructionsToMoveSummaryResponseModel>(
      url: '/api/InstructionsToMove/summary',
      body: filter.toJson(),
    );
  }
}
