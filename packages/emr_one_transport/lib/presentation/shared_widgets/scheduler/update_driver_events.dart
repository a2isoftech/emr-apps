import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/scheduler/driver_events_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/job_delay.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/data/services/job_helper.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/date_with_time_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/delay_management_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/container_retention_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateDriverEvents extends StatefulWidget {
  const UpdateDriverEvents({required this.job, super.key});

  final SchedulerJob job;

  @override
  State<UpdateDriverEvents> createState() => _UpdateDriverEventsState();
}

class _UpdateDriverEventsState extends State<UpdateDriverEvents> {
  late DriverEventController _controller;

  @override
  void initState() {
    super.initState();
    _controller = context.read<DriverEventController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.initialize(widget.job);
    });
  }

  @override
  void dispose() {
    _controller.resetForm();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DriverEventController>(
      builder: (context, controller, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Stack(
            children: [
              Form(
                key: controller.formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (controller.driverEventDto == null) ...[
                      const Center(child: Text(StringConstants.noData)),
                    ] else ...[
                      Row(
                        spacing: Insets.gutter * 2,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: _buildLeftColumn(controller)),
                          Expanded(child: _buildRightColumn(controller)),
                        ],
                      ),
                      const SizedBox(height: Insets.gutter * 2),
                    ],
                  ],
                ),
              ),
              if (controller.isloading)
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const Center(child: LoadingIndicator()),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLeftColumn(DriverEventController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionHeader(context.l10n.dateTime),
        ValueListenableBuilder(
          valueListenable: controller.isJobStartDateTimeRequiredField,
          builder: (context, notifiedValue, child) {
            return DateWithTimeWidget(
              dateTimeNotifier: controller.jobStartDate,
              label: context.l10n.startDate,
              dateValidator: notifiedValue ? Validators.required : null,
            );
          },
        ),
        ValueListenableBuilder(
          valueListenable: controller.isJobEndDateTimeRequiredField,
          builder: (context, notifiedValue, child) {
            return DateWithTimeWidget(
              dateTimeNotifier: controller.jobEndDate,
              label: context.l10n.endDate,
              dateValidator: (value) => Validators.join([
                if (notifiedValue) ...[Validators.required(value)],
                DateHelper.validateEndDate(
                  _controller.jobStartDate.value,
                  _controller.jobEndDate.value,
                ),
              ]),
              timeValidator: (value) => Validators.join([
                if (notifiedValue) ...[Validators.required(value)],
                DateHelper.validateEndDate(
                  _controller.jobStartDate.value,
                  _controller.jobEndDate.value,
                  compareTime: true,
                ),
              ]),
            );
          },
        ),
        const SizedBox(height: Insets.gutter),
        _sectionHeader(context.l10n.notes),
        EmrTextFormField(
          labelText: context.l10n.dispatcherNotes,
          maxLines: 3,
          keyboardType: TextInputType.multiline,
          binding: controller.dispatcherNotesNotifier,
        ),
        EmrTextFormField(
          labelText: context.l10n.officeNotes,
          maxLines: 3,
          keyboardType: TextInputType.multiline,
          binding: controller.officeNotesNotifier,
        ),
        EmrTextFormField(
          labelText: context.l10n.driverNotes,
          maxLines: 3,
          keyboardType: TextInputType.multiline,
          binding: controller.driverNotesNotifier,
          readOnly: ValueNotifier(true),
        ),
      ],
    );
  }

  Widget _buildRightColumn(DriverEventController controller) {
    return ValueListenableBuilder(
      valueListenable: controller.jobEndDate,
      builder: (context, value, child) {
        return Column(
          children: [
            if (value == null)
              Text(
                context.l10n.formDisabledHint,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDriverEventsSection(controller),
                    const SizedBox(height: Insets.gutter),
                    _buildContainerSection(controller),
                  ],
                ),
                if (value == null) overlay(),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildContainerSection(DriverEventController controller) {
    final customerLocationContainers =
        controller.driverEventDto?.customerLocationContainers.toList() ?? [];
    final startLocationContainers =
        controller.driverEventDto?.startLocationContainers.toList() ?? [];

    String mkKey(String? guid, String section, int index) =>
        '${guid ?? "NA"}|$section|$index';

    final containerList = <Widget>[];
    final configMap = JobHelper.getContainerConfigs();
    final config = configMap[jobTypeFromApiValue(widget.job.jobType)];

    // Customer location containers
    for (var i = 0; i < customerLocationContainers.length; i++) {
      final dto = customerLocationContainers[i];
      containerList.add(
        ContainerRetentionWidget(
          key: ValueKey(mkKey(dto.containerGuid, 'customer', i)),
          containerLabel:
              config?[ContainerLocation.customerLocation]?.label ?? '',
          container: dto,
          index: i,
          showRetentionCheckBox:
              config?[ContainerLocation.customerLocation]?.checkboxRequired ??
              false,
          onUpdate: controller.updateCustomerContainer,
        ),
      );
    }

    // Start location containers
    for (var j = 0; j < startLocationContainers.length; j++) {
      final dto = startLocationContainers[j];
      containerList.add(
        ContainerRetentionWidget(
          key: ValueKey(mkKey(dto.containerGuid, 'start', j)),
          containerLabel: config?[ContainerLocation.startLocation]?.label ?? '',
          container: dto,
          index: j,
          showRetentionCheckBox:
              config?[ContainerLocation.startLocation]?.checkboxRequired ??
              false,
          onUpdate: controller.updateStartContainer,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Insets.gutter,
      children: [
        _sectionHeader(context.l10n.container),
        ...containerList,
        if (controller.driverEventDto?.pickContainerImages.isNotEmpty ?? false)
          _buildImagesSection(
            context,
            context.l10n.pick,
            controller.driverEventDto?.pickContainerImages ?? [],
          ),
        if (controller.driverEventDto?.dropContainerImages.isNotEmpty ?? false)
          _buildImagesSection(
            context,
            context.l10n.drop,
            controller.driverEventDto?.dropContainerImages ?? [],
          ),
      ],
    );
  }

  Widget overlay() {
    return const Positioned.fill(
      child: ColoredBox(
        color: Color.fromARGB(115, 186, 186, 186), // semi-transparent backdrop
      ),
    );
  }

  Widget _buildDriverEventsSection(DriverEventController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DelayManagementWidget(
          delayReasons: controller.delayReasons,
          delayNotifier: controller.jobDelaysNotifier,
          onAddDelay: () {
            final newDelay = JobDelay();
            final currentEvents = controller.jobDelaysNotifier.value;
            controller.jobDelaysNotifier.value = [...currentEvents, newDelay];
          },
          onRemoveDelay: controller.removeDriverEvent,
          onUpdateDelay: controller.updateDelay,
        ),
      ],
    );
  }

  Widget _sectionHeader(String text) => Padding(
    padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
    child: Text(
      text,
      style: Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
    ),
  );

  Widget _buildImagesSection(
    BuildContext context,
    String sectionName,
    List<String> images,
  ) {
    const double thumb = 150;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(sectionName),
        const SizedBox(height: Insets.gutter / 4),
        Wrap(
          spacing: Insets.gutter / 4,
          runSpacing: Insets.gutter / 4,
          children: images.map((path) {
            return SizedBox(
              width: thumb,
              height: thumb,
              child: TappableImage(
                imagePath: path,
                thumbnailSize: thumb.toInt(),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
