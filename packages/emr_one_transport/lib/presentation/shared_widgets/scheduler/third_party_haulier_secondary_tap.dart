import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/message_utility.dart'
    show MessageUtility;
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/context_menu_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ThirdPartyHaulierSecondaryTap extends StatelessWidget {
  const ThirdPartyHaulierSecondaryTap({
    required this.child,
    required this.jobIds,
    required this.haulierCode,
    super.key,
  });
  final Widget child;
  final String haulierCode;
  final List<String> jobIds;

  @override
  Widget build(BuildContext context) {
    final schedulerController = Provider.of<SchedulerController>(context);
    return ContextMenuWrapper<ThirdPartyHaulierContextMenuOptions>(
      menuItems: _getOptions(),
      onItemSelected: (option) async {
        switch (option) {
          case ThirdPartyHaulierContextMenuOptions.printDispatchSlip:
            final actionResult = await schedulerController.printDispatchSlips(
              jobIds,
            );
            if (!context.mounted) return;
            MessageUtility.handleResult(
              context,
              actionResult,
              canGoBack: false,
            );
          case ThirdPartyHaulierContextMenuOptions.copyHaulierCode:
            await Clipboard.setData(ClipboardData(text: haulierCode));
            if (!context.mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Copied to clipboard!')),
            );
        }
      },
      child: child,
    );
  }

  //Returns the options which are onlu enabled for the current job
  List<ThirdPartyHaulierContextMenuOptions> _getOptions() {
    final masterList = <ThirdPartyHaulierContextMenuOptions>[];

    masterList.add(ThirdPartyHaulierContextMenuOptions.copyHaulierCode);

    if (jobIds.isNotEmpty) {
      masterList.add(ThirdPartyHaulierContextMenuOptions.printDispatchSlip);
    }
    return masterList;
  }
}
