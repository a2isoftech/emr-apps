import 'package:emr_one_core/widgets/filter/emr_filter_auto_complete.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_controller.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_model.dart';
import 'package:emr_one_stock_take/screens/start_stock_take/manual_update/manual_update_data_source.dart';
import 'package:flutter/material.dart';

class ManualWebLocationFilterController extends EmrFilterController {
  ManualWebLocationFilterController({
    required this.manualUpdateDataSource,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kProductCode:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  multi: true,
                  (pattern, filterController) {
                    var productCodes = manualUpdateDataSource.data.value
                        .map((x) => x.productCode)
                        .toSet();
                    if (pattern.isNotEmpty) {
                      productCodes = productCodes
                          .where(
                            (x) => x.toLowerCase().contains(
                                  pattern.toLowerCase(),
                                ),
                          )
                          .toSet();
                    }
                    return Future.value(productCodes);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kProductClass:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  multi: true,
                  (pattern, filterController) {
                    var productClasses = manualUpdateDataSource.data.value
                        .map((x) => x.productClass)
                        .toSet();
                    if (pattern.isNotEmpty) {
                      productClasses = productClasses
                          .where(
                            (x) => x.toLowerCase().contains(
                                  pattern.toLowerCase(),
                                ),
                          )
                          .toSet();
                    }
                    return Future.value(productClasses);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kProductLine:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  multi: true,
                  (pattern, filterController) {
                    var productLines = manualUpdateDataSource.data.value
                        .map((x) => x.productLine)
                        .toSet();
                    if (pattern.isNotEmpty) {
                      productLines = productLines
                          .where(
                            (x) => x.toLowerCase().contains(
                                  pattern.toLowerCase(),
                                ),
                          )
                          .toSet();
                    }                    
                    return Future.value(productLines);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              default:
                throw UnimplementedError();
            }
          },
        );

  static const kLocationCode = 'LocationCode';
  static const kProductCode = 'ProductCode';
  static const kProductClass = 'kProductClass';
  static const kProductLine = 'kProductLine';
  static const kLocationType = 'LocationType';
  final ManualUpdateDataSource manualUpdateDataSource;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kProductCode))
        EmrFilterModel<List<String>>(
          key: kProductCode,
          name: 'Product',
        ),
      if (!containsFilter(key: kProductClass))
        EmrFilterModel<List<String>>(
          key: kProductClass,
          name: 'Product Class',
        ),
      if (!containsFilter(key: kProductLine))
        EmrFilterModel<List<String>>(
          key: kProductLine,
          name: 'Product Line',
        ),
    ];
  }
}
