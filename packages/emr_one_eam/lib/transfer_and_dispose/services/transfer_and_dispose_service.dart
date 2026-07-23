import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base_service.dart';
import 'package:emr_one_eam/graphql/mutations/save_asset_disposal.graphql.dart';
import 'package:emr_one_eam/graphql/mutations/save_asset_transfer.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';

abstract class ITransferDisposeService extends BaseService {
  ITransferDisposeService({required super.httpClient});

  Future<bool> saveTransferRequest({
    required List<String> assetIds,
    required String transferToDepotNo,
    required DateTime transferEffectiveFrom,
    String? reason,
  });

  Future<bool> saveDisposeRequest({
    required List<String> assetIds,
    required String disposalStatus,
    required DateTime disposalEffectiveFrom,
    String? salesInVoiceNo,
    String? reason,
  });
}

class TransferDisposeService extends ITransferDisposeService {
  TransferDisposeService({required super.httpClient});

  @override
  Future<bool> saveDisposeRequest({
    required List<String> assetIds,
    required String disposalStatus,
    required DateTime disposalEffectiveFrom,
    String? salesInVoiceNo,
    String? reason,
  }) async {
    final result = await documentNodeMutationsaveAssetDisposal.execute(
      httpClient,
      Mutation$saveAssetDisposal.fromJson,
      variables: Variables$Mutation$saveAssetDisposal(
        input: Input$DisposalRequestInput(
          assetIds: assetIds,
          disposalEffectiveFrom: disposalEffectiveFrom,
          disposalStatus: disposalStatus,
          salesInvoice: salesInVoiceNo,
          disposalReason: reason,
        ),
      ),
    );
    if (result.hasErrors() || result.data == null) {
      return false;
    }

    return true;
  }

  @override
  Future<bool> saveTransferRequest({
    required List<String> assetIds,
    required String transferToDepotNo,
    required DateTime transferEffectiveFrom,
    String? reason,
  }) async {
    final result = await documentNodeMutationsaveAssetTransfer.execute(
      httpClient,
      Mutation$saveAssetTransfer.fromJson,
      variables: Variables$Mutation$saveAssetTransfer(
        input: Input$TransferRequestInput(
          assetIds: assetIds,
          transferEffectiveFrom: transferEffectiveFrom,
          transferToDepo: transferToDepotNo,
          transferReason: reason,
        ),
      ),
    );
    if (result.hasErrors() || result.data == null) {
      return false;
    }

    return true;
  }
}
