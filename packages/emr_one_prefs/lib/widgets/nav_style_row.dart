import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/menu/eo_app_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavStyleRow extends StatefulWidget {
  const NavStyleRow({
    required this.settingsController,
    required this.enabledColour,
    required this.disabledColour,
    super.key,
  });

  final SettingsController settingsController;

  final Color enabledColour;
  final Color disabledColour;

  @override
  State<NavStyleRow> createState() => _NavStyleRowState();
}

class _NavStyleRowState extends State<NavStyleRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.menu.toUpperCase(),
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
            Text(
              context.l10n.menuStyleSubtext,
              style: EmrOneConstants.kSmallSubtleTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () async {
            _trackMenuStyleChange(context, 'normal');
            await widget.settingsController
                .updateMenuMode(EoAppMenuMode.iconAndLabel);

            setState(() {});
          },
          icon: const FaIcon(FontAwesomeIcons.listUl),
          color:
              widget.settingsController.menuMode == EoAppMenuMode.iconAndLabel
                  ? widget.enabledColour
                  : widget.disabledColour,
        ),
        IconButton(
          onPressed: () async {
            _trackMenuStyleChange(context, 'mini');
            await widget.settingsController.updateMenuMode(EoAppMenuMode.icon);

            setState(() {});
          },
          icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
          color: widget.settingsController.menuMode == EoAppMenuMode.icon
              ? widget.enabledColour
              : widget.disabledColour,
        ),
      ],
    );
  }

  void _trackMenuStyleChange(BuildContext context, String mode) {
    context.trackEvent(
      EmrOneCoreTelemetry.kMenuStyleChange,
      params: {
        'mode': mode,
      },
    );
  }
}
