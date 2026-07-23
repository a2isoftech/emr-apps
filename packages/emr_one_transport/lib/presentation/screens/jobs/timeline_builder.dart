import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/job_event_timeline.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/wrapped_timeline.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TimelineBuilder extends StatelessWidget {
  const TimelineBuilder({
    required this.timelineData,
    required this.jobStatus,
    this.driverName,
    this.dispatcherName,
    super.key,
  });
  final List<JobEventTimeline> timelineData;
  final String? driverName;
  final String? dispatcherName;
  final String jobStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              context.l10n.timeline,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              spacing: Insets.gutter,
              mainAxisSize: MainAxisSize.min,
              children: [
                _getDispatcherIcon(),
                Text(
                  '${context.l10n.dispatcher} - $dispatcherName',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(width: 50),
            Row(
              spacing: Insets.gutter,
              mainAxisSize: MainAxisSize.min,
              children: [
                _getDriverIcon(),
                Text(
                  '${context.l10n.driver} - $driverName',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(width: 100),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          child: WrappedTimeline<JobEventTimeline>(
            items: timelineData,
            spacing: 260,
            tileHeight: 84,
            lineColor: TransportAppColors.jobTimelineConnectorColor,
            cornerRadius: Insets.gutter / 2,
            endDotColor: jobStatus == JobStatus.completed.toString()
                ? TransportAppColors.selectedDateBorderColor
                : (jobStatus == JobStatus.deleted.toString() ||
                      jobStatus == JobStatus.abandoned.toString())
                ? TransportAppColors.jobTimelineConnectorColor
                : Colors.transparent,
            connectorHorizontalPadding: 170,
            itemBuilder: (context, item, index) {
              final moreInfo = hasMoreInfo(item);
              return Container(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: TransportAppColors.boxShadowColor,
                      blurRadius: 2,
                    ),
                  ],
                  border: Border.all(color: TransportAppColors.greyCardBg),
                  borderRadius: BorderRadius.circular(Insets.gutter / 2),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            getEventType(context, item),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        if (moreInfo.isNotEmpty)
                          Tooltip(
                            message: StringHelper.limitText(moreInfo),
                            child: const Icon(
                              Icons.info,
                              size: Constants.fontSizeXXL,
                            ),
                          ),
                      ],
                    ),
                    Tooltip(
                      message: getData(item),
                      child: Text(
                        getData(item),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            _buildDateString(
                              index > 0 ? timelineData[index - 1] : null,
                              timelineData[index],
                            ),
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        if (item.images.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Insets.gutter / 2,
                            ),
                            child: SizedBox(
                              width: 50,
                              child: RichText(
                                text: TextSpan(
                                  text: context.l10n.images,
                                  style: TextStyle(
                                    color: TransportAppColors.imageTextColor,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      _openImageModal(context, item.images);
                                    },
                                ),
                              ),
                            ),
                          ),
                        if (item.isDispatcherEvent)
                          _getDispatcherIcon()
                        else
                          _getDriverIcon(),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _openImageModal(BuildContext context, List<String> paths) {
    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.containerImageGallery,
      builder: (_) => SizedBox(
        width: 600,
        height: 400,
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(
              paths.length,
              (index) =>
                  TappableImage(imagePath: paths[index], thumbnailSize: 200),
            ),
          ),
        ),
      ),
      buttons: {},
    );
  }

  String getData(JobEventTimeline timelineData) {
    dynamic data;
    timelineData.data?.forEach((key, value) {
      switch (timelineData.timeLineEventType) {
        case StringConstants.mileageEvent:
          if (key == StringConstants.mileageEvent) {
            data = value;
          }
        case StringConstants.driverDelayEvent:
          if (key == StringConstants.timeMinutes) {
            final netValue = double.tryParse(value.toString()) ?? 0.0;
            final formattedValue = double.parse(netValue.toStringAsFixed(3));
            data = '$formattedValue mins';
          }
        default:
          data = value;
      }
    });
    return data != null ? data.toString() : timelineData.locationCode ?? '';
  }

  String getEventType(BuildContext context, JobEventTimeline timelineData) {
    var eventType = '';

    switch (timelineData.timeLineEventType) {
      case StringConstants.alreadyLoadedEvent:
        eventType = context.l10n.loaded;
      case StringConstants.keepContainerEvent:
        eventType = context.l10n.keepContainer;
      case StringConstants.containerPickedEvent:
        eventType = context.l10n.pickedContainer;
      case StringConstants.containerDroppedEvent:
        eventType = context.l10n.droppedContainer;
      case StringConstants.jobCreatedEvent:
        eventType = context.l10n.jobCreated;
      case StringConstants.jobStartedEvent:
        eventType = context.l10n.jobStarted;
      case StringConstants.jobFinishedEvent:
        eventType = context.l10n.finishedTheJob;
      case StringConstants.driverDelayEvent:
        eventType = context.l10n.delay;
      case StringConstants.reachedLocationEvent:
        eventType = context.l10n.reachedLocation;
      case StringConstants.mileageEvent:
        eventType = context.l10n.mileage;
      case StringConstants.contentEvent:
        eventType = context.l10n.content;
      case StringConstants.arrivedEvent:
        final location = (timelineData.locationAt == StringConstants.yard
            ? context.l10n.yard
            : context.l10n.customer);
        eventType = '${context.l10n.arrivedAt} $location';
      case StringConstants.departedEvent:
        final location = (timelineData.locationAt == StringConstants.yard
            ? context.l10n.yard
            : context.l10n.customer);
        eventType = '${context.l10n.departedFrom} $location';
      case StringConstants.incidentEvent:
        eventType = context.l10n.incident;
      case StringConstants.unAssignEvent:
        final vrm = getDispatcherAssignUnAssignDetail(timelineData);
        eventType = '${context.l10n.unassigned} $vrm'.trim();
      case StringConstants.jobDeletedEvent:
        eventType = context.l10n.deletedTheJob;
      case StringConstants.abandonEvent:
        eventType = context.l10n.abandoned;
      case StringConstants.assignEvent:
        final vrm = getDispatcherAssignUnAssignDetail(timelineData);
        eventType = '${context.l10n.assignMessage} $vrm'.trim();
      default:
        eventType = '';
    }
    return eventType;
  }

  String getDispatcherAssignUnAssignDetail(JobEventTimeline timelineData) {
    final data = timelineData.data ?? {};

    final vrm = data[StringConstants.vrmDisplay]?.toString().trim() ?? '';
    if (vrm.isNotEmpty) {
      return '${StringConstants.vrm} $vrm';
    }

    final haulierCode =
        data[StringConstants.haulierCodeKey]?.toString().trim() ?? '';
    if (haulierCode.isNotEmpty) {
      return '${StringConstants.haulierDisplay} $haulierCode';
    }
    return '';
  }

  String _buildDateString(
    JobEventTimeline? prevEvent,
    JobEventTimeline currentEvent,
  ) {
    final prev = prevEvent?.eventTime.toLocal();
    final curr = currentEvent.eventTime.toLocal();

    if (prev == null) return Constants.monthDayFormat.format(curr);

    if (_isSameDay(curr, prev)) return Constants.timeFormat.format(curr);
    return Constants.monthDayFormat.format(curr);
  }

  bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  Widget _getDriverIcon() {
    return Container(
      padding: const EdgeInsets.all(4),
      color: TransportAppColors.driverEventBgColor,
      child: Icon(
        Icons.local_shipping,
        color: TransportAppColors.driverIconColor,
        size: Constants.iconSizeM,
      ),
    );
  }

  Widget _getDispatcherIcon() {
    return Container(
      padding: const EdgeInsets.all(4),
      color: TransportAppColors.dispatherEventBgColor,
      child: Icon(
        Icons.support_agent,
        color: TransportAppColors.dispatherIconColor,
        size: Constants.iconSizeM,
      ),
    );
  }

  String hasMoreInfo(JobEventTimeline item) {
    final buffer = StringBuffer();

    if (item.timeLineEventType == StringConstants.unAssignEvent ||
        item.timeLineEventType == StringConstants.abandonEvent ||
        item.timeLineEventType == StringConstants.jobDeletedEvent ||
        item.timeLineEventType == StringConstants.driverDelayEvent ||
        item.timeLineEventType == StringConstants.containerPickedEvent ||
        item.timeLineEventType == StringConstants.containerDroppedEvent) {
      final reason =
          item.data?[StringConstants.reason]?.toString().trim() ?? '';
      final comment = item.data?['Comments']?.toString().trim() ?? '';

      if (reason.isNotEmpty) buffer.write(reason);

      if (comment.isNotEmpty) {
        buffer.write('${reason.isNotEmpty ? '\n' : ''}Comment: $comment');
      }
    }

    return buffer.toString();
  }
}
