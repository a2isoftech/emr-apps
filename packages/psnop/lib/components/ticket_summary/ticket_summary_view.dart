import 'package:flutter/widgets.dart';
import 'package:psnop/components/table/ticket_summary/ticket_summary_line_component.dart';
import 'package:psnop/components/ticket_summary/ticket_summary_filter.dart';
import 'package:psnop/components/ticket_summary/ticket_summary_footer.dart';
import 'package:psnop/components/ticket_summary/ticket_summary_table.dart';
import 'package:psnop/networking/psnop_api_helper.dart';

class TicketSummaryView extends StatelessWidget {
  const TicketSummaryView({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TicketSummaryFilter(apiHelper: apiHelper),
        const Expanded(
          child: TicketSummaryTable(),
        ),
        const TicketSummaryLineComponent(),
        TicketSummaryFooter(apiHelper: apiHelper),
      ],
    );
  }
}
