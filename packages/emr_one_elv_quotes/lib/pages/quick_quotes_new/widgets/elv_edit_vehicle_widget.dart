import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:flutter/material.dart';

class ElvEditVehicleWidget extends StatelessWidget {
  const ElvEditVehicleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Values are static here. Will change in next PR
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          context.l10n.selectedVehicle,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        EmrCard(
          padding: EdgeInsets.zero,
          leading: Container(
            width: Insets.gutter * 2,
            height: Insets.gutter * 2,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(Insets.gutter),
            ),
            alignment: Alignment.center,
            child: Text(
              '1',
              style: Theme.of(context).primaryTextTheme.headlineSmall,
            ),
          ),
          title: 'JTH1312HHEE2313HHJ',
          subtitle: '2012 Lexus LS 460 (Petrol)',
          trailing: Text(
            Format.money(500.02),
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          child: const SizedBox.shrink(),
        ),
        SizedBox(
          height: 600,
          child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
                  tabs: [
                    Tab(text: context.l10n.parts),
                    Tab(text: context.l10n.priceAdjustment),
                  ],
                ),
                const SizedBox(height: Insets.gutter / 2),
                const Expanded(
                  child: TabBarView(
                    children: [
                      ElvEditVehiclePartTab(),
                      ElvEditVehicleOtherTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
