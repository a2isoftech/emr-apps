import 'dart:typed_data';

import 'package:psnop/models/filter_response_models/destination_response_model.dart';
import 'package:psnop/models/planned_movements/planned_movement_response_model.dart';
import 'package:psnop/models/planned_movements/planned_movements_search.dart';
import 'package:psnop/models/planned_movements/route_to_market_model.dart';
import 'package:psnop/models/planned_movements/update_dates_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class PlannedMovementsRepository {
  PlannedMovementsRepository({required this.apiHelper}) {
    _repositoryUtils = RepositoryUtils(apiHelper);
  }

  final PsnopApiHelper apiHelper;
  late final RepositoryUtils _repositoryUtils;

  static Future<List<String>> fetchContractRefs({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<String>? selected,
  }) {
    final repositoryUtils = RepositoryUtils(apiHelper);
    return repositoryUtils.getFilter<String>(
      filterName: 'filter',
      selected: selected,
      query: filter,
      url: '/api/PlannedMovements/contractRef',
    );
  }

  static Future<List<DestinationResponseModel>> fetchDestinations({
    required String filter,
    required PsnopApiHelper apiHelper,
    List<DestinationResponseModel>? selected,
  }) {
    final repositoryUtils = RepositoryUtils(apiHelper);
    return repositoryUtils.getFilter<DestinationResponseModel>(
      filterName: 'filter',
      query: filter,
      selected: selected,
      url: '/api/PlannedMovements/destinations',
    );
  }

  Future<PlannedMovementResponseModel?> fetchPlanningViewPlannedMovements({
    required PlannedMovementsSearchModel filter,
  }) {
    return _repositoryUtils.post<PlannedMovementResponseModel>(
      url: '/api/DepotPosition/plannedmovements',
      body: filter.toJson(),
    );
  }

  Future<Uint8List?> updateRequestedDateForMovements(UpdateDatesModel model) {
    return _repositoryUtils.post<Uint8List?>(
      url: '/api/plannedmovements/changedates',
      body: model.toJson(),
      bodyAsJson: false,
    );
  }

  Future<Uint8List?> addRouteToMarketMovement(RouteToMarketModel model) {
    return _repositoryUtils.post<Uint8List?>(
      url: '/api/plannedmovements/addroutetomarket',
      body: model.toJson(),
      bodyAsJson: false,
    );
  }

  Future<Uint8List?> submitTransportRequests(
    PlannedMovementResponseModel movements,
  ) {
    return _repositoryUtils.post<Uint8List?>(
      url: '/api/plannedmovements/submittransportrequests',
      body: movements.toJson(),
      bodyAsJson: false,
    );
  }
}
