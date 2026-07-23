import 'package:emr_sharedtypes/constants.dart';
import 'package:emr_sharedtypes/models/depot.dart';
import 'package:emr_sharedtypes/models/yard.dart';

class PublicationYardPrice {
  PublicationYardPrice({
    required this.depot,
    required this.yard,
    required this.finalPrice,
  });
  final Depot depot;
  final Yard yard;
  final ValueUomPair finalPrice;
}
