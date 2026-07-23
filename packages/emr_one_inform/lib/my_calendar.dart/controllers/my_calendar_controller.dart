import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/form_job.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/my_calendar.dart/services/my_calendar_service.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/interfaces/ijob_search_service.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';

abstract class IMyCalenderController extends BaseController {
  late DateTime startDate;
  late DateTime endDate;
  bool isBusy = false;
  DateTime? selectedDate;
  List<EmrCalendarEvent<FormJob>> dataSource = [];

  void setDates(DateTime startDate, DateTime endDate);
  Future<List<FormJob>?> getJobs(
    String yardCode,
    DateTime startDate,
    DateTime endDate,
  );
  Future<void> loadJobs(String yardCode);
  Future<bool> assignWorkOrderToUser(
    AssignWorkOrderToUserRequest assignWorkOrderToUserRequest,
  );
  Future<String?> cloneJob({required FormJob formJob});
  Future<bool> delete(String workOrderId);
  Future<bool> resetInProgressForm({
    required String yardCode,
    required String formInstanceUuid,
  });
}

class MyCalenderController extends IMyCalenderController {
  MyCalenderController({
    required this.service,
    required this.jobSearchService,
    required this.createTaskService,
    required this.landingPageService,
  });

  final IMyCalendarService service;
  final IJobSearchService jobSearchService;
  final ILandingPageService landingPageService;
  final ICreateTaskService createTaskService;

  @override
  Future<bool> assignWorkOrderToUser(
    AssignWorkOrderToUserRequest assignWorkOrderToUserRequest,
  ) {
    return jobSearchService.assignWorkOrderToUser(assignWorkOrderToUserRequest);
  }

  @override
  void setDates(DateTime startDate, DateTime endDate) {
    this.startDate = startDate;
    this.endDate = endDate.add(const Duration(days: 1));
  }

  @override
  Future<List<FormJob>?> getJobs(
    String yardCode,
    DateTime startDate,
    DateTime endDate,
  ) async {
    return service.getJobs(
      yardCode: yardCode,
      startDate: startDate.toUtc().toIso8601String(),
      endDate: endDate.toUtc().toIso8601String(),
    );
  }

  @override
  Future<void> loadJobs(String yardCode) async {
    isBusy = true;
    dataSource = [];
    reload();

    final jobs = await service.getJobs(
      yardCode: yardCode,
      startDate: startDate.toUtc().toIso8601String(),
      endDate: endDate.toUtc().toIso8601String(),
    );

    if (jobs?.isNotEmpty ?? false) {
      dataSource = (jobs ?? []).map((job) {
        return EmrCalendarEvent<FormJob>(
          '${job.jobInfo?.workOrderId} (${job.jobInfo?.workOrderDescription})',
          job.jobInfo!.status == 'NOT_STARTED'
              ? job.jobInfo!.expectedStartDate!.toLocal()
              : job.instanceInfo!.startedDate!.toLocal(),
          data: job,
          colour: job.jobInfo?.status == 'NOT_STARTED'
              ? FormAppColors.success
              : FormAppColors.inProgress,
        );
      }).toList();
    }

    isBusy = false;
    reload();
  }

  @override
  Future<String?> cloneJob({
    required FormJob formJob,
    bool showOptions = false,
  }) async {
    try {
      isBusy = true;
      reload();

      final createTask = ScheduleTaskByTemplateRequest(
        yardCodes: [formJob.jobInfo!.yardCode!],
        depotNos: [formJob.jobInfo!.depotNo!],
        templateId: formJob.jobInfo!.template!.templateId!,
        isRepeatable: false,
        workOrderDescription: formJob.jobInfo!.workOrderDescription,
        createInD365: false,
        assignedTypeId: 1,
        assetCode: formJob.jobInfo!.asset!.assetCode == 'NONE'
            ? ''
            : formJob.jobInfo!.asset!.assetCode,
        startDate: DateTime.now().toUtc(),
        dueDate: DateTime.now().toUtc().add(const Duration(days: 7)),
        assignedTo: formJob.jobInfo!.assignedTo,
        repeatEndDate: DateTime.now().toUtc(),
        repeatFrequency: 1,
        repeatType: 1,
        createWithQuickTemplate: false,
        isDigitalSignatureRequired:
            formJob.jobInfo?.isDigitalSignatureRequired ?? false,
        notes: formJob.jobInfo?.notes,
        jobPriority: CommonUtility.getJobPriority(formJob.jobInfo!.jobPriority),
      );

      return await createTaskService.createScheduledTaskByTemplate(createTask);
    } catch (e) {
      return null;
    } finally {
      InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
        yardCode: formJob.jobInfo!.yardCode,
      );
      isBusy = false;
      reload();
    }
  }

  @override
  Future<bool> delete(String workOrderId) {
    isBusy = true;
    notifyListeners();

    return jobSearchService.delete(workOrderId);
  }

  @override
  Future<bool> resetInProgressForm({
    required String yardCode,
    required String formInstanceUuid,
  }) async {
    isBusy = true;
    reload();

    final result = await jobSearchService.resetInProgressForm(formInstanceUuid);

    InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
      yardCode: yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );

    isBusy = false;
    reload();

    return result;
  }
}
