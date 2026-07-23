import 'package:emr_one_core/auth/auth.dart';
import 'package:flutter/material.dart';

class WaitingIndicator extends StatelessWidget {
  const WaitingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Center(
      key: const ValueKey<BadgeLoginState>(BadgeLoginState.loggingIn),
      child: CircularProgressIndicator(
        color: isDarkMode
            ? EmrFlutterFirebaseAuthEmrColours.secondaryCyan
            : EmrFlutterFirebaseAuthEmrColours.primaryBlue,
      ),
    );
  }
}
