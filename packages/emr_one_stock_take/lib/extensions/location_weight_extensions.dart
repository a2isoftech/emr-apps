import 'package:emr_one_stock_take/models/location_weight_model.dart';

extension LocationWeightExtensions on List<LocationWeightModel> {
  List<LocationWeightModel> activeWeights() {
    return where((x) => x.isDeleted != true).toList();
  }
}
