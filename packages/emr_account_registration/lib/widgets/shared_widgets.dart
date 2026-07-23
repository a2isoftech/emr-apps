import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

Widget verticalSpacer({double height = Insets.gutter}) {
  return SizedBox(height: height);
}

Widget horizontalSpacer({double width = Insets.gutter}) {
  return SizedBox(width: width);
}

Widget colouredButton({
  required String text,
  required void Function()? onPressed,
  Color? color,
  double? width,
  Color? textColor,
  String? tooltip,
  ButtonStyle? style,
}) {
  return Tooltip(
    message: tooltip ?? '',
    child: SizedBox(
      width: width ?? 200,
      child: TextButton(
        style:
            style ??
            ButtonStyle(backgroundColor: WidgetStatePropertyAll(color)),
        onPressed: onPressed,
        child: style != null
            ? Text(text)
            : Text(text, style: TextStyle(color: textColor ?? Colors.black)),
      ),
    ),
  );
}

Widget loginDivider({required bool isLeft, required ThemeData theme}) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.only(
        left: isLeft
            ? AccountRegistrationInsets.gutterTimes5
            : Insets.gutter * 2,
        right: isLeft
            ? Insets.gutter * 2
            : AccountRegistrationInsets.gutterTimes5,
      ),
      child: Divider(color: theme.colorScheme.outline),
    ),
  );
}

Widget blueButton({
  required String text,
  required ThemeData theme,
  required void Function()? onPressed,
}) {
  final brandColours = theme.extension<EOBrandTheme>();

  return SizedBox(
    width: 300,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(brandColours?.brandColour),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: theme.textTheme.labelLarge!.copyWith(
          color: brandColours?.onBrandColour,
        ),
      ),
    ),
  );
}

Widget tickOrExclaimation({required ThemeData theme, required bool enabled}) {
  return enabled
      ? Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: enabled ? theme.primaryColor : theme.disabledColor,
              width: 2,
            ),
          ),
          child: Icon(
            Icons.check,
            color: enabled ? theme.primaryColor : theme.disabledColor,
            size: 16,
          ),
        )
      : const Icon(Icons.error, color: Colors.red, size: 20);
}

Widget tickInCircle({
  required ThemeData theme,
  required bool enabled,
  double? width = 24,
  double? height = 24,
  double? tickSize = 16,
}) {
  return Container(
    width: width ?? 24,
    height: height ?? 24,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: enabled ? theme.primaryColor : theme.disabledColor,
        width: 2,
      ),
    ),
    child: Icon(
      Icons.check,
      color: enabled ? theme.primaryColor : theme.disabledColor,
      size: tickSize ?? 16,
    ),
  );
}

Widget tickWithText(
  ThemeData theme,
  String text, {
  bool isInPortraitMode = false,
}) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: Insets.gutter,
    children: [
      tickInCircle(
        theme: theme,
        enabled: true,
        height: isInPortraitMode ? 18 : 24,
        width: isInPortraitMode ? 18 : 24,
        tickSize: isInPortraitMode ? 12 : 16,
      ),
      Text(
        text,
        style: isInPortraitMode
            ? theme.textTheme.titleMedium
            : theme.textTheme.titleLarge,
      ),
    ],
  );
}

Widget processingIndicator() {
  return const Center(
    child: SizedBox(
      height: Insets.gutter * 2,
      width: Insets.gutter * 2,
      child: CircularProgressIndicator(),
    ),
  );
}

Widget processingIndicatorText() {
  return SizedBox(
    height: Insets.gutter * 2,
    width: Insets.gutter * 2,
    child: Text('Loading...', style: TextStyle(fontSize: 50)),
  );
}

Widget dividerRow({required Color colour}) {
  return Divider(
    color: colour,
    height: 50,
    indent: 20,
    endIndent: 20,
    thickness: 1,
  );
}

Widget loginOrStartRegistrationButton(
  JourneyController journeyController,
  SignupModel signupModel,
  BuildContext context, {
  required bool isForLogin,
  required String emailVerificationCallbackUrl,
  required bool canSubmit,
}) {
  final theme = Theme.of(context);
  return Center(
    child: SizedBox(
      width: 200,
      //These changes are only for demonstration purposes.
      child: Semantics(
        label: context.l10n.proceedWithLogin,
        child: ElevatedButton(
          style: canSubmit
              ? EmrButtonStyles.cta()
              : AccountRegistrationButtonStyles.disabled(theme),
          onPressed: canSubmit
              ? () async {
                  journeyController.startProcessing();

                  if (!await journeyController.validationService
                      .checkCountrySelected(
                        signupModel,
                        context.l10n.errMsgSelectCountry,
                      )) {
                    return;
                  }
                  if (!context.mounted) return;
                  await journeyController.uiActions.onNextFromRegister(
                    journeyController,
                    signupModel,
                    emailVerificationCallbackUrl,
                    context: context,
                  );
                  journeyController.endProcessing();
                }
              : null,
          child: isForLogin
              ? Text(context.l10n.routeDisplayNameLogIn)
              : Text(context.l10n.letsGo),
        ),
      ),
    ),
  );
}

Widget wrappedWidget({
  required String label,
  required Widget child,
  required ThemeData theme,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: theme.textTheme.labelSmall),
      child,
    ],
  );
}
