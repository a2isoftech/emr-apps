import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/widgets/elv_header_tabs.dart';
import 'package:flutter/material.dart';

class InspectionHeader extends StatelessWidget {
  const InspectionHeader({
    required this.title,
    this.subTitle,
    this.vehiclePrice,
    this.tabs,
    super.key,
  });

  final Widget title;
  final Widget? subTitle;
  final Widget? vehiclePrice;
  final List<ElvTab>? tabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: subTitle == null
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title,
                      if (subTitle != null) ...{
                        subTitle!,
                      },
                    ],
                  ),
                ),
                if (vehiclePrice != null) ...{
                  Container(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(Insets.gutter / 2),
                      ),
                    ),
                    child: vehiclePrice,
                  ),
                },
              ],
            ),
          ),
          if (tabs != null)
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: Insets.gutter),
                child: Row(
                  children: tabs!,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
