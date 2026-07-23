import 'package:emr_one_core/widgets/filter/emr_filter_auto_complete.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_controller.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_model.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/material.dart';

class LocationFilterController extends EmrFilterController {
  LocationFilterController({
    required this.service,
    required this.productFamily,
    required this.isApplyProductFamilyFilter,
  }) : super(
         filterContentBuilder: (context, filter, controller) {
           final productFamilies = [productFamily];
           switch (filter.key) {
             case kProductCode:
               return EmrFilterAutoComplete<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 multi: true,
                 (pattern, filterController) => service.searchProducts(
                   query: pattern,
                   productFamilies: productFamilies,
                   productClasses:
                       filterController
                           .tryGetFilter<List<String>>(key: kProductClass)
                           ?.value ??
                       [],
                   productLines:
                       filterController
                           .tryGetFilter<List<String>>(key: kProductLine)
                           ?.value ??
                       [],
                 ),
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
                 (pattern, filterController) => service.searchProductClasses(
                   query: pattern,
                   productFamilies: productFamilies,
                   productCodes:
                       filterController
                           .tryGetFilter<List<String>>(key: kProductCode)
                           ?.value ??
                       [],
                   productLines:
                       filterController
                           .tryGetFilter<List<String>>(key: kProductLine)
                           ?.value ??
                       [],
                 ),
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
                 (pattern, filterController) => service.searchProductLines(
                   query: pattern,
                   productFamilies: productFamilies,
                   productClasses:
                       filterController
                           .tryGetFilter<List<String>>(key: kProductClass)
                           ?.value ??
                       [],
                   productCodes:
                       filterController
                           .tryGetFilter<List<String>>(key: kProductCode)
                           ?.value ??
                       [],
                 ),
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
               );
             case kProductFamily:
               return EmrFilterAutoComplete<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return service.searchProductFamilies(
                     query: pattern,
                     productLines:
                         filterController
                             .tryGetFilter<List<String>>(key: kProductLine)
                             ?.value ??
                         [],
                     productClasses:
                         filterController
                             .tryGetFilter<List<String>>(key: kProductClass)
                             ?.value ??
                         [],
                     productCodes:
                         filterController
                             .tryGetFilter<List<String>>(key: kProductCode)
                             ?.value ??
                         [],
                   );
                 },
                 multi: true,
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
               );
             default:
               throw UnimplementedError();
           }
         },
         filters: [
           if (isApplyProductFamilyFilter)
             EmrFilterModel<List<String>>(
               key: kProductFamily,
               name: kProductFamily,
               text: productFamily,
               value: [productFamily],
             ),
         ],
       );

  static const kLocationCode = 'LocationCode';
  static const kProductCode = 'ProductCode';
  static const kProductClass = 'kProductClass';
  static const kProductLine = 'kProductLine';
  static const kProductFamily = 'ProductFamily';
  final StocktakeService service;
  final String productFamily;
  final bool isApplyProductFamilyFilter;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kProductCode))
        EmrFilterModel<List<String>>(key: kProductCode, name: 'Product'),
      if (!containsFilter(key: kProductClass))
        EmrFilterModel<List<String>>(key: kProductClass, name: 'Product Class'),
      if (!containsFilter(key: kProductLine))
        EmrFilterModel<List<String>>(key: kProductLine, name: 'Product Line'),
      if (!containsFilter(key: kProductFamily))
        EmrFilterModel<List<String>>(
          key: kProductFamily,
          name: 'Product Family',
        ),
    ];
  }
}
