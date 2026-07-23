import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/routing/named_routes.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:emr_one_elv_core/helpers/default_yard_helper.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/search/controller/search_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/search/screens/search_screen_desktop.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/search/screens/search_screen_mobile.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/search/screens/search_screen_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionSearchScreen extends StatefulWidget {
  const InspectionSearchScreen({super.key});

  @override
  State<InspectionSearchScreen> createState() => _InspectionSearchScreenState();
}

class _InspectionSearchScreenState extends State<InspectionSearchScreen> {
  late InspectionSearchController controller;

  @override
  void initState() {
    super.initState();

    controller = Provider.of<InspectionSearchController>(
      context,
      listen: false,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final settingsController =
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController;

      final yard = settingsController.defaultYard;

      if (yard == null) {
        _showYardConfigError();
        return;
      }

      controller.initSearchController(yard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < InspectionDeviceTypeConstants.mobile) {
          return const InspectionSearchScreenMobile();
        } else if (constraints.maxWidth <
            InspectionDeviceTypeConstants.tablet) {
          return const InspectionSearchScreenTablet();
        } else {
          return const InspectionSearchScreenDesktop();
        }
      },
    );
  }

  void _showYardConfigError() {
    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.defaultYardNotSet,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(context.l10n.defaultYardNotSetErrorMessageBody)],
        );
      },
      acceptLabel: context.l10n.settings,
      dialogMode: DialogMode.compact,
      onAccept: () async {
        context.pop();
        context.goNamed(NamedRoutes.settings);
      },
      onCancel: () => context.pop(),
    );
  }
}
