import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/help/controllers/help_file_controller.dart';
import 'package:flutter/material.dart';

class HelpFileView extends StatelessWidget {
  const HelpFileView({
    required this.controler,
    super.key,
  });
  final IHelpFileController controler;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controler.isAdminTab,
      builder: (context, value, child) {
        return Scaffold(body: Center(child: Text(context.l10n.comingSoonText)));
      },
    );
  }
}
