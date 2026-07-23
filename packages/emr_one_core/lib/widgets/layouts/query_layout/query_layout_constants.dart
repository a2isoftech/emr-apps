import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/widgets/filter/emr_filter.dart';

class QueryLayoutConstants {
  static double get controlsPanelHeight =>
      Insets.gutter + EmrFilter.defaultHeight;

  static double get pagingPanelHeightWeb => 93;

  static double get pagingPanelHeight => 112;

  static double get actionPanelHeightWeb => Insets.gutter + 30;

  static double get actionPanelHeight => Insets.gutter + 34;

  // Textbox height with top padding
  // (48 is the ThemeData.materialTapTargetSize)
  static double get searchPanelHeightWeb => Insets.gutter + 44;

  static double get searchPanelHeight => Insets.gutter + 48;
}
