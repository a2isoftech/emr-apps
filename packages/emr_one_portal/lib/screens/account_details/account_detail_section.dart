import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AccountDetailsSection extends StatelessWidget with FullExtent {
  AccountDetailsSection({
    required this.widgets1,
    required this.widgets2,
    required this.widgets3,
    super.key,
  });

  final List<Widget> widgets1;
  final List<Widget> widgets2;
  final List<Widget> widgets3;

  @override
  Widget build(BuildContext context) {
    final (isPhone, isNotDesktop) = context.getScreenFacts();
    return isPhone || isNotDesktop
        ? Padding(
            padding: const EdgeInsets.all(
              Insets.gutter,
            ),
            child: Column(
              children: [
                ...widgets1,
                verticalSpacer(),
                ...widgets2,
                verticalSpacer(),
                ...widgets3,
                verticalSpacer(),
              ],
            ),
          )
        : Row(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(
                    Insets.gutter,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widgets1,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets2,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(
                    Insets.gutter,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widgets3,
                  ),
                ),
              ),
            ],
          );
  }
}
