import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@immutable
class StocktakeLocation {
  const StocktakeLocation({
    required this.description,
    required this.code,
    required this.locationType,
    required this.id,
    required this.productId,
    required this.productClass,
    required this.productCode,
    required this.productLine,
    required this.currentWeightLineId,
    this.status = Enum$StockTakeLocationStatus.PENDING,
    this.snapshot,
    this.takenWeights = const [],
    this.active = false,
    this.rate,
    this.netWeightMT,
    this.productDesc,
    this.weightVariance,
    this.valueVariance,
    this.mediaAssets = const [],
    this.comments = const [],
  });

  final String description;
  final String code;
  final String id;
  final String productId;
  final Enum$InventoryLocationType locationType;
  final Enum$StockTakeLocationStatus status;
  final String productCode;
  final String productLine;
  final String productClass;
  final String? productDesc;
  final LocationSnapshotModel? snapshot;
  final List<LocationWeightModel> takenWeights;
  final bool active;
  final UomValue? rate;
  final UomValue? netWeightMT;
  final List<CommentModel> comments;
  final int currentWeightLineId;
  final UomValue? weightVariance;
  final double? valueVariance;
  final List<MediaAsset> mediaAssets;

  Uom get defaultUom => snapshot?.snapshotWeight?.uom ?? Uom.mt;

  UomValue getTotalNetWeight(Uom uom) {
    final totalValue = takenWeights.fold<double>(0, (sum, weightModel) {
      final weightValue = weightModel.getNetWeight(uom);
      return sum + weightValue.value;
    });
    return UomValue.weight(totalValue, uom);
  }

  UomValue getTotalPricedWeight(Uom uom) {
    final totalWeight = (snapshot?.snapshotDeltaWeight?.mtValue ?? 0) +
        (snapshot?.snapshotWeight?.mtValue ?? 0);
    return UomValue.weight(totalWeight, Uom.mt).convertWeight(uom);
  }

  UomValue getTotalUnPricedWeight(Uom uom) {
    final totalWeight = (snapshot?.unpricedDeltaWeight?.mtValue ?? 0) +
        (snapshot?.unpricedWeight?.mtValue ?? 0);

    return UomValue.weight(totalWeight, Uom.mt).convertWeight(uom);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StocktakeLocation && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
