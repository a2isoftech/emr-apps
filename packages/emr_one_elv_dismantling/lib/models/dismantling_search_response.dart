import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_dismantling/models/dismantling_vehicle.dart';

class DismantlingSearchResponse {
  DismantlingSearchResponse(
    this.vehicles,
    this.pageInfo,
  );
  List<DismantlingVehicle> vehicles;
  EmrQueryGraphQLPageInfo pageInfo;
}
