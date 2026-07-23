import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/mutations/mutations.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/contract_wizard/map_party_new_fixed_model.dart';
import 'package:emr_one_crm/screens/contract_wizard/map_party_new_spot_model.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';
import 'package:http/http.dart';

class ContractService {
  ContractService(this.httpClient, this.tradeRUrl);
  final BaseClient httpClient;
  final Uri tradeRUrl;

  Future<ContractResult> createSpotContract(
    PartyNewContractViewModel model,
  ) async {
    final response = await documentNodeMutationCreateSpotContract.execute(
      httpClient,
      Mutation$CreateSpotContract.fromJson,
      variables: Variables$Mutation$CreateSpotContract(
        input: MapPartyNewSpotViewModel.createRequestFromModel(model),
      ),
      url: tradeRUrl,
    );

    return _createContractResult(
      response.hasErrors(),
      response.data?.createSpotContract?.contractRef,
      response.errors?.first.message,
    );
  }

  Future<ContractResult> modifySpotContract(
    PartyNewContractViewModel model,
  ) async {
    final response = await documentNodeMutationModifySpotContract.execute(
      httpClient,
      Mutation$ModifySpotContract.fromJson,
      variables: Variables$Mutation$ModifySpotContract(
        input: MapPartyNewSpotViewModel.createRequestFromModel(model),
      ),
      url: tradeRUrl,
    );

    return _createContractResult(
      response.hasErrors(),
      response.data?.modifySpotContract?.contractRef,
      response.errors?.first.message,
    );
  }

  Future<ContractResult> createFixedContract(
    PartyNewContractViewModel model,
  ) async {
    final response = await documentNodeMutationCreateFixedContract.execute(
      httpClient,
      Mutation$CreateFixedContract.fromJson,
      variables: Variables$Mutation$CreateFixedContract(
        input: MapPartyNewFixedViewModel.createRequestFromModel(model),
      ),
      url: tradeRUrl,
    );

    return _createContractResult(
      response.hasErrors(),
      response.data?.createFixedContract.contractRef,
      response.errors?.first.message,
    );
  }

  Future<ContractResult> modifyFixedContract(
    PartyNewContractViewModel model,
  ) async {
    final response = await documentNodeMutationModifyFixedContract.execute(
      httpClient,
      Mutation$ModifyFixedContract.fromJson,
      variables: Variables$Mutation$ModifyFixedContract(
        input: MapPartyNewFixedViewModel.createRequestFromModel(model),
      ),
      url: tradeRUrl,
    );

    return _createContractResult(
      response.hasErrors(),
      response.data?.modifyFixedContract?.contractRef,
      response.errors?.first.message,
    );
  }

  Future<GraphQLResponse<Mutation$CloseContract>> closeContract({
    required int contractHeaderId,
    required Enum$CloseContractType closureType,
    required Enum$CloseContractReason closureReasonId,
    required String closureReasonNotes,
  }) {
    return documentNodeMutationCloseContract.execute(
      httpClient,
      Mutation$CloseContract.fromJson,
      variables: Variables$Mutation$CloseContract(
        input: Input$CloseContractInput(
          contractHeaderId: contractHeaderId,
          closureType: closureType,
          closureReasonId: closureReasonId,
          closureReasonNotes: closureReasonNotes,
        ),
      ),
      url: tradeRUrl,
    );
  }

  Future<GraphQLResponse<Mutation$ExtendContract>> extendContract({
    required int contractHeaderId,
    DateTime? endDate,
  }) {
    return documentNodeMutationExtendContract.execute(
      httpClient,
      Mutation$ExtendContract.fromJson,
      variables: Variables$Mutation$ExtendContract(
        input: Input$ExtendContractInput(
          contractHeaderId: contractHeaderId,
          endDate: endDate,
        ),
      ),
      url: tradeRUrl,
    );
  }

  ContractResult _createContractResult(
    bool hasErrors,
    String? contractRef,
    String? errorMessage,
  ) =>
      hasErrors
          ? ContractResult(
              ContractResultCode.gatewayError,
              message: errorMessage ?? '',
            )
          : ContractResult(
              ContractResultCode.ok,
              contractRef: contractRef,
            );
}
