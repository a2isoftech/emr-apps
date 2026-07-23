import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LayoutSwitcher extends StatelessWidget with FullExtent {
  LayoutSwitcher({
    required this.widgets1Text,
    required this.widgets2HoAddress,
    required this.widget3Image,
    super.key,
  });

  final List<Widget> widgets1Text;
  final List<Widget> widgets2HoAddress;
  final Widget widget3Image;

  @override
  Widget build(BuildContext context) {
    final (isPhone, isNotDesktop) = context.getScreenFacts();

    return isPhone || isNotDesktop
        ? Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...widgets1Text,
                verticalSpacer(),
                ...widgets2HoAddress,
                verticalSpacer(),
                widget3Image,
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 35,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    Insets.gutter,
                    Insets.gutter,
                    Insets.gutter,
                    Insets.gutter * 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...widgets1Text,
                      ...widgets2HoAddress,
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 65,
                child: widget3Image,
              ),
            ],
          );
  }
}
