import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class ElvAddVehicleDialog extends StatelessWidget {
  const ElvAddVehicleDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width / 1.5,
      height: height / 1.5,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Theme.of(context).shadowColor,
                    padding: EdgeInsets.zero,
                    labelPadding: const EdgeInsets.only(
                      right: Insets.gutter * 1.5,
                    ),
                    indicatorWeight: 4,
                    labelColor: Theme.of(context).shadowColor,
                    tabAlignment: TabAlignment.start,
                    dividerColor: Theme.of(context).dividerColor,
                    dividerHeight: 4,
                    unselectedLabelColor: Theme.of(
                      context,
                    ).unselectedWidgetColor,
                    tabs: [
                      Tab(text: context.l10n.search),
                      Tab(text: context.l10n.manualLookUp),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter / 2),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        ElvSearchVehicleWidget(),
                        ElvManualVehicleWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: Insets.gutter),
          const Expanded(flex: 4, child: ElvSearchedVehicleDetailWidget()),
        ],
      ),
    );
  }
}
