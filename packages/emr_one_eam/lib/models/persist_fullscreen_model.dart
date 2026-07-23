import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_eam/admin_menu/controllers/menu_controller.dart';
import 'package:emr_one_eam/approval/controller/approval_controller.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/graphql/queries/search_assets.graphql.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen_controller.dart';
import 'package:emr_one_eam/transfer_and_dispose/controller/transfer_and_dispose_controller.dart';

class PersistFullscreenModel {
  PersistFullscreenModel({
    required this.screenController,
    required this.assetCreateController,
    required this.adminMenuController,
    required this.transferController,
    required this.assetQueryLayoutController,
    required this.approvalController,
  });
  final AssetScreenController screenController;

  final IAssetCreateController assetCreateController;
  final IAdminMenuController adminMenuController;
  final ITransferDisposeController transferController;
  final EmrQueryLayoutController<Query$SearchAssets$searchAssets$nodes>
      assetQueryLayoutController;
  final IApprovalController approvalController;
}
