import 'package:psnop/models/filter_response_models/active_grade_groups_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_types_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/filter_response_models/destination_response_model.dart';

class FilterUtils {
  static int getIndex<T>({
    required List<T> list,
    required T item,
  }) {
    for (var i = 0; i < list.length; i++) {
      if (_equal(list[i], item)) {
        return i;
      }
    }
    return -1;
  }

  static void remove<T>({
    required List<T> list,
    required T item,
  }) {
    final index = getIndex(
      list: list,
      item: item,
    );
    if (index >= 0) {
      list.removeAt(index);
    }
  }

  static bool _equal<T>(
    T first,
    T second,
  ) {
    switch (T) {
      case ActiveGradeGroupsModel:
        final firstActiveGradeGroupsModel = first as ActiveGradeGroupsModel;
        final secondActiveGradeGroupsModel = second as ActiveGradeGroupsModel;
        return firstActiveGradeGroupsModel.gradeGroup ==
                secondActiveGradeGroupsModel.gradeGroup &&
            firstActiveGradeGroupsModel.gradeGroupTerritoryName ==
                secondActiveGradeGroupsModel.gradeGroupTerritoryName;
      case ActiveGradeTypesModel:
        final firstActiveGradeTypesModel = first as ActiveGradeTypesModel;
        final secondActiveGradeTypesModel = second as ActiveGradeTypesModel;
        return firstActiveGradeTypesModel.gradeType ==
                secondActiveGradeTypesModel.gradeType &&
            (firstActiveGradeTypesModel.gradeTypeTerritoryName ==
                    secondActiveGradeTypesModel.gradeTypeTerritoryName ||
                secondActiveGradeTypesModel.gradeTypeTerritoryName == null);
      case DepotResponseModel:
        final firstDepotResponseModel = first as DepotResponseModel;
        final secondDepotResponseModel = second as DepotResponseModel;
        return firstDepotResponseModel.depotNumber ==
                secondDepotResponseModel.depotNumber &&
            (firstDepotResponseModel.depotName ==
                    secondDepotResponseModel.depotName ||
                secondDepotResponseModel.depotName.isEmpty) &&
            (firstDepotResponseModel.depotShortName ==
                    secondDepotResponseModel.depotShortName ||
                secondDepotResponseModel.depotShortName.isEmpty) &&
            (firstDepotResponseModel.territoryCode ==
                    secondDepotResponseModel.territoryCode ||
                secondDepotResponseModel.territoryCode.isEmpty);
      case DestinationResponseModel:
        final firstDestinationResponseModel = first as DestinationResponseModel;
        final secondDestinationResponseModel =
            second as DestinationResponseModel;
        return firstDestinationResponseModel.name ==
                secondDestinationResponseModel.name &&
            (firstDestinationResponseModel.id ==
                    secondDestinationResponseModel.id ||
                secondDestinationResponseModel.id.isEmpty) &&
            (firstDestinationResponseModel.movementType ==
                    secondDestinationResponseModel.movementType ||
                secondDestinationResponseModel.movementType.isEmpty);
      default:
        return first == second;
    }
  }
}
