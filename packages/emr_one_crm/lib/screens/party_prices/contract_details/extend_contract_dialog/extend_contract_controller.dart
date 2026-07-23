import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/mutations/extend_contract.graphql.dart';
import 'package:emr_one_crm/services/contract_service.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';
import 'package:gql_exec/gql_exec.dart';

class ExtendContractController {
  ExtendContractController({
    required this.contract,
  })  : endDate = ValueNotifier<DateTime?>(contract.endDate),
        error = ValueNotifier<String?>(null),
        loading = ValueNotifier<bool>(false);

  final Contract contract;

  ContractService? contractService;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ValueNotifier<DateTime?> endDate;
  ValueNotifier<String?> error;
  ValueNotifier<bool> loading;

  Future<GraphQLResponse<Mutation$ExtendContract>> save() async {
    if (contractService == null) {
      error.value = 'contractService is null';
      return Future.value(
        GraphQLResponse(
          errors: [const GraphQLError(message: 'contractService is null')],
        ),
      );
    }

    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      error.value = null;
      return GraphQLResponse();
    }

    loading.value = true;
    try {
      final response = await contractService!.extendContract(
        contractHeaderId: contract.id,
        endDate: endDate.value,
      );

      if (response.hasErrors()) {
        error.value = response.errors?.map((e) => e.message).join('\n') ??
            'Unknown error';
      } else {
        error.value = null;
      }

      return response;
    } catch (ex) {
      final msg = ex.toString();
      error.value = msg;
      return GraphQLResponse(errors: [GraphQLError(message: msg)]);
    } finally {
      loading.value = false;
    }
  }
}
