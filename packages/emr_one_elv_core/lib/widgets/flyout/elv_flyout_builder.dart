import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/flyout.dart';
import 'package:emr_one_elv_core/extensions/flyout_width_extension.dart';
import 'package:emr_one_elv_core/widgets/flyout/flyout_buttons.dart';
import 'package:flutter/material.dart';

Future<void> elvStandardFlyout({
  required BuildContext context,
  required Widget body,
  required String heading,
  List<FlyoutButtons>? actionButtons,
}) async {
  await Flyout.show<void>(
    width: context.elvFlyoutWidth(),
    context: context,
    builder: (context) => Material(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: Text(
                  heading,
                  style: EmrOneConstants.kSmallHeadingTextStyle,
                ),
              ),
              if (MediaQuery.of(context).size.width < 764)
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: context.pop,
                    icon: const Icon(Icons.close),
                  ),
                ),
            ],
          ),
          Expanded(child: body),
          if (actionButtons != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: actionButtons,
            ),
          ],
        ],
      ),
    ),
  );
}
