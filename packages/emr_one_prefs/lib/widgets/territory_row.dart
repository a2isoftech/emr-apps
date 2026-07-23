import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TerritoryRow extends StatelessWidget {
  const TerritoryRow({
    required this.settingsController,
    super.key,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.territory.toUpperCase(),
              style: EmrOneConstants.kSmallestHeadingTextStyle
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              context.l10n.defaultTerritory,
              style: EmrOneConstants.kSmallSubtleTextStyle,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: Insets.gutter / 2),
          child: GestureDetector(
            child: Container(
              padding: const EdgeInsets.only(
                left: 4,
                right: 4,
                top: 2,
                bottom: 2,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(
                settingsController.territory,
                style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            onTap: () async {
              final selection = await showSearch<Territory?>(
                context: context,
                delegate: EmrModalSearchDelegate(
                  (query) => Future<List<Territory>>.value(
                    settingsController.allowedTerritories(query),
                  ),
                  (item) => ListTile(
                    title: Text(item.code),
                    subtitle: Text(item.name),
                  ),
                ),
              );

              if (selection != null) {
                await settingsController
                    .updateTerritory(selection.code);

                // Find the first yard code for the selected territory.
                final firstYardCode = userInfoService.userInfo.territories
                    .firstWhere(
                      (t) => t.code == selection.code,
                    )
                    .depots!
                    .map((d) => d.yardCode)
                    .first!;

                await settingsController.updateYardCode(firstYardCode);
              }
            },
          ),
        ),
      ],
    );
  }
}
