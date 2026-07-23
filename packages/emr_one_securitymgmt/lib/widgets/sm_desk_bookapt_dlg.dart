import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_securitymgmt/controllers/sm_bookingcontroller.dart';
import 'package:emr_one_securitymgmt/models/attendee_model.dart';
import 'package:emr_one_securitymgmt/models/email_address_model.dart';
import 'package:emr_one_securitymgmt/models/schedule_result.dart';
import 'package:emr_one_securitymgmt/screens/sm_deskscreen.dart';
import 'package:emr_one_securitymgmt/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SmDeskBoolAptDlg extends StatefulWidget {
  const SmDeskBoolAptDlg({
    required this.defaultDate,
    required this.scheduleItem,
    required this.location,
    required this.controller,
    super.key,
  });

  final DateTime defaultDate;
  final SmScheduleResult scheduleItem;
  final SmBookingController controller;
  final String location;

  @override
  State<SmDeskBoolAptDlg> createState() => _SmDeskBoolAptDlgState();
}

class _SmDeskBoolAptDlgState extends State<SmDeskBoolAptDlg> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: ValueListenableBuilder(
          valueListenable: widget.controller.status,
          builder: (context, value, child) => _bookingUi(context),
        ),
      ),
    );
  }

  Widget _bookingUi(BuildContext context) {
    if (widget.controller.status.value == SmDeskBookingStatus.booked) {
      return SmDeskBookOk(bookedDate: widget.defaultDate);
    }

    if (widget.controller.status.value == SmDeskBookingStatus.failed) {
      return const SmDeskBookFail();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Booking',
          textAlign: TextAlign.start,
          style: EmrOneConstants.kMediumHeadingTextStyle,
        ),
        const Divider(),
        Text(
          'Date',
          style: EmrOneConstants.kSmallHeadingTextStyle,
        ),
        TextFormField(
          readOnly: true,
          initialValue: DateFormat.yMMMd().format(widget.defaultDate),
        ),
        const SizedBox(height: Insets.gutter),
        Text(
          'Location',
          style: EmrOneConstants.kSmallHeadingTextStyle,
        ),
        TextFormField(
          readOnly: true,
          initialValue: widget.scheduleItem.scheduleId,
        ),
        const SizedBox(height: Insets.gutter),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed:
                  widget.controller.status.value == SmDeskBookingStatus.booking
                      ? null
                      : () async {
                          final userInfo = UserInfoService.instance!.userInfo;

                          final eventDate = widget.defaultDate;

                          final startDate = DateTime(
                            eventDate.year,
                            eventDate.month,
                            eventDate.day,
                          );

                          final endDate = DateTime(
                            eventDate.year,
                            eventDate.month,
                            eventDate.day,
                          ).add(const Duration(days: 1));

                          await widget.controller.createEvent(
                            startDate,
                            endDate,
                            userInfo.name,
                            widget.location,
                            'free',
                            [
                              SmAttendeeModel(
                                'required',
                                SmEmailAddressModel(
                                  userInfo.emailAddress,
                                  userInfo.name,
                                ),
                              ),
                              SmAttendeeModel(
                                'required',
                                SmEmailAddressModel(
                                  widget.scheduleItem.scheduleId,
                                  widget.scheduleItem.scheduleId.split('@')[0],
                                ),
                              ),
                            ],
                          );
                        },
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter * 0.75),
                child: Text(context.l10n.ok),
              ),
            ),
            ElevatedButton(
              onPressed:
                  widget.controller.status.value == SmDeskBookingStatus.booking
                      ? null
                      : () => Navigator.of(context, rootNavigator: true)
                          .pop(BookingModalResult.bookingModalClosed),
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter * 0.75),
                child: Text(context.l10n.cancel),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
