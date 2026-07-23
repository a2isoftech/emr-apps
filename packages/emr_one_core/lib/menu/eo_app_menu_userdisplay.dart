import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EODrawUserDisplay extends StatefulWidget {
  const EODrawUserDisplay({
    super.key,
    this.textColour = Colors.black,
  });

  final Color textColour;

  @override
  State<EODrawUserDisplay> createState() => _EODrawUserDisplayState();
}

class _EODrawUserDisplayState extends State<EODrawUserDisplay> {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userService.user.name,
              style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                color: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .appBarForegroundColour,
              ),
            ),
            Text(
              userService.user.emailAddress,
              style: EmrOneConstants.kBannerTextStyle.copyWith(
                color: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .appBarForegroundColour,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
