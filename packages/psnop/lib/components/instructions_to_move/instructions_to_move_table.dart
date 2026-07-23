import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/instructions_to_move/main_table_body.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/providers/instructions_to_move_controller.dart';

class InstructionsToMoveTable extends StatelessWidget {
  const InstructionsToMoveTable({
    required this.headers,
    super.key,
  });

  final List<MainHeaderModel> headers;

  Widget _getHeader() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          color: Theme.of(context)
              .extension<EOBrandTheme>()!
              .psnopTableHeaderColour,
          alignment: Alignment.center,
          height: TableConstraints.headerHeight,
          child: Column(
            children: [
              Flex(
                direction: Axis.horizontal,
                children: headers
                    .map(
                      (header) => SizedBox(
                        height: TableConstraints.headerHeight,
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

  @override
  Widget build(BuildContext context) {
    final instructionsToMoveController =
        Provider.of<InstructionsToMoveController>(
      context,
    );

    final scrollController = ScrollController(
      initialScrollOffset: instructionsToMoveController.scrollOffset,
    );

    scrollController.addListener(() {
      instructionsToMoveController.scrollOffset = scrollController.offset;
    });

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height -
            (TableConstraints.headerHeight + (2 * Insets.gutter)) -
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
              background: _getHeader(),
            ),
            //need to have this here to stop the bottom overflowing
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
}
