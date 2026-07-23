import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/approval/models/approval_request_input.dart';
import 'package:emr_one_eam/base/base_service.dart';
import 'package:emr_one_eam/graphql/mutations/update_asset_approval_status.graphql.dart';
import 'package:emr_one_eam/graphql/queries/get_asset_pending_approval.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/asset_approval.dart';

abstract class IApprovalService extends BaseService {
  IApprovalService({required super.httpClient});

  Future<List<AssetApproval>> getPendingAssetApprovals({
    String? cmpCode,
    String? approvalType,
  });

  Future<bool> updateApprovalStatus({
    required List<ApprovalRequestInput> approvalRequests,
    required String status,
  });
}

class ApprovalService extends IApprovalService {
  ApprovalService({required super.httpClient});

  @override
  Future<List<AssetApproval>> getPendingAssetApprovals({
    String? cmpCode,
    String? approvalType,
  }) async {
    final result = await documentNodeQuerygetPendingApprovals.execute(
      httpClient,
      Query$getPendingApprovals.fromJson,
      variables: Variables$Query$getPendingApprovals(
        cmpCode: cmpCode,
        approvalType: approvalType,
      ),
    );

    if (result.hasErrors() || result.data?.assetApprovals == null) return [];

    return result.data!.assetApprovals
        .map((e) => AssetApproval.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<bool> updateApprovalStatus({
    required List<ApprovalRequestInput> approvalRequests,
    required String status,
  }) async {
    final result = await documentNodeMutationupdateAssetApprovalStatus.execute(
      httpClient,
      Mutation$updateAssetApprovalStatus.fromJson,
      variables: Variables$Mutation$updateAssetApprovalStatus(
        input: Input$UpdateAssetApprovalInput(
          assetApprovalIds: approvalRequests
              .map(
                (e) => Input$ApprovalRequestInput(
                  approvalId: e.approvalId,
                  functionalLocationCode: e.functionalLocationCode ?? '',
                ),
              )
              .toList(),
          status: status,
        ),
      ),
    );

    if (result.hasErrors() || result.data == null) {
      return false;
    }

    return true;
  }
}
