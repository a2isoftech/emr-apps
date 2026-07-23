import 'package:emr_core_api/graphql/queries/contracts/get_contracts_list.graphql.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

extension ContractsFactory on Query$GetContracts$contracts$nodes {
  Contract toContracts() {
    return Contract(
      accountCode: accountDetails.code,
      accountName: accountDetails.name,
      accountId: accountDetails.id,
      internalReference: references.internal,
      customerReference: references.customer,
      status: status.name,
      pricingBasis: pricingBasis.name,
      noOfLines: noOfLines.toString(),
      contractOrderBookTypeName: contractOrderBookTypeName,
      contractType: contractType,
      deliveryMethod: lines.first.deliveryMethod.name,
      products: getProducts(lines),
    );
  }

  List<String>? getProducts(
    List<Query$GetContracts$contracts$nodes$lines> lines,
  ) {
    final products = <String>[];
    for (final line in lines) {
      products.add(line.productDetails.code);
    }

    return products;
  }
}
