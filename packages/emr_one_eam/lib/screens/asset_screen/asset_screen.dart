import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/admin_menu/controllers/menu_controller.dart';
import 'package:emr_one_eam/admin_menu/views/menu.dart';
import 'package:emr_one_eam/approval/controller/approval_controller.dart';
import 'package:emr_one_eam/approval/views/approval_tabs.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/common/colors.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/constants/paths.dart';
import 'package:emr_one_eam/eam.dart';
import 'package:emr_one_eam/eam_asset_search/views/eam_asset_search_view.dart';
import 'package:emr_one_eam/graphql/queries/search_assets.graphql.dart';
import 'package:emr_one_eam/models/persist_fullscreen_model.dart';
import 'package:emr_one_eam/routing/eam_route_registry.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen_controller.dart';
import 'package:emr_one_eam/transfer_and_dispose/controller/transfer_and_dispose_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssetScreen extends StatefulWidget with FullExtent {
  AssetScreen({
    required this.controller,
    required this.assetCreateController,
    required this.transferDisposeController,
    required this.adminMenuController,
    required this.approvalController,
    required this.assetQueryLayoutController,
    super.key,
  });
  final AssetScreenController controller;
  final IAssetCreateController assetCreateController;
  final IAdminMenuController adminMenuController;
  final ITransferDisposeController transferDisposeController;
  final IApprovalController approvalController;
  final EmrQueryLayoutController<Query$SearchAssets$searchAssets$nodes>
      assetQueryLayoutController;

  @override
  State<AssetScreen> createState() => _AssetScreenState();
}

