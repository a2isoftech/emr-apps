import 'dart:developer';

import 'package:psnop/components/filters/filter_utils.dart';
import 'package:psnop/models/depot_position_table/depot_position_response_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_groups_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_types_model.dart';
import 'package:psnop/models/filter_response_models/active_parties_model.dart';
import 'package:psnop/models/filter_response_models/depot_region_response_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/filter_response_models/destination_response_model.dart';
import 'package:psnop/models/filter_response_models/heap_response_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary_request_model.dart';
import 'package:psnop/models/planned_movements/planned_movement_response_model.dart';
import 'package:psnop/models/ticket_summary/ticket_summary_response_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';

class RepositoryUtils {
  RepositoryUtils(this.apiHelper);

  final PsnopApiHelper apiHelper;

  Future<List<T>> getFilter<T>({
    required String url,
    required String filterName,
    String? query,
    List<T>? selected,
    void Function(T target, T source)? populate,
    Map<String, String>? additionalParams,
  }) async {
    var q = '';

    if (query != null && query.isNotEmpty) {
      q = query;
    }

    final params = StringBuffer();
    if (additionalParams != null && additionalParams.isNotEmpty) {
      for (final param in additionalParams.entries) {
        params.write('&${param.key}=${param.value}');
      }
    }

    final response = await apiHelper.get(
      '$url?$filterName=$q$params',
    ) as List<dynamic>;

    final models = <T>[];

    for (final element in response) {
      switch (T) {
        case String:
          models.add(element as T);
        default:
          final model = _modelFromMap<T>(element as Map<String, dynamic>);
          if (model != null) {
            models.add(model);
          }
      }
    }

    if (selected == null) {
      return models;
    } else {
      final tempList = models
          .where(
            (element) =>
                FilterUtils.getIndex(list: selected, item: element) >= 0,
          )
          .toList();

      final missing = selected
          .where(
            (element) =>
                FilterUtils.getIndex(list: tempList, item: element) < 0,
          )
          .toList();

      tempList.addAll(missing);

      if (tempList.isNotEmpty) {
        for (final element in selected) {
          final index = FilterUtils.getIndex(list: models, item: element);
          if (index >= 0) {
            if (populate != null) {
              populate(element, models[index]);
            }
            FilterUtils.remove(list: models, item: element);
          }
        }
        models.insertAll(0, tempList);
      } else {
        final mapped = selected.toList();

        models.insertAll(0, mapped);
      }

      return models;
    }
  }

  Future<T?> post<T>({
    required String url,
    required Map<String, dynamic>? body,
    String accept = 'application/json',
    bool bodyAsJson = true,
  }) async {
    try {
      final response = await apiHelper.post(
        url,
        body,
        accept: accept,
        bodyAsJson: bodyAsJson,
      );
      if (bodyAsJson) {
        final model = _modelFromMap<T>(response as Map<String, dynamic>);
        if (model != null) {
          return model;
        }
      } else {
        return response as T;
      }
      log('Unsupported type $T');
      return null;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  T? _modelFromMap<T>(Map<String, dynamic> map) {
    switch (T) {
      case ActiveGradeGroupsModel:
        return ActiveGradeGroupsModel.fromJson(
          map,
        ) as T;
      case ActiveGradeTypesModel:
        return ActiveGradeTypesModel.fromJson(
          map,
        ) as T;
      case ActivePartiesModel:
        return ActivePartiesModel.fromJson(
          map,
        ) as T;
      case DepotResponseModel:
        return DepotResponseModel.fromJson(
          map,
        ) as T;
      case DestinationResponseModel:
        return DestinationResponseModel.fromJson(
          map,
        ) as T;
      case DepotPositionResponseModel:
        return DepotPositionResponseModel.fromJson(
          map,
        ) as T;
      case HeapResponseModel:
        return HeapResponseModel.fromJson(
          map,
        ) as T;
      case PlannedMovementResponseModel:
        return PlannedMovementResponseModel.fromJson(
          map,
        ) as T;
      case InstructionsToMoveSummaryRequestModel:
        return InstructionsToMoveSummaryRequestModel.fromJson(
          map,
        ) as T;
      case RegionViewModel:
        return RegionViewModel.fromJson(
          map,
        ) as T;
      case TicketSummaryResponseModel:
        return TicketSummaryResponseModel.fromJson(
          map,
        ) as T;
    }
    return null;
  }
}
