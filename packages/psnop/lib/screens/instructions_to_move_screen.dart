import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/mixins/action_bar_extender.dart';
import 'package:flutter/material.dart';
import 'package:psnop/components/instructions_to_move/instructions_to_move_view.dart';
import 'package:psnop/models/headers/header_titles.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/screens/screen_utils.dart';

class InstructionsToMoveScreen extends StatelessWidget with AppBarExtender {
  const InstructionsToMoveScreen({
    required this.mainHeaders,
    required this.apiHelper,
    super.key,
  });

  final List<MainHeaderModel> mainHeaders;
  final PsnopApiHelper apiHelper;

  @override
  Widget build(BuildContext context) {
    // #region headers
    if (mainHeaders.isEmpty) {
      mainHeaders.addAll(
        [
          MainHeaderModel(
            id: 1,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderDestination,
          ),
          MainHeaderModel(
            id: 2,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderDueFrom,
          ),
          MainHeaderModel(
            id: 3,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderDueBy,
          ),
          MainHeaderModel(
            id: 4,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderTransport,
          ),
          MainHeaderModel(
            id: 5,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderOnHold,
          ),
          MainHeaderModel(
            id: 6,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderPriority,
          ),
          MainHeaderModel(
            id: 7,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderContract,
          ),
          MainHeaderModel(
            id: 8,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderTonnes,
          ),
          MainHeaderModel(
            id: 9,
            isVisible: true,
            headerTitles: HeaderTitles.blank,
            title: context.l10n.psnopTableHeaderLoads,
          ),
        ],
      );
    }
    // #endregion

    return InstructionsToMoveView(
      mainHeaders: mainHeaders,
      apiHelper: apiHelper,
    );
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return ScreenUtils.psnopMenuActions(
      context: context,
      instructionsToMoveMenuEntries: [
        ScreenUtils.psnopMenuEntry(
          context: context,
          text: Text(
            context.l10n.psnopInstructionsToMove,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
