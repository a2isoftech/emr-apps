import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_securitymgmt/screens/sm_deskscreen.dart';
import 'package:flutter/material.dart';

class SmDeskBookFail extends StatelessWidget {
  const SmDeskBookFail({super.key});

  static const double kIconSize = 64;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kIconSize),
        const Icon(
          Icons.error,
          size: 96,
        ),
        Text('${context.l10n.sorryThereWasaProblem}!'),
        const SizedBox(height: kIconSize),
        Text(
          'Your booking was not created',
          style: EmrOneConstants.kSmallHeadingTextStyle,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context, rootNavigator: true)
                  .pop(BookingModalResult.bookingModalClosed),
              child: Text(context.l10n.ok),
            ),
          ],
        ),
      ],
    );
  }
}
