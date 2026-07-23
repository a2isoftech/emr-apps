import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_securitymgmt/screens/sm_deskscreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SmDeskBookOk extends StatelessWidget {
  const SmDeskBookOk({required this.bookedDate, super.key});

  final DateTime bookedDate;
  static const double kIconSize = 128;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: Insets.gutter),
        Icon(
          Icons.check_circle,
          color: Theme.of(context).colorScheme.tertiary,
          size: kIconSize,
        ),
        const SizedBox(height: Insets.gutter),
        Text('${context.l10n.great}!'),
        const SizedBox(height: Insets.gutter),
        Text(
          'Your booking was created '
          'for ${DateFormat.yMMMd().format(bookedDate)}',
          style: EmrOneConstants.kSmallHeadingTextStyle,
        ),
        const SizedBox(height: Insets.gutter),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'IMPORTANT INFORMATION PLEASE READ\n',
            style: EmrOneConstants.kMediumHeadingTextStyle,
            children: [
              TextSpan(
                text: '\nAll hotdesks are equipped with the following; '
                    '1 x 27" Monitor, 1 x laptop dock, 1 x laptop stand.\n',
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              TextSpan(
                text: '\nOnly occupy the hotdesk that you have booked for'
                    ' the allocated time.\n',
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              TextSpan(
                text: '\nPlease follow the Clear Desk Policy as normal'
                    ' when using Hotdesks.\n',
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              TextSpan(
                text: '\nPlease leave your Hotdesk clear at the end of each '
                    'booking. Any items left at end of day will be '
                    'disposed of.\n',
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              TextSpan(
                text: '\nIf you no longer require a booking, please make sure '
                    'you amend or cancel this to free up the desk for other'
                    ' colleagues.\n',
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              TextSpan(
                text: '\n\nPlease report any issues with connections / power'
                    ' etc to the IT Service Desk.',
                style: EmrOneConstants.kSmallestHeadingTextStyle
                    .copyWith(color: Theme.of(context).colorScheme.error),
              ),
              TextSpan(
                text: '\n\nDO NOT remove any of the installed equipment or '
                    ' make changes to cabling.',
                style: EmrOneConstants.kSmallestHeadingTextStyle
                    .copyWith(color: Theme.of(context).colorScheme.error),
              ),
            ],
          ),
        ),
        const SizedBox(height: Insets.gutter),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context, rootNavigator: true)
                  .pop(BookingModalResult.bookingModalCreatedClosed),
              child: Text(context.l10n.ok),
            ),
          ],
        ),
      ],
    );
  }
}