class _AssetScreenState extends State<AssetScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  Map<String, String> _tabNames = {};
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: widget.controller.selectedTabIndex.value,
      length: 4,
      vsync: this,
      animationDuration: Duration.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    _initializeLocalizedNames();
    widget.controller.setTitle(getTitle());
    final access = Provider.of<ScreenAccess>(context, listen: false);
    final mroRoutes =
        EAMRouteRegistry.eamMenuItems.first.routes as List<EORoute>;
    final routes = mroRoutes
        .where(
          (element) =>
              element.displayName(context) ==
              EAMRoutingDisplayNames.assetScreen,
        )
        .first
        .routes as List<EORoute>;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ValueListenableBuilder(
          valueListenable: widget.controller.title,
          builder: (context, value, child) => Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        backgroundColor: EamAppColors.primaryBlue,
        actions: [
          Tooltip(
            message: context.l10n.fullScreen,
            child: IconButton(
              iconSize: 45,
              onPressed: () async {
                widget.controller.setTabIndex(_tabController.index);
                if (!widget.controller.isFullScreen.value) {
                  widget.controller.isFullScreen.value = true;
                  await context
                      .pushNamed(
                    EAMRoutingName.assetScreen,
                    extra: PersistFullscreenModel(
                      screenController: widget.controller,
                      adminMenuController: widget.adminMenuController,
                      assetCreateController: widget.assetCreateController,
                      transferController: widget.transferDisposeController,
                      approvalController: widget.approvalController,
                      assetQueryLayoutController:
                          widget.assetQueryLayoutController,
                    ),
                  )
                      .then((value) async {
                    widget.controller.isFullScreen.value = false;
                  });
                } else {
                  context.pop();
                }
              },
              icon: Icon(
                widget.controller.isFullScreen.value
                    ? Icons.fullscreen_exit
                    : Icons.fullscreen,
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: EamAppColors.white,
              ),
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          onTap: (value) async {
            if (value == 1 && !access.isEAMBusinessAdmin(context) ||
                (value == 2 && !access.isEAMFinanceAdmin(context)) ||
                (value == 3 && !access.isEAMAdmin(context))) {
              await EmrDialog.ok(
                context,
                titleText: context.l10n.information,
                contentText: access.accessDeniedMessage(),
              );
              widget.controller.setTabIndex(0);
              _tabController.animateTo(0);
            } else {
              resetDataOnTabChange();
              widget.controller.setTabIndex(0);
              widget.controller.setTabIndex(value);
            }
            widget.controller.setTitle(getTitle());
          },
          padding: const EdgeInsets.all(5),
          labelColor: Colors.white,
          labelPadding: const EdgeInsets.all(10),
          unselectedLabelColor: Colors.white,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: routes
              .map(
                (e) => Text(
                  _getLocalizedNames(e.displayName(context)).toUpperCase(),
                ),
              )
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          EamAssetSearchView(
            queryLayoutController: widget.assetQueryLayoutController,
            transferDisposeController: widget.transferDisposeController,
            onAssetSelected: (assetCode) {
              final access = Provider.of<ScreenAccess>(context, listen: false);
              if (!access.isEAMBusinessAdmin(context) &&
                  !access.isEAMFinanceAdmin(context)) {
                widget.assetCreateController.isReadOnly = true;
              }
              widget.assetCreateController.assetCode = assetCode;
              widget.assetCreateController.createPageStep.value =
                  CreatePageView.assetDetails;
              widget.assetCreateController.newAsset = false;
              widget.controller.setTabIndex(1);
              _tabController.animateTo(1);
              widget.controller.setTitle(
                widget.assetCreateController.assetCode == null
                    ? context.l10n.create
                    : '''
${context.l10n.modifyAssetTitle}: ${widget.assetCreateController.assetCode}''',
              );
            },
            onReviewSelected: (assetCodes) async {
              final access = Provider.of<ScreenAccess>(context, listen: false);
              if (!access.isEAMBusinessAdmin(context) &&
                  !access.isEAMFinanceAdmin(context)) {
                await EmrDialog.ok(
                  context,
                  titleText: context.l10n.information,
                  contentText: access.accessDeniedMessage(),
                );
              } else {
                widget.approvalController.assetCodes.value = assetCodes;
                widget.controller.setTabIndex(2);
                _tabController.animateTo(2);
                widget.approvalController.selectedTabIndex.value = 2;
              }
            },
          ),
          AssetCreateView(
            controller: widget.assetCreateController,
            onAssetSaved: () async {
              widget.controller.setTabIndex(0);
              _tabController.animateTo(0);
              if (context.mounted) {
                widget.controller.setTitle(
                  widget.assetCreateController.assetCode ?? context.l10n.search,
                );
              }
            },
          ),
          ApprovalSubTabs(
            outerTab: context.l10n.approvals,
            screenController: widget.controller,
            approvalController: widget.approvalController,
            createController: widget.assetCreateController,
          ),
          AdminMenuView(
            controler: widget.adminMenuController,
            screenControler: widget.controller,
          ),
        ],
      ),
    );
  }

  void _initializeLocalizedNames() {
    _tabNames = {
      EAMRoutingDisplayNames.eam: context.l10n.assetManagement,
      EAMRoutingDisplayNames.adminMenu: context.l10n.admin,
      EAMRoutingDisplayNames.approvals: context.l10n.approvals,
      EAMRoutingDisplayNames.create: context.l10n.create,
      EAMRoutingDisplayNames.search: context.l10n.search,
      EAMRoutingDisplayNames.assetScreen: context.l10n.assetScreenDisplayLabel,
    };
  }

  String _getLocalizedNames(String originalText) {
    final localizedText = _tabNames[originalText];
    return localizedText ?? originalText;
  }

  String getTitle() {
    final currentTab = widget.controller.selectedTabIndex.value;
    var title = context.l10n.assetManagement;
    switch (currentTab) {
      case 0:
        title = context.l10n.assetSearch;
      case 1:
        title = context.l10n.newAsset;
      case 2:
        title = context.l10n.transferApprovals;
      case 3:
        title = context.l10n.admin;
    }
    return title;
  }

  void resetDataOnTabChange() {
    widget.adminMenuController.setSelectedMenu(null);
    widget.assetCreateController.reset();
    widget.transferDisposeController.reset();
    widget.approvalController.reset();
  }
}
