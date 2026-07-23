import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class UomRow extends StatelessWidget {
  const UomRow({
    required this.settingsController,
    super.key,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.uom.toUpperCase(),
              style: EmrOneConstants.kSmallestHeadingTextStyle
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              context.l10n.defaultUOM,
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
                settingsController.uomName() ?? context.l10n.notSelected,
                style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            onTap: () async {
              final selection = await showSearch<EmrOneCoreUom?>(
                context: context,
                delegate: EmrModalSearchDelegate(
                  (query) => Future<List<EmrOneCoreUom>>.value(
                    settingsController.allowedUoms(query),
                  ),
                  (item) => ListTile(
                    title: Text(item.uomCode),
                  ),
                ),
              );

              if (selection != null) {
                await settingsController.updateUomId(selection.uomId);
              }
            },
          ),
        ),
      ],
    );
  }
}
