import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/helpers/navigation_helper.dart';
import 'package:flutter/material.dart';

class NavigatorText extends StatelessWidget {
  const NavigatorText({
    required this.jobNumber,
    this.textStyle,
    super.key,
  });
  final int jobNumber;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          final url = context.namedLocation(
            RoutingPathName.jobTracking,
            params: {
              StringConstants.jobid: '$jobNumber',
            },
          );

          NavigationHelper.openInNewTab(url);
        },
        child: Text(
          '$jobNumber',
          style: textStyle ??
              Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: TransportAppColors.inProgressJobColor,
                    fontWeight: FontWeight.bold,
                  ),
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
