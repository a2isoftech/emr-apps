import 'package:emr_core_api/models/tag.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class DepotPremium {
  DepotPremium({
    required this.depotPremiumId,
    required this.contractLineId,
    required this.depot,
    this.rate,
    this.tags,
    this.currentPrice,
    this.resultantPrice,
  });

  final int depotPremiumId;

  final int contractLineId;

  final Depot depot;

  final ValueUomPair? rate;

  final List<Tag>? tags;

  final ValueUomPair? currentPrice;

  final ValueUomPair? resultantPrice;

}
