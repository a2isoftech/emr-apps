import 'package:emr_one_inform/models/yard.dart';

abstract class IYardService {
  Future<List<String>> getAllTerritories();

  Future<List<Yard>> getYardsByTerritoryCode({
    required String code,
  });

  Future<Yard?> locateNearestYard({
    required double latitude,
    required double longitude,
  });
}
