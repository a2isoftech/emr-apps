import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/contract.dart';

class ContractsOutput {
  ContractsOutput({
    required this.contracts,
    required this.metadata,
  });

  final List<Contract> contracts;
  final EmrQueryGraphQLMetadata<Map<String, EmrFacetResult>> metadata;
}
