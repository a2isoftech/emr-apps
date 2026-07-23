import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/controllers/ticket_with_lots_view_controller.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/screens/ticket_with_lots_view.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/wrapper_error.dart';
import 'package:emr_one_yard_logistics/yl_api_response.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TicketWithLotsWrapper extends StatefulWidget {
  const TicketWithLotsWrapper({
    required this.ticketId,
    super.key,
  });

  final String ticketId;

  @override
  State<TicketWithLotsWrapper> createState() => _TicketWithLotsWrapperState();
}

class _TicketWithLotsWrapperState extends State<TicketWithLotsWrapper> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 64,
                  height: 64,
                  child: CircularProgressIndicator(),
                ),
                const SizedBox(height: Insets.gutter),
                Text(context.l10n.loading),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return WrapperError(message: snapshot.error.toString());
        }

        if (snapshot.data == null) {
          return const WrapperError(
            message: 'No Data not found',
          );
        }

        if (snapshot.data!.$1.success == false ||
            snapshot.data!.$1.data == null) {
          return const WrapperError(
            message: 'Ticket not found',
          );
        }

        if (snapshot.data!.$2 == null) {
          return const WrapperError(
            message: 'Lot Acronyms not found',
          );
        }

        return Provider<List<LotCompositionAcronym>>.value(
          value: snapshot.data!.$2!,
          builder: (context, child) => TicketWithLotsView(
            controller: TicketWithLotsViewController(snapshot.data!.$1.data!),
          ),
        );
      },
    );
  }

  Future<(YlApiResponse<TicketWithLots>, List<LotCompositionAcronym>?)>
      loadData() async {
    final service = Provider.of<YardLogisticsService>(context);
    final results = await Future.wait([
      service.fetchLotsByTicket(
        widget.ticketId,
      ),
      service.fetchLotCompositionAcronymsFromCache(),
    ]);

    return (
      results[0] as YlApiResponse<TicketWithLots>,
      results[1] as List<LotCompositionAcronym>?
    );
  }
}
