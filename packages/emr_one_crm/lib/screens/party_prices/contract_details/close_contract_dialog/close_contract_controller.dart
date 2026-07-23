import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/mutations/close_contract.graphql.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/services/contract_service.dart';
import 'package:flutter/material.dart';
import 'package:gql_exec/gql_exec.dart';

class CloseContractController {
  CloseContractController({
    required this.contractHeaderId,
  });

  final int contractHeaderId;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ContractService? contractService;

  Enum$CloseContractType closureType = Enum$CloseContractType.$unknown;

  Enum$CloseContractReason closeReason = Enum$CloseContractReason.$unknown;

  String notes = '';

  Future<GraphQLResponse<Mutation$CloseContract>> save() async {
    if (contractService == null) {
      return Future.value(
        GraphQLResponse(
          errors: [const GraphQLError(message: 'contractService is null')],
        ),
      );
    }

    final isValid = formKey.currentState?.validate() ?? false;

    if (isValid) {
      return contractService!.closeContract(
        contractHeaderId: contractHeaderId,
        closureType: closureType,
        closureReasonId: closeReason,
        closureReasonNotes: notes,
      );
    }

    return GraphQLResponse();
  }
}
