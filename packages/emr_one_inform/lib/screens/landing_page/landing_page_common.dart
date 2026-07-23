import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/landing_page/landing_page_controller.dart';
import 'package:flutter/material.dart';

abstract class LandingPageCommon extends BasePage<LandingPageController> {
  LandingPageCommon({super.key});

  @override
  String getTitle(BuildContext context) {
    final userName = UserInfoService.instance!.userInfo.name;
    return '$userName (${yard.yardCode})';
  }

  @override
  void initState(BuildContext context) {
    controller.init();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    final userName = UserInfoService.instance!.userInfo.name;

    final totalAssignedJobs = InformJobs.allJobsCounts?.userJobs?.count ?? 0;

    final totalYardJobsCount = InformJobs.allJobsCounts?.yardJobs?.count ?? 0;

    final assignedInProgress =
        InformJobs.allJobsCounts?.userJobs?.inProgressJobs?.count ?? 0;
    final assignedNewJobs =
        InformJobs.allJobsCounts?.userJobs?.newJobs?.count ?? 0;
    final assignedCompltedJobs =
        InformJobs.allJobsCounts?.userJobs?.completedJobs?.count ?? 0;

    final yardInProgressJobs =
        InformJobs.allJobsCounts?.yardJobs?.inProgressJobs?.count ?? 0;
    final yardNewJobs = InformJobs.allJobsCounts?.yardJobs?.newJobs?.count ?? 0;
    final yardCompletedJobs =
        InformJobs.allJobsCounts?.yardJobs?.completedJobs?.count ?? 0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: RefreshIndicator(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  _jobSummaryBody(
                    context,
                    userName,
                    totalAssignedJobs,
                    assignedInProgress,
                    assignedNewJobs,
                    assignedCompltedJobs,
                    totalYardJobsCount,
                    yardInProgressJobs,
                    yardNewJobs,
                    yardCompletedJobs,
                  ),
                ],
              ),
            ),
            onRefresh: () async {
              await controller.init();
            },
          ),
        ),
      ],
    );
  }

  Widget _jobSummaryBody(
    BuildContext context,
    String? userName,
    int totalAssignedJobs,
    int assignedInProgress,
    int assignedNewJobs,
    int assignedCompltedJobs,
    int totalYardJobsCount,
    int yardInProgressJobs,
    int yardNewJobs,
    int yardCompletedJobs,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        runSpacing: 10,
        children: [
          _addHeader(
            '',
            'you have ..',
            totalAssignedJobs,
            userName?.split(' ').map((e) => e.isEmpty ? '' : e[0]).join() ?? '',
          ),
          addJobsSummaryCards(
            context: context,
            inProgressJobsCount: assignedNewJobs,
            newJobsCount: assignedInProgress,
            completedJobsCount: assignedCompltedJobs,
            firstinProgressJobTitle: InformJobs.allJobsCounts?.userJobs?.newJobs
                    ?.recentActivities?.firstOrNull ??
                '',
            firstnewJobTitle: InformJobs.allJobsCounts?.userJobs?.inProgressJobs
                    ?.recentActivities?.firstOrNull ??
                '',
            firstCompletedJobTitle: InformJobs.allJobsCounts?.userJobs
                    ?.completedJobs?.recentActivities?.firstOrNull ??
                '',
            filterForUser: true,
          ),
          const SizedBox(height: 20),
          _addHeader(
            '${yard.name}, has ..',
            '',
            totalYardJobsCount,
            yard.yardCode ?? '',
          ),
          addJobsSummaryCards(
            context: context,
            inProgressJobsCount: yardNewJobs,
            newJobsCount: yardInProgressJobs,
            completedJobsCount: yardCompletedJobs,
            firstinProgressJobTitle: InformJobs.allJobsCounts?.yardJobs?.newJobs
                    ?.recentActivities?.firstOrNull ??
                '',
            firstnewJobTitle: InformJobs.allJobsCounts?.yardJobs?.inProgressJobs
                    ?.recentActivities?.firstOrNull ??
                '',
            firstCompletedJobTitle: InformJobs.allJobsCounts?.yardJobs
                    ?.completedJobs?.recentActivities?.firstOrNull ??
                '',
            filterForUser: false,
          ),
        ],
      ),
    );
  }

  Widget _addHeader(
    String headerLine1,
    String headerLine2,
    int jobCount,
    String alias,
  ) {
    return Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: FormAppColors.primaryBlue,
          child: Text(
            alias,
            style: TextStyle(
              color: FormAppColors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (headerLine1.isNotEmpty)
                Text(
                  headerLine1,
                  style: const TextStyle(fontSize: 20),
                ),
              if (headerLine2.isNotEmpty)
                Text(
                  headerLine2,
                  style: const TextStyle(fontSize: 20),
                  overflow: TextOverflow.clip,
                ),
            ],
          ),
        ),
        Text(
          jobCount.toString(),
          style: TextStyle(
            fontSize: jobCount.toString().length > 3 ? 16 : 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        _jobsText('Jobs', 'summary'),
      ],
    );
  }

  Widget addJobsSummaryCards({
    required BuildContext context,
    required int inProgressJobsCount,
    required int newJobsCount,
    required int completedJobsCount,
    required String firstinProgressJobTitle,
    required String firstnewJobTitle,
    required String firstCompletedJobTitle,
    required bool filterForUser,
  });

  Widget jobCard({
    required BuildContext context,
    required String jobCount,
    required String jobState,
    required String jobTitleDescription,
    required String jobTitle,
    required bool filterForUser,
  }) {
    return GestureDetector(
      onTap: () {
        if (jobState == 'New' || jobState == 'In Progress') {
          context.pushNamed(
            filterForUser
                ? FormsRoutingName.jobsAssignedToMe
                : FormsRoutingName.jobsAssignedToYard,
            queryParams: {'jobState': jobState},
          ).then((value) {
            controller.updateCount();
          });
        } else {
          context.pushNamed(
            FormsRoutingName.completedJobs,
            queryParams: {
              'filterForUser': filterForUser.toString(),
            },
          ).then((value) {
            controller.updateCount();
          });
        }
      },
      child: SizedBox(
        width: (MediaQuery.of(context).size.width) * 0.95,
        child: Card(
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.fromLTRB(1, 5, 1, 5),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: EmrColours.secondaryGrey),
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          _jobsCount(jobCount, 'details'),
                          const SizedBox(width: 5),
                          _jobsText(jobState, 'details'),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                jobTitleDescription,
                                style: const TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                jobTitle,
                                style: const TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.remove_red_eye_outlined),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CircleAvatar _jobsCount(String jobsCount, String displayType) {
    return CircleAvatar(
      radius: displayType == 'summary' ? 35 : 20,
      backgroundColor: EmrColours.secondaryLightBlue,
      child: Text(
        jobsCount,
        style: TextStyle(
          fontSize: jobsCount.length > 3 ? 16 : 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _jobsText(String displayText, String displayType) {
    return Text(
      displayText,
      style: TextStyle(
        fontSize: displayType == 'summary' ? 20 : 14,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  bool isScannerForAssetSearchAllowed() {
    if (InformJobs.preference?.isScannerForAssetSearchEnabled == null ||
        InformJobs.yardDetails?.yardCode == null) {
      return false;
    }

    return InformJobs.preference!.isScannerForAssetSearchEnabled!
        .getValue(InformJobs.yardDetails!.yardCode!);
  }
}
