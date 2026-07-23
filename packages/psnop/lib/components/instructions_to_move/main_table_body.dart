import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/instructions_to_move/expandable_depot_row_component.dart';
import 'package:psnop/components/table/instructions_to_move/instructions_to_move_row_component.dart';
import 'package:psnop/enums/instructions_to_move_state.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/providers/instructions_to_move_controller.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MainTableBody extends StatelessWidget {
  const MainTableBody({
    required this.headers,
    super.key,
  });

  final Iterable<MainHeaderModel> headers;

  @override
  Widget build(BuildContext context) {
    final instructionsToMoveController =
        Provider.of<InstructionsToMoveController>(
      context,
    );

    switch (instructionsToMoveController.state) {
      case InstructionsToMoveState.initial:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(),
            ],
          ),
        );
      case InstructionsToMoveState.loading:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              LayoutBuilder(
                builder: (
                  BuildContext context,
                  BoxConstraints constraints,
                ) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        Insets.gutter,
                      ),
                      child: SizedBox(
                        height: constraints.maxWidth / 16,
                        width: constraints.maxWidth / 16,
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      case InstructionsToMoveState.success:
        try {
          if (instructionsToMoveController.model.summaries.isNotEmpty) {
            final widgets = <Widget>[];

            if (instructionsToMoveController.model.summaries.length == 1) {
              for (var i = 0;
                  i <
                      instructionsToMoveController
                          .model.summaries[0].summaries.length;
                  i++) {
                widgets.add(
                  InstructionsToMoveRowComponent(
                    row: instructionsToMoveController
                        .model.summaries[0].summaries[i],
                    headers: headers,
                    isEven: i.isEven,
                  ),
                );
              }
            } else {
              for (final element
                  in instructionsToMoveController.model.summaries) {
                widgets.add(
                  ExpandableDepotRowComponent(
                    headers: headers,
                    expandDepot: false,
                    instructionsToMoveSummary: element,
                  ),
                );
              }
            }

            return MultiSliver(
              children: widgets,
            );
          } else {
            // ignore: only_throw_errors
            throw context.l10n.psnopInstructionsToMoveNotFound;
          }
        } catch (e) {
          return SliverList(
            delegate: SliverChildListDelegate(
              [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Center(
                      child: Text(
                        e.toString(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

      case InstructionsToMoveState.error:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Center(
                    child: Text(
                      context.l10n.psnopFailedToGetInstructionsToMove,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
    }
  }
}
