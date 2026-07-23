import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/mixins/action_bar_extender.dart';
import 'package:flutter/material.dart';
import 'package:psnop/components/ticket_summary/ticket_summary_view.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/screens/screen_utils.dart';

class TicketSummaryScreen extends StatelessWidget with AppBarExtender {
  const TicketSummaryScreen({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;

  @override
  Widget build(BuildContext context) {
    return TicketSummaryView(
      apiHelper: apiHelper,
    );
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return ScreenUtils.psnopMenuActions(
      context: context,
      ticketSummaryMenuEntries: [
        ScreenUtils.psnopMenuEntry(
          context: context,
          text: Text(
            context.l10n.psnopTicketSummary,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ScreenUtils.psnopMenuEntry(
          context: context,
          enabled: false,
          text: Text(
            context.l10n.psnopMainMenuExportPdf,
          ),
        ),
        ScreenUtils.psnopMenuEntry(
          context: context,
          enabled: false,
          text: Text(
            context.l10n.psnopMainMenuExportExcel,
          ),
        ),
      ],
    );
  }
}
