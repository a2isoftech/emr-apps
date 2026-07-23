import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class InvalidOperation extends StatelessWidget with FullExtent {
  InvalidOperation({
    required this.customerUserInfoService,
    required this.message,
    required this.buttonText,
    this.onPressed,
    super.key,
  });

  final CustomerUserInfoService customerUserInfoService;
  final String message;
  final String? buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final containerWidth = context.screenWidth();
    final (isPhone, _) = context.getScreenFacts();

    return Column(
      children: [
        verticalSpacer(),
        Center(
          child: Card(
            elevation: 5, // Add elevation for a shadow effect
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5,
                color: theme.colorScheme.outline,
              ), // Change the color and width here
              borderRadius: BorderRadius.circular(
                15,
              ), // Adjust the radius as per your requirement
            ),
            child: Container(
              width:
                  isPhone ? containerWidth - Insets.gutter : containerWidth / 2,
              color: theme.colorScheme.surface,
              padding: const EdgeInsets.all(Insets.gutter),
              child: Wrap(
                spacing: Insets.gutter,
                direction: Axis.vertical,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Text(
                    message,
                    style: theme.textTheme.titleLarge,
                  ),
                  if (buttonText != null && buttonText!.isNotEmpty) ...[
                    verticalSpacer(height: Insets.gutter * 2),
                    colouredButton(
                      text: buttonText!,
                      color: theme.primaryColor,
                      onPressed: onPressed ??
                          () async {
                            await customerUserInfoService.signOut();
                          },
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
