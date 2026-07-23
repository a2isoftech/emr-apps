import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_eam/admin_menu/controllers/menu_controller.dart';
import 'package:emr_one_eam/approval/controller/approval_controller.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/graphql/queries/search_assets.graphql.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen_controller.dart';
import 'package:emr_one_eam/transfer_and_dispose/controller/transfer_and_dispose_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssetScreenBase extends StatelessWidget {
  const AssetScreenBase({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AssetScreenController>(context);

    final adminController = Provider.of<IAdminMenuController>(context);

    final assetCreateController = Provider.of<IAssetCreateController>(context);
    final transferDisposeController =
        Provider.of<ITransferDisposeController>(context);
    final assetSearchQueryController = Provider.of<
        EmrQueryLayoutController<Query$SearchAssets$searchAssets$nodes>>(
      context,
    );
    final approvalController = Provider.of<IApprovalController>(context);

    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: AssetScreen(
              controller: controller,
              adminMenuController: adminController,
              assetCreateController: assetCreateController,
              transferDisposeController: transferDisposeController,
              assetQueryLayoutController: assetSearchQueryController,
              approvalController: approvalController,
            ),
          ),
        ],
      ),
    );
  }
}
