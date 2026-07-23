import 'package:collection/collection.dart';
import 'package:emr_one_crm/models/grade.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_sharedtypes/constants.dart';

class GradeLine {
  GradeLine(this.contractLines, this.grade, this.brokerReference);

  final String grade;

  final String brokerReference;

  final List<ContractLine> contractLines;

  ValueUomPair? get delPrice => contractLines.firstOrNull?.commodityRate;

  ValueUomPair? get colPrice =>
      contractLines.firstOrNull?.commodityRateCollected;

  String get formattedDelPrice =>
      delPrice != null ? _getUOMPriceFormatted(delPrice) : '';

  String get formattedColPrice =>
      colPrice != null ? _getUOMPriceFormatted(colPrice) : '';

  Grade? get gradeDetail => contractLines.firstOrNull?.gradeDetail;

  String _getUOMPriceFormatted(ValueUomPair? price) {
    return '${price?.value}/${price?.uom.name.toUpperCase()}';
  }
}
