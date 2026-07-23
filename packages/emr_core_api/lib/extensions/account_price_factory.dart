import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/extensions/tag_mapper_extension.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';

extension AccountPriceFactory
    on Query$AccountPrices$accountPricesFlattened$nodes {
  AccountPrice toAccountPrice() {
    return AccountPrice(
      accountCode: accountCode,
      accountName: accountName ?? '',
      accountId: accountId,
      yardCode: yardCode ?? '',
      yardId: yardId,
      product: productCode ?? '',
      productId: productId,
      productName: productName ?? '',
      publicationId: publicationId,
      publicationName: publicationName ?? '',
      rate: baseRate == null
          ? null
          : UomValue.rate(
              baseRate!.value,
              baseRate!.uom.toUomModel(),
            ),
      resultantPrice: resultantRate?.rate == null
          ? null
          : UomValue.rate(
              resultantRate!.rate.value,
              resultantRate!.rate.uom.toUomModel(),
            ),
      previousIssueRate: previousBaseRate == null
          ? null
          : UomValue.rate(
              previousBaseRate!.value,
              previousBaseRate!.uom.toUomModel(),
            ),
      issueDate: issueDate,
      deliveryMethod: deliveryMethod.toDeliveryMethodModel(),
      managerName: primaryAccountManagerName ?? '',
      tags: tags.toTagModels(),
      tagDelta: tagDelta,
      locations: [...locations.map((loc) => loc.code)],
    );
  }
}
