import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/common/job_quick_clone_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/joblist_search_filter_controller.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/screens/jobs/edit_or_clone_job.dart';
import 'package:emr_one_transport/presentation/shared_widgets/app_modal.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/card_action_buttons.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/job_detailed_view.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/job_details_cardview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JobCard extends StatefulWidget {
  const JobCard({
    required this.joblist,
    required this.onJobCardSelected,
    required this.canSelect,
    required this.filterController,
    required this.queryLayoutController,
    this.isSelected,
    super.key,
  });

  final JobList joblist;
  final void Function(JobList joblist) onJobCardSelected;
  final bool Function(JobList joblist) canSelect;
  final bool? isSelected;
  final EmrQueryLayoutController<JobList> queryLayoutController;
  final JobListSearchFilterController filterController;

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  final isSelected = ValueNotifier(false);
  @override
  void initState() {
    super.initState();
    isSelected.value = widget.isSelected ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final jobQuickCloneController = Provider.of<JobQuickCloneController>(
      context,
    );

    final job = widget.joblist;
    return SizedBox(
      width: 320,
      child: EmrCard(
        key: UniqueKey(),
        isSelected: isSelected.value,
        padding: EdgeInsets.zero,
        trailing: Badge(
          label: Text(job.jobStatus.toString()),
          backgroundColor: Theme.of(context).colorScheme.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.gutter / 2,
            vertical: Insets.gutter / 4,
          ),
        ),
        leading: ValueListenableBuilder(
          valueListenable: isSelected,
          builder: (context, selected, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap:
                          context.userHasPermission(UserPermissions.jobsWrite)
                          ? () async {
                              final isEdited = await showDialog<bool?>(
                                context: context,
                                barrierDismissible: false,
                                builder: (_) => AppModal(
                                  height: 800,
                                  width: 1500,
                                  title:
                                      '${context.l10n.editJob} '
                                      '#${job.jobNumber}',
                                  content: EditOrCloneJob(
                                    jobNumber: job.jobNumber ?? 0,
                                    jobListService: Provider.of<JobListService>(
                                      context,
                                      listen: false,
                                    ),
                                    controller:
                                        Provider.of<JobCreateEditController>(
                                          context,
                                          listen: false,
                                        ),
                                    mode: JobMode.edit,
                                    appConfig: Provider.of<AppConfig>(context),
                                  ),
                                ),
                              );
                              if (isEdited ?? false == true) {
                                await widget.queryLayoutController.dataSource
                                    .refresh();
                              }
                            }
                          : null,
                      borderRadius: BorderRadius.circular(4),
                      child: Text(
                        ' ${job.jobNumber} ',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          color: selected
                              ? Theme.of(
                                  context,
                                ).colorScheme.onTertiaryContainer
                              : TransportAppColors.selectedCardColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _onRowTap(context),
                      child: Tooltip(
                        message: context.l10n.jobDetails,
                        child: const Icon(
                          size: Insets.gutter,
                          Icons.info_outlined,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        onBeforeSelect: () => widget.canSelect.call(job),
        onSelected: ({bool selected = false}) {
          isSelected.value = selected;
          widget.onJobCardSelected.call(job);
        },
        child: ValueListenableBuilder(
          valueListenable: isSelected,
          builder: (BuildContext context, selected, Widget? child) {
            return Column(
              children: [
                const SizedBox(height: Insets.gutter),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.gutter,
                  ),
                  child: CardViewJobDetails(joblist: job),
                ),
                if (context.userHasPermission(UserPermissions.jobsWrite))
                  CardActionButtons(
                    job: job,
                    filterController: widget.filterController,
                    queryLayoutController: widget.queryLayoutController,
                    jobQuickCloneController: jobQuickCloneController,
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> _onRowTap(BuildContext context) async {
    final jobService = context.read<JobListService>();
    await EmrDialog.modal<void>(
      context,
      titleText: '${context.l10n.jobDetails}  #${widget.joblist.jobNumber}',
      builder: (_) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Provider.value(
          value: jobService,
          child: JobDetailedView(
            jobNumber: widget.joblist.jobNumber ?? 0,
            showTitleBar: false,
          ),
        ),
      ),
      buttons: {},
    );
  }
}
