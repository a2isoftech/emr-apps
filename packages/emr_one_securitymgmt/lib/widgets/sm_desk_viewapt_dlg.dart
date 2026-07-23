import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_securitymgmt/models/schedule_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SmDeskViewAptDlg extends StatefulWidget {
  const SmDeskViewAptDlg({required this.appointment, super.key});

  final SmScheduleItem appointment;

  @override
  State<SmDeskViewAptDlg> createState() => _SmDeskViewAptDlgState();
}

class _SmDeskViewAptDlgState extends State<SmDeskViewAptDlg> {
  @override
  Widget build(BuildContext context) {
    final startDate = DateTime.parse(widget.appointment.start.dateTime);
    final endDate = DateTime.parse(widget.appointment.end.dateTime);

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Booking',
              textAlign: TextAlign.start,
              style: EmrOneConstants.kMediumHeadingTextStyle,
            ),
            Text(
              widget.appointment.subject,
              textAlign: TextAlign.start,
              style: EmrOneConstants.kSmallHeadingTextStyle,
            ),
            Text(
              widget.appointment.location,
              textAlign: TextAlign.start,
            ),
            Text(
              '${DateFormat.yMMMd().format(startDate)} '
              '- ${DateFormat.yMMMd().format(endDate)}',
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
