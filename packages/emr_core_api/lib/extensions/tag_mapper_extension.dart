import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';

extension TagMapper
    on List<Query$AccountPrices$accountPricesFlattened$nodes$tags?>? {
  List<Tag> toTagModels() {
    final now = DateTime.now();
    return this
            ?.whereType<Query$AccountPrices$accountPricesFlattened$nodes$tags>()
            .where((x) {
              final effectiveTo = (x as dynamic).effectiveTo as DateTime;
              return effectiveTo.isAfter(now) ||
                  (effectiveTo.year == now.year &&
                      effectiveTo.month == now.month &&
                      effectiveTo.day == now.day);
            })
            .map((x) {
              if (x
                  // ignore: lines_longer_than_80_chars
                  is Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag) {
                return Tag(
                  id: x.id,
                  functional: x.functional,
                  category: x.template.category,
                  reason: x.template.reason,
                  templateId: x.templateId,
                  effectiveFrom: x.effectiveFrom,
                  effectiveTo: x.effectiveTo,
                  rate: UomValue.rate(
                    x.rate.value,
                    x.rate.uom.toUomModel(),
                  ),
                  createdBy: x.created.userName,
                  createdDate: x.created.at,
                  fullyCharged: x.fullyCharged,
                  showToCustomer: x.showToCustomer,
                  accountLocationKeys: x.accountLocationKeys,
                  haulageRate: x.haulageRate == null
                      ? null
                      : UomValue.rate(
                          x.haulageRate!.value,
                          x.haulageRate!.uom.toUomModel(),
                        ),
                );
              } else if (x
                  // ignore: lines_longer_than_80_chars
                  is Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag) {
                return Tag(
                  id: x.id,
                  functional: x.functional,
                  category: x.template.category,
                  reason: x.template.reason,
                  templateId: x.templateId,
                  effectiveFrom: x.effectiveFrom,
                  effectiveTo: x.effectiveTo,
                  rate: UomValue.rate(
                    x.rate.value,
                    x.rate.uom.toUomModel(),
                  ),
                  createdBy: x.created.userName,
                  createdDate: x.created.at,
                );
              }
              return null;
            })
            .whereType<Tag>()
            .toList() ??
        [];
  }
}
