import 'dart:typed_data';

import 'package:psnop/models/depot_position_table/depot_position_response_model.dart';
import 'package:psnop/models/depot_search/depot_search_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class DepotPositionRepository {
  DepotPositionRepository({required this.apiHelper}) {
    _repositoryUtils = RepositoryUtils(apiHelper);
  }

  final PsnopApiHelper apiHelper;
  late final RepositoryUtils _repositoryUtils;

  Future<Uint8List?> exportDepotPositionsToExcel(
    DepotSearchModel filter,
  ) {
    return _repositoryUtils.post(
      url: '/api/DepotPosition/export',
      body: filter.toJson(),
      accept:
          'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
      bodyAsJson: false,
    );
  }

  Future<Uint8List?> exportDepotPositionsToPdf(
    DepotSearchModel filter,
  ) {
    return _repositoryUtils.post(
      url: '/api/DepotPosition/export',
      body: filter.toJson(),
      accept: 'application/pdf',
      bodyAsJson: false,
    );
  }

  Future<DepotPositionResponseModel?> getDepotPositions(
    DepotSearchModel filter,
  ) {
    return _repositoryUtils.post<DepotPositionResponseModel>(
      url: '/api/DepotPosition',
      body: filter.toJson(),
    );
  }
}
