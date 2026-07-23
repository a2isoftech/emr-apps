import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/ticket_summary/main_table_body.dart';
import 'package:psnop/models/headers/header_titles.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/providers/ticket_summary_controller.dart';

class TicketSummaryTable extends StatelessWidget {
  const TicketSummaryTable({
    super.key,
  });

  static const double headerHeight = 40;
  static late int headerCount;

  @override
  Widget build(BuildContext context) {
    final ticketSummaryController =
        Provider.of<TicketSummaryController>(context);

    final scrollController = ScrollController(
      initialScrollOffset: ticketSummaryController.scrollOffset,
    );

    scrollController.addListener(() {
      ticketSummaryController.scrollOffset = scrollController.offset;
    });

    final headers = <MainHeaderModel>[
      MainHeaderModel(
        headerTitles: HeaderTitles.ticketNumber,
        id: 1,
        isVisible: true,
        title: context.l10n.psnopTableHeaderTicketNumber,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.direction,
        id: 2,
        isVisible: true,
        title: context.l10n.psnopTableHeaderDirection,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.line,
        id: 3,
        isVisible: true,
        title: context.l10n.psnopTableHeaderLine,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.party,
        id: 4,
        isVisible: true,
        title: context.l10n.psnopTableHeaderParty,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.partyName,
        id: 5,
        isVisible: true,
        title: context.l10n.psnopTableHeaderPartyName,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.grade,
        id: 6,
        isVisible: true,
        title: context.l10n.psnopTableHeaderGrade,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.heap,
        id: 7,
        isVisible: true,
        title: context.l10n.psnopTableHeaderHeap,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.provisionalWeight,
        id: 8,
        isVisible: true,
        title: context.l10n.psnopTableHeaderProvisionalWeight,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.provisionalRate,
        id: 9,
        isVisible: true,
        title: context.l10n.psnopTableHeaderProvisionalRate,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.provisionalValue,
        id: 10,
        isVisible: true,
        title: context.l10n.psnopTableHeaderProvisionalValue,
      ),
      MainHeaderModel(
        headerTitles: HeaderTitles.paymentType,
        id: 11,
        isVisible: true,
        title: context.l10n.psnopTableHeaderPriceType,
      ),
    ];
    headerCount = headers.length;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height -
            (TicketSummaryTable.headerHeight + (2 * Insets.gutter)) -
            (100 + 8) /*filter height*/,
      ),
      padding: const EdgeInsets.all(Insets.gutter),
      child: CustomScrollView(
        controller: scrollController,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            actions: <Widget>[Container()],
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: _getHeader(
                headers: headers,
              ),
            ),
            // need to have this here to stop the bottom overflowing
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(-16),
              child: Text(''),
            ),
          ),
          MainTableBody(
            headers: headers,
          ),
        ],
      ),
    );
  }

  Widget _getHeader({
    required Iterable<MainHeaderModel> headers,
  }) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          color: Theme.of(context)
              .extension<EOBrandTheme>()!
              .psnopTableHeaderColour,
          alignment: Alignment.center,
          child: Column(
            children: [
              Flex(
                direction: Axis.horizontal,
                children: headers
                    .map(
                      (header) => SizedBox(
                        height: TicketSummaryTable.headerHeight,
                        width: constraints.maxWidth / headers.length,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            border: Border.symmetric(
                              vertical: BorderSide(
                                width: 0.5,
                              ),
                              horizontal: BorderSide(
                                width: 0.5,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Text(
                              header.title?.toUpperCase() ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .extension<EOBrandTheme>()!
                                    .onPsnopTableHeaderColour,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
