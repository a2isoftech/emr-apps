import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/pages/search/controller/search_controller.dart';
import 'package:emr_one_elv_inspection/pages/search/responsive/responsive.dart';
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

      controller.initSearchController(
        settingsController,
        UserInfoService.instance?.userInfo.territories ?? [],
        yard,
      );
    });
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
}
