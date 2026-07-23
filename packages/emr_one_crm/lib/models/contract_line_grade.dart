import 'package:emr_core_api/models/tag.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_sharedtypes/constants.dart';

class ContractLineGrade {
  ContractLineGrade({
    required this.grade,
    required this.product,
    required this.yard,
    required this.contractLine,
    this.tags,
    this.currentPrice,
  });

  String get formattedCurrentPrice => currentPrice != null
      ? _getUOMPriceFormatted(currentPrice, tags ?? [])
      : '';

  ValueUomPair get resultantPrice => currentPrice != null
      ? _getResultantPrice(currentPrice, tags ?? [])
      : ValueUomPair();

  final String grade;
  final String product;
  final String yard;
  final ContractLine contractLine;
  final List<Tag>? tags;
  final ValueUomPair? currentPrice;

  String _getUOMPriceFormatted(ValueUomPair? price, List<Tag> tags) {
    final baseValue = price?.value ?? 0;
    final tagDelta = tags
        .where((tag) => !(tag.isCollected ?? false))
        .fold<double>(0, (prev, ele) => prev + (ele.rate?.value ?? 0));

    if (tags.isEmpty) {
      return '${baseValue.toStringAsFixed(2)} / ${price?.uom.name.toUpperCase()}';
    }

    final operator = tagDelta >= 0 ? '+' : '-';
    final tagDeltaString =
        tagDelta != 0 ? '($operator${tagDelta.abs().toStringAsFixed(2)}) ' : '';

    return '${baseValue.toStringAsFixed(2)} $tagDeltaString/ ${tags.first.rate?.uom.name.toUpperCase()}';
  }

  ValueUomPair _getResultantPrice(ValueUomPair? price, List<Tag> tags) {
    final baseValue = price?.value ?? 0;

    double tagDelta = 0;

    for (final tag in tags) {
      final isCollected = tag.isCollected ?? false;

      if (isCollected) {
        final showToCustomer = tag.showToCustomer ?? false;
        final fullyCharged = tag.fullyCharged ?? false;

        if (showToCustomer) {
          continue;
        }

        if (fullyCharged || (!showToCustomer && !fullyCharged)) {
          final haulageCharge = tag.rate?.value ?? 0;
          tagDelta += -haulageCharge;
        }
      } else {
        tagDelta += tag.rate?.value ?? 0;
      }
    }

    return ValueUomPair(
      value: baseValue + tagDelta,
      uom: price?.uom ?? Uom.unknown,
    );
  }
}
