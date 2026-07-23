import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/container_details_cardview.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/row_with_title_value.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardViewJobDetails extends StatefulWidget {
  const CardViewJobDetails({required this.joblist, super.key});
  final JobList joblist;
  @override
  State<CardViewJobDetails> createState() => _CardViewJobDetailsState();
}

class _CardViewJobDetailsState extends State<CardViewJobDetails> {
  @override
  Widget build(BuildContext context) {
    final job = widget.joblist;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowWithTitleValue(
          label: context.l10n.jobType,
          value: jobTypeFromApiValue(job.jobType ?? '').toString(),
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.haulier,
          value: job.haulier != null
              ? '${job.haulier!.haulierCode ?? ''} - '
                    '${job.haulier!.haulierName ?? ''}'
              : StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.vrm,
          value: job.haulier != null
              ? job.haulier!.vrm ?? StringConstants.noData
              : StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.customer,
          value: job.customer != null
              ? '${job.customer!.code} - ${job.customer!.name}'
              : StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.startLocation,
          value: job.startLocation != null
              ? StringHelper.buildAddress(job.startLocation!)
              : StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.customerLocation,
          value: job.customerLocation != null
              ? StringHelper.buildAddress(job.customerLocation!)
              : StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.endLocation,
          value: job.endLocation != null
              ? StringHelper.buildAddress(job.endLocation!)
              : StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.createdDate,
          value: DateFormat(
            StringConstants.ymdTimeFormat,
          ).format(DateTime.parse(job.created!.at.toString())),
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.scheduledOn,
          value: job.scheduledDate != null
              ? DateFormat(
                  StringConstants.ymdTimeFormat,
                ).format(DateTime.parse(job.scheduledDate!.toString()))
              : '-',
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 4),
        RowWithTitleValue(
          label: context.l10n.dispatcherNotes,
          value: job.dispatcherNotes ?? StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 2),
        RowWithTitleValue(
          label: context.l10n.officeNotes,
          value: job.officeNotes ?? StringConstants.noData,
          valueStyle: EmrOneConstants.kOpenSans12TextStyle,
        ),
        const SizedBox(height: Insets.gutter / 2),
        _getContainerDetails(),
        const SizedBox(height: 6),
      ],
    );
  }

  Widget _getContainerDetails() {
    return ContainerDetailsCardView(joblist: widget.joblist);
  }
}
