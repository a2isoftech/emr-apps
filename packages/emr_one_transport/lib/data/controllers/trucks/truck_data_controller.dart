import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';

class TruckDataController {
  TruckDataController({
    required this.service,
    required this.haulierService,
  });
  final CommonService service;
  final HaulierService haulierService;

  List<DispatchYards> allYards = [];
  List<ListDetails> allTruckTypes = [];
  List<ListDetails> allStatuses = [];
  List<ListDetails> allConditions = [];
  List<Haulier> allHauliers = [];

  Future<void> getFilterValues({bool isInternal = false}) async {
    allYards = await service.getDispatchYardsForUser();
    allTruckTypes = await service.getListByType(StringConstants.truckTypes);
    allStatuses = isInternal
        ? await service.getListByType(StringConstants.truckTrailerStatuses)
        : ManagedTruckStatus.values.map((e) {
            return ListDetails(
              code: e.apiValue,
              description: e.toString(),
            );
          }).toList();
    allConditions =
        await service.getListByType(StringConstants.assetConditions);
  }

  Future<void> getHauliers(String searchTerm) async {
    allHauliers = await haulierService.searchHauliers(searchTerm);
  }
}
