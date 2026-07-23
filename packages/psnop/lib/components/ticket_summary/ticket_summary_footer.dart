import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:provider/provider.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/providers/ticket_summary_controller.dart';
import 'package:psnop/repository/ticket_summary_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class TicketSummaryFooter extends StatelessWidget {
  const TicketSummaryFooter({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;
  @override
  Widget build(BuildContext context) {
    final ticketSummaryController =
        Provider.of<TicketSummaryController>(context);
    return SizedBox(
      height: 50,
      child: _getRow(
        context: context,
        controller: ticketSummaryController,
      ),
    );
  }

  Row _getRow({
    required BuildContext context,
    required TicketSummaryController controller,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return _trade2Link(
                  context: context,
                  url:
                      'http://uktradenlb2.emr.com/Trade2_LIVE_Core/ImsRedirector.ashx?Path=Ticket',
                );
              },
            );
          },
          child: Text(
            context.l10n.psnopTicketSummaryTrade2TicketSearchButton,
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        ElevatedButton(
          onPressed: controller.depotNumbers.isNotEmpty
              ? () {
                  controller.filterByDate(
                    DateTime.now().subtract(const Duration(days: 1)),
                    TicketSummaryRepository(apiHelper: apiHelper),
                  );
                }
              : null,
          child: Text(
            context.l10n.psnopTicketSummaryYesterdayDateButton,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        ElevatedButton(
          onPressed: controller.depotNumbers.isNotEmpty
              ? () {
                  controller.filterByDate(
                    DateTime.now(),
                    TicketSummaryRepository(apiHelper: apiHelper),
                  );
                }
              : null,
          child: Text(
            context.l10n.psnopTicketSummaryTodayDateButton,
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        ElevatedButton(
          onPressed: controller.model.ticketSummaries.isNotEmpty
              ? () async {
                  final bytes = await controller.exporttoExcel(
                    TicketSummaryRepository(apiHelper: apiHelper),
                  );
                  if (bytes != null) {
                    await FileSaver.instance.saveFile(
                      name: 'TicketSummary',
                      bytes: bytes,
                      fileExtension: 'xlsx',
                      mimeType: MimeType.microsoftExcel,
                    );
                  }
                }
              : null,
          child: Text(
            context.l10n.psnopMainMenuExportExcel,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        ElevatedButton(
          onPressed: controller.model.ticketSummaries.isNotEmpty
              ? () async {
                  final bytes = await controller.exporttoPdf(
                    TicketSummaryRepository(apiHelper: apiHelper),
                  );
                  if (bytes != null) {
                    await FileSaver.instance.saveFile(
                      name: 'TicketSummary',
                      bytes: bytes,
                      fileExtension: 'pdf',
                      mimeType: MimeType.pdf,
                    );
                  }
                }
              : null,
          child: Text(
            context.l10n.psnopMainMenuExportPdf,
          ),
        ),
      ],
    );
  }

  static AlertDialog _trade2Link({
    required BuildContext context,
    required String url,
  }) {
    return AlertDialog(
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () {
            launchUrl(
              Uri.parse(url),
              webOnlyWindowName: '_blank',
            );
            var count = 0;
            Navigator.popUntil(context, (route) {
              return count++ == 1;
            });
          },
          child: Text(context.l10n.psnopProceed),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(context.l10n.cancel),
        ),
      ],
      content: LinkifyText(
        context.l10n.psnopTrade2AccessDetails,
        linkStyle: TextStyle(
          color:
              Theme.of(context).extension<EOBrandTheme>()!.psnopHyperlinkColour,
        ),
        linkTypes: const [LinkType.email],
        onTap: (link) {
          launchUrl(
            Uri.parse('mailto:${link.value}'),
          );
        },
      ),
      scrollable: true,
      title: Center(
        child: Text(context.l10n.psnopTrade2Access),
      ),
    );
  }
}
