import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/approval/controller/approval_controller.dart';
import 'package:emr_one_eam/approval/views/approval.dart';
import 'package:emr_one_eam/asset_create/controllers/asset_create_controller.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class ApprovalSubTabs extends StatefulWidget {
  const ApprovalSubTabs({
    required this.outerTab,
    required this.screenController,
    required this.approvalController,
    required this.createController,
    super.key,
  });

  final String outerTab;
  final AssetScreenController screenController;
  final IApprovalController approvalController;
  final IAssetCreateController createController;
  @override
  State<ApprovalSubTabs> createState() => _ApprovalSubTabs();
}

class _ApprovalSubTabs extends State<ApprovalSubTabs>
    with TickerProviderStateMixin {
  late final TabController _subTabController;

  @override
  void initState() {
    super.initState();
    _subTabController =
        TabController(length: 3, vsync: this, animationDuration: Duration.zero);
    _subTabController.index = widget.approvalController.selectedTabIndex.value;
    SchedulerBinding.instance.addPostFrameCallback(
      (_) =>
          widget.screenController.setTitle(_getTitle(_subTabController.index)),
    );
  }

  @override
  void dispose() {
    _subTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final access = Provider.of<ScreenAccess>(context, listen: false);
    if (!access.isEAMFinanceAdmin(context)) {
      return Container();
    }
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _subTabController,
          tabs: <Widget>[
            Tab(text: context.l10n.transferString),
            Tab(text: context.l10n.dispose),
            Tab(text: context.l10n.newAssets),
          ],
          onTap: (value) async {
            if (!access.isEAMFinanceAdmin(context)) {
              await EmrDialog.ok(
                context,
                titleText: context.l10n.information,
                contentText: access.accessDeniedMessage(),
              );
            } else {
              widget.screenController.setTitle(_getTitle(value));
            }
          },
        ),
        Expanded(
          child: TabBarView(
            controller: _subTabController,
            children: <Widget>[
              ApprovalBase(
                controller: widget.approvalController,
                action: AssetActions.transfer,
              ),
              ApprovalBase(
                controller: widget.approvalController,
                action: AssetActions.dispose,
              ),
              ApprovalBase(
                controller: widget.approvalController,
                createController: widget.createController,
                action: AssetActions.approve,
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _getTitle(int index) {
    var title = '';
    switch (index) {
      case 0:
        title = context.l10n.transferApprovals;
      case 1:
        title = context.l10n.disposeApprovals;
      case 2:
        title = context.l10n.newAssetApprovals;
    }
    return title;
  }
}
