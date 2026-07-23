import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_one_crm/screens/party/widgets/party_info.dart';
import 'package:flutter/material.dart';

class PartySummary extends StatelessWidget {
  const PartySummary({
    required this.actionItems,
    required this.menuItems,
    required this.appConfig,
    required this.partyController,
    super.key,
  });

  final List<SimpleMenuItem> actionItems;
  final List<SimpleMenuItem> menuItems;
  final AppConfig appConfig;
  final PartyController partyController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              context.l10n.create,
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter),
        _menu(context, actionItems),
        const SizedBox(height: Insets.gutter),
        Row(
          children: [
            Text(
              '${context.l10n.seeAlso}:',
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
          ],
        ),
        const SizedBox(height: Insets.gutter),
        _menu(context, menuItems),
        PartyInfoList(partyController: partyController),
      ],
    );
  }

  Widget _menu(BuildContext context, List<SimpleMenuItem> menuItems) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 160,
            crossAxisSpacing: Insets.gutter,
            mainAxisSpacing: Insets.gutter,
          ),
          itemCount: menuItems.length,
          itemBuilder: (BuildContext ctx, index) {
            return _menuItem(context, menuItems[index]);
          },
        ),
      ],
    );
  }

  Widget _menuItem(BuildContext context, SimpleMenuItem item) {
    return EOHoverTile(
      onTap: item.function,
      child: EOHoverTileSimpleContent(
        icon: item.icon,
        label: item.name.toUpperCase(),
      ),
    );
  }
}
