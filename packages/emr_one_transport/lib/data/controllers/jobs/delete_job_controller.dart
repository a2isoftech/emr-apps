import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/jobs/delete_job_request.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/foundation.dart';

class DeleteJobController extends ChangeNotifier {
  DeleteJobController({required this.jobListService});

  final JobListService jobListService;
  final List<DeleteJobRequestModel> deleteJobsList = [];

  void initialize(List<int> jobNumbers) {
    deleteJobsList.clear();
    deleteJobsList.addAll(
      jobNumbers.map((e) {
        return DeleteJobRequestModel(
          e,
          ValueNotifier(''),
          ValueNotifier(''),
        );
      }).toList(),
    );
  }

  String? isCommentRequired(int jobNumber) {
    final jobToBeDeleted = deleteJobsList.firstWhere(
      (e) => e.jobNumber == jobNumber,
    );
    return jobToBeDeleted.deleteReasonDescription.value ==
                StringConstants.other &&
            jobToBeDeleted.deleteComments.value == ''
        ? StringConstants.required
        : null;
  }

  Future<ApiResponse<DeleteJobRequest>> proceedforDeletion() async {
    final deletejobsrequestmodel = deleteJobsList.map((e) {
      return DeleteJobRequest(
        e.jobNumber,
        e.deleteReasonDescription.value,
        e.deleteComments.value,
      );
    }).toList();

    final result = await jobListService.deleteJobs(deletejobsrequestmodel);
    return result;
  }
}
