import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/table_utils.dart';
import 'package:psnop/models/depot_search/depot_search_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_groups_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_types_model.dart';
import 'package:psnop/models/filter_response_models/depot_region_response_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary_request_model.dart';
import 'package:psnop/models/ticket_summary/ticket_summary_search.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/providers/depot_position_controller.dart';
import 'package:psnop/providers/instructions_to_move_controller.dart';
import 'package:psnop/providers/ticket_summary_controller.dart';
import 'package:psnop/repository/depot_position_repository.dart';
import 'package:psnop/repository/instructions_to_move_repository.dart';
import 'package:psnop/screens/depot_position_screen.dart';
import 'package:psnop/screens/instructions_to_move_screen.dart';
import 'package:psnop/screens/planned_movements_screen.dart';
import 'package:psnop/screens/screen_utils.dart';
import 'package:psnop/screens/ticket_summary_screen.dart';

class PsnopRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
      widgetBuilders = {
    NamedRoutes.psnopDepotPosition: (context, state) {
      final config = Provider.of<AppConfig>(context);
      final httpClient = Provider.of<BaseClient>(context);
      final apiHelper = PsnopApiHelper(config: config, httpClient: httpClient);

      if (state.queryParametersAll.isNotEmpty) {
        final searchModelFromQuery =
            DepotSearchModel.fromMap(state.queryParametersAll);
        if (searchModelFromQuery.toJson().toString() !=
            depotPositionController.searchModel?.toJson().toString()) {
          final depotPositionRepository =
              DepotPositionRepository(apiHelper: apiHelper);
          depotPositionController.clear();
          depotPositionController.depotNumbers.addAll(
            searchModelFromQuery.depotNos.map(
              (depotNumber) => DepotResponseModel(
                depotName: '',
                depotNumber: depotNumber,
                depotShortName: '',
                territoryCode: '',
              ),
            ),
          );
          depotPositionController.depotRegionNames.addAll(
            searchModelFromQuery.depotRegionNames.map(
              (depotRegionName) =>
                  RegionViewModel(depotRegionName: depotRegionName),
            ),
          );
          if (searchModelFromQuery.grades != null) {
            depotPositionController.grades.addAll(
              searchModelFromQuery.grades!,
            );
          }
          if (searchModelFromQuery.gradeGroups != null) {
            depotPositionController.gradeGroups.addAll(
              searchModelFromQuery.gradeGroups!.map(
                (gradeGroup) => ActiveGradeGroupsModel(gradeGroup: gradeGroup),
              ),
            );
          }
          if (searchModelFromQuery.gradeTypes != null) {
            depotPositionController.gradeTypes.addAll(
              searchModelFromQuery.gradeTypes!.map(
                (gradeType) => ActiveGradeTypesModel(gradeType: gradeType),
              ),
            );
          }
          depotPositionController.ignoreZeroHeaps =
              searchModelFromQuery.ignoreZeroHeaps;
          depotPositionController.weeks = searchModelFromQuery.weeks;
          depotPositionController.getDepotPosition(
            searchModel: searchModelFromQuery,
            repository: depotPositionRepository,
          );
        }
      }

      return DepotPositionScreen(
        mainHeaders: depotPositionMainHeaders,
        apiHelper: apiHelper,
      ).withMultiProvider(
        [
          ChangeNotifierProvider<DepotPositionController>.value(
            value: depotPositionController,
          ),
        ],
      );
    },
    NamedRoutes.psnopPlannedMovements: (
      context,
      state,
    ) {
      final config = Provider.of<AppConfig>(context);
      final httpClient = Provider.of<BaseClient>(context);
      final apiHelper = PsnopApiHelper(config: config, httpClient: httpClient);

      return PlannedMovementsScreen(
        apiHelper: apiHelper,
      );
    },
    NamedRoutes.psnopInstructionsToMove: (
      context,
      state,
    ) {
      final config = Provider.of<AppConfig>(context);
      final httpClient = Provider.of<BaseClient>(context);
      final apiHelper = PsnopApiHelper(config: config, httpClient: httpClient);

      if (state.queryParametersAll.isNotEmpty) {
        final searchModelFromQuery =
            DepotSearchModel.fromMap(state.queryParametersAll);

        if (searchModelFromQuery.toJson().toString() !=
            instructionsToMoveController.searchModel?.toJson().toString()) {
          instructionsToMoveController.clear();
          instructionsToMoveController.depotNumbers.addAll(
            searchModelFromQuery.depotNos.map(
              (depotNumber) => DepotResponseModel(
                depotName: '',
                depotNumber: depotNumber,
                depotShortName: '',
                territoryCode: '',
              ),
            ),
          );
          if (searchModelFromQuery.grades != null) {
            instructionsToMoveController.grades.addAll(
              searchModelFromQuery.grades!,
            );
          }
          final instructionsToMoveRepository =
              InstructionsToMoveRepository(apiHelper: apiHelper);

          instructionsToMoveController.getInstructionsToMove(
            filter: InstructionsToMoveSummaryRequestModel(
              depotNos: searchModelFromQuery.depotNos,
              grades: searchModelFromQuery.grades ?? [],
              startDate: DateTime.now(),
              endDate: TableUtils.endDate(
                date: DateTime.now(),
                weeks: searchModelFromQuery.weeks,
              ),
            ),
            repository: instructionsToMoveRepository,
          );
        }
      }

      return InstructionsToMoveScreen(
        mainHeaders: instructionsToMoveMainHeaders,
        apiHelper: apiHelper,
      ).withMultiProvider([
        ChangeNotifierProvider<InstructionsToMoveController>.value(
          value: instructionsToMoveController,
        ),
      ]);
    },
    NamedRoutes.psnopTicketSummary: (
      context,
      state,
    ) {
      final config = Provider.of<AppConfig>(context);
      final httpClient = Provider.of<BaseClient>(context);
      final apiHelper = PsnopApiHelper(config: config, httpClient: httpClient);

      if (state.queryParametersAll.isNotEmpty) {
        final searchModelFromQuery =
            TicketSummarySearchModel.fromMap(state.queryParametersAll);

        if (searchModelFromQuery.toJson().toString() !=
            ticketSummaryController.searchModel?.toJson().toString()) {
          ticketSummaryController.clear();
          ticketSummaryController.depotNumbers.addAll(
            searchModelFromQuery.depotNos.map(
              (depotNumber) => DepotResponseModel(
                depotName: '',
                depotNumber: depotNumber,
                depotShortName: '',
                territoryCode: '',
              ),
            ),
          );
          if (searchModelFromQuery.grades != null) {
            ticketSummaryController.grades.addAll(
              searchModelFromQuery.grades!,
            );
          }
        }
      }

      return TicketSummaryScreen(
        apiHelper: apiHelper,
      ).withMultiProvider([
        ChangeNotifierProvider<TicketSummaryController>.value(
          value: ticketSummaryController,
        ),
      ]);
    },
  };

  static List<EORoute> psnopDepotPositionMenuItems = [
    EORoute(
      Icons.store_outlined,
      (context) => context.l10n.psnop,
      section: kPsnopSection,
      path: '/psnop',
      selectedIcon: Icons.store,
      isAllowed: (context, route) {
        final userInfoService = Provider.of<UserInfoService>(context);
        return userInfoService.userInfo.hasPermission('viewDepotPosition');
      },
      name: NamedRoutes.psnop,
      widgetBuilder: (context, state) => GenericRouteScreen.fromPathPrefix(
        state.path!,
        getActionsBuilder: (context) => ScreenUtils.psnopMenuActions(
          context: context,
        ),
      ),
      children: [
        EORoute(
          Icons.radar_outlined,
          (context) => context.l10n.psnopDepotPosition,
          section: kPsnopSection,
          path: 'depot-position',
          selectedIcon: Icons.radar,
          name: NamedRoutes.psnopDepotPosition,
          widgetBuilder: widgetBuilders[NamedRoutes.psnopDepotPosition]!,
        ),
        EORoute(
          Icons.local_shipping_outlined,
          (context) => context.l10n.psnopPlannedMovements,
          section: kPsnopSection,
          path: 'planned-movements',
          selectedIcon: Icons.local_shipping,
          name: NamedRoutes.psnopPlannedMovements,
          widgetBuilder: widgetBuilders[NamedRoutes.psnopPlannedMovements]!,
        ),
        EORoute(
          Icons.local_shipping,
          (context) => context.l10n.psnopInstructionsToMove,
          section: kPsnopSection,
          path: 'instructions-to-move',
          selectedIcon: Icons.local_shipping,
          name: NamedRoutes.psnopInstructionsToMove,
          widgetBuilder: widgetBuilders[NamedRoutes.psnopInstructionsToMove]!,
        ),
        EORoute(
          Icons.confirmation_num_outlined,
          (context) => context.l10n.psnopTicketSummary,
          section: kPsnopSection,
          path: 'ticket-summary',
          selectedIcon: Icons.confirmation_num,
          name: NamedRoutes.psnopTicketSummary,
          widgetBuilder: widgetBuilders[NamedRoutes.psnopTicketSummary]!,
        ),
      ],
    ),
  ];

  static DepotPositionController depotPositionController =
      DepotPositionController();
  static InstructionsToMoveController instructionsToMoveController =
      InstructionsToMoveController();
  static TicketSummaryController ticketSummaryController =
      TicketSummaryController();

  static List<MainHeaderModel> depotPositionMainHeaders = <MainHeaderModel>[];
  static List<MainHeaderModel> instructionsToMoveMainHeaders =
      <MainHeaderModel>[];

  static String kPsnopSection = 'Purchase, Sales and Operations Planning';

  static RouteRegistry register(RouteRegistry registry) {
    registry.addRoutes(psnopDepotPositionMenuItems);
    return registry;
  }
}
