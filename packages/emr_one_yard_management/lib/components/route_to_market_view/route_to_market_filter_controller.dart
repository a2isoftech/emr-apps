import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/models/depot/depots_model.dart';
import 'package:emr_one_yard_management/models/routeToMarket/route_to_market_query_model.dart';
import 'package:emr_one_yard_management/repository/filters/depot_repository.dart';
import 'package:emr_one_yard_management/repository/filters/grade_repository.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RouteToMarketFilterController extends EmrFilterController {
  RouteToMarketFilterController({
    required this.httpClient,
    required this.config,
  }) : super(
          filters: [],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kDepotKey:
                return EmrFilterAutoComplete<DepotsModel, String>(
                  const Key(kDepotKey),
                  filter,
                  controller,
                  (pattern, filterController) => DepotRepository.fetchDepots(
                    pattern,
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) =>
                      '${suggestion.depotNumber} - ${suggestion.depotName}',
                  getValue: (suggestion) {
                    _depotCodes.add(suggestion.depotNumber!);
                    return suggestion.depotNumber!;
                  },
                  multi: true,
                );
              case kGradeKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kGradeKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      GradeRepository.fetchGrades(pattern, httpClient, config),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
              case kDestinationKey:
                var destinationValue = '';
                return Column(
                  children: [
                    TextField(
                      onChanged: (String value) async {
                        destinationValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (destinationValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Destination: $destinationValue',
                            value: destinationValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
            }
            return Container();
          },
        );

  static const kDepotKey = 'depot';
  static const kGradeKey = 'grade';
  static const kDestinationKey = 'destination';

  static final List<String> _depotCodes = [];

  final BaseClient httpClient;
  final AppConfig config;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(
        key: RouteToMarketFilterController.kDepotKey,
      ))
        EmrFilterModel<List<String>>(
          key: RouteToMarketFilterController.kDepotKey,
          name: 'Origin',
        ),
      if (!containsFilter(
        key: RouteToMarketFilterController.kGradeKey,
      ))
        EmrFilterModel<String>(
          key: RouteToMarketFilterController.kGradeKey,
          name: 'Grade',
        ),
      if (!containsFilter(key: RouteToMarketFilterController.kDestinationKey))
        EmrFilterModel<String>(
          key: RouteToMarketFilterController.kDestinationKey,
          name: 'Destination',
        ),
    ];
  }

  RouteToMarketQueryModel getCurrentFilters() {
    final depotSelected = tryGetFilter<List<String>>(
      key: RouteToMarketFilterController.kDepotKey,
    )?.value;

    final gradeSelected = tryGetFilter<String>(
      key: RouteToMarketFilterController.kGradeKey,
    )?.value;

    final destinationSelected = tryGetFilter<String>(
      key: RouteToMarketFilterController.kDestinationKey,
    )?.value;
    return RouteToMarketQueryModel(
      depotNo: depotSelected,
      grade: gradeSelected,
      route: destinationSelected,
    );
  }
}
