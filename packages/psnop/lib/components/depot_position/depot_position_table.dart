import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/depot_position/main_table_body.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/providers/depot_position_controller.dart';

class DepotPositionTable extends StatelessWidget {
  const DepotPositionTable({
    required this.mainHeaders,
    required this.subHeaders,
    super.key,
  });

  final Iterable<MainHeaderModel> mainHeaders;
  final Iterable<SubHeaderModel> subHeaders;

  static const double headerHeight = 40;
  static const double subHeaderHeight = 110;

  Widget _getHeader({
    required Iterable<MainHeaderModel> headers,
    required Iterable<SubHeaderModel> subHeaders,
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
                        height: DepotPositionTable.headerHeight,
                        width: (constraints.maxWidth / subHeaders.length) *
                            subHeaders
                                .where(
                                  (shv) => header.id == shv.parentHeaderId,
                                )
                                .length,
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
              ColoredBox(
                color: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .psnopTableSubHeaderColour!,
                child: Flex(
                  direction: Axis.horizontal,
                  children: subHeaders
                      .map(
                        (subHeader) => SizedBox(
                          height: DepotPositionTable.subHeaderHeight,
                          width: constraints.maxWidth / subHeaders.length,
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
                                horizontal: 5,
                              ),
                              child: subHeader.tooltip != null
                                  ? Tooltip(
                                      message: subHeader.tooltip,
                                      child: Text(
                                        subHeader.title ?? '',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .extension<EOBrandTheme>()!
                                              .onPsnopTableSubHeaderColour,
                                        ),
                                      ),
                                    )
                                  : Text(
                                      subHeader.title ?? '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .extension<EOBrandTheme>()!
                                            .onPsnopTableSubHeaderColour,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final depotPositionController = Provider.of<DepotPositionController>(
      context,
    );

    final headers = mainHeaders.where(
      (h) => h.isVisible,
    );

    final scrollController = ScrollController(
      initialScrollOffset: depotPositionController.scrollOffset,
    );

    final visibleSubHeaders = subHeaders.where(
      (sh) => headers.any(
        (h) => h.id == sh.parentHeaderId,
      ),
    );

    scrollController.addListener(() {
      depotPositionController.scrollOffset = scrollController.offset;
    });

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height -
            (DepotPositionTable.headerHeight +
                DepotPositionTable.subHeaderHeight +
                (2 * Insets.gutter)),
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
                subHeaders: visibleSubHeaders,
              ),
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(95),
              child: Text(''),
            ),
          ),
          MainTableBody(
            headers: headers,
            subHeaders: subHeaders,
          ),
        ],
      ),
    );
  }
}
