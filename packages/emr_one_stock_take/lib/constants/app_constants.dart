import 'dart:ui';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/graphql/schema.graphql.dart';

class AppPaths {
  static const String root = '/stock-take';
  static const String createStockTake = 'create/:id';
  static const String editStockTake = 'edit-stocktake/:id';
  static const String cloneAndCreate = 'clone-create/:id';
  static const String review = '/stock-take/:id/review/level/:level';
  static const String locationWeights = ':id/submission';
  static const String viewStocktake = '/:id';
  static const String stockTakeAddWeight = '/:locationid/addweight';
  static const String gallery = 'gallery';
  static const String mediaGallery = '/:id/gallery';
}

class AppConstants {
  static const double appSearchBarHeight = 70;
  static String defaultUom = Enum$Uom.MT.name;
  static String defaultCurrencyCode = 'GBP';
  static int maxWeightValue = 100000;
  static const String lastUsedScaleKey = 'LastUsedScale';
  static const String stockTakeId = 'StockTakeId';
  static const String stockTakeLocationId = 'StockTakeLocationId';
}

class OppraBrandColors {
  static const Color warningColor = EmrStatusChip.warningColor;
  static const Color errorColor = EmrStatusChip.negativeColor;
  static const Color alluminiumPowder = EmrStatusChip.borderColor;
}
