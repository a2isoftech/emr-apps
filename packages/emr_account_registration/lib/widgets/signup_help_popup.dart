import 'package:emr_account_registration/signup.dart';
import 'package:flutter/material.dart';

class SignupHelpPopup extends StatelessWidget {
  const SignupHelpPopup({
    required this.clickableTitle,
    required this.title,
    required this.popupWidget,
    super.key,
  });
  final String clickableTitle;
  final String title;
  final Widget popupWidget;

  @override
  Widget build(BuildContext context) {
    return HelpPopup(
      clickable: Text(
        clickableTitle,
        style: Theme.of(context).textTheme.labelLarge?.underlined(),
      ),
      title: title,
      popup: popupWidget,
    );
  }
}
