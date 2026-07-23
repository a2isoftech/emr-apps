import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/screens/landing_page/landing_page_common.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class LandingPageWeb extends LandingPageCommon {
  LandingPageWeb({super.key});

  final _popupMenu = GlobalKey<PopupMenuButtonState<void>>();

  @override
  bool hideDefaultAppBar() => false;

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () async {
          if (!isScannerForAssetSearchAllowed()) return;
          await ScanHelper.startInlineCodeScan(context, title: 'Scan').then((
            scannedAssetCode,
          ) {
            debugPrint(scannedAssetCode);
            if (context.mounted) {
              context.pushNamed(
                FormsRoutingName.scannedAsset,
                queryParams: {'assetCode': scannedAssetCode},
              );
            }
          });
        },
        icon: const Icon(Icons.qr_code_2_rounded),
      ),
      IconButton(onPressed: onRefresh, icon: const Icon(Icons.refresh)),
      IconButton(
        onPressed: () => context.pushNamed(FormsRoutingName.myCalendar),
        icon: const Icon(Icons.calendar_month),
      ),
    ];
  }

  @override
  String getTitle(BuildContext context) {
    return 'Inform (${yard.yardCode})';
  }

  @override
  Widget? pageHeader(BuildContext context) {
    return getPageHeader(
      getTitle(context),
      hasBackButton: false,
      actionButton: getActionButton(context),
    );
  }

  @override
  Widget? getActionButton(BuildContext context) {
    return PopupMenuButton(
      key: _popupMenu,
      elevation: 20,
      child: ElevatedButton.icon(
        onPressed: () {
          _popupMenu.currentState?.showButtonMenu();
        },
        label: const Text('Create'),
        icon: Icon(Icons.add, color: Theme.of(context).colorScheme.onSurface),
      ),
      onSelected: (value) {
        context.pushNamed(value);
      },
      itemBuilder: (context) => [
        PopupMenuItem<String>(
          value: FormsRoutingName.createWorkOrder,
          child: Text(context.l10n.createTask),
        ),
        PopupMenuItem<String>(
          value: FormsRoutingName.createWorkOrderRequest,
          child: Text(context.l10n.createWorkRequest),
        ),
      ],
    );
  }

  void onRefresh() {
    controller.init();
  }

  @override
  Widget addJobsSummaryCards({
    required BuildContext context,
    required int inProgressJobsCount,
    required int newJobsCount,
    required int completedJobsCount,
    required String firstinProgressJobTitle,
    required String firstnewJobTitle,
    required String firstCompletedJobTitle,
    required bool filterForUser,
  }) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xl: 4,
          md: 6,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: jobCard(
              context: context,
              jobCount: inProgressJobsCount.toString(),
              jobState: 'New',
              jobTitleDescription: 'Recently Added',
              jobTitle: firstinProgressJobTitle,
              filterForUser: filterForUser,
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 4,
          md: 6,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: jobCard(
              context: context,
              jobCount: newJobsCount.toString(),
              jobState: 'In Progress',
              jobTitleDescription: 'Due Soon',
              jobTitle: firstnewJobTitle,
              filterForUser: filterForUser,
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 4,
          md: 6,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: jobCard(
              context: context,
              jobCount: completedJobsCount.toString(),
              jobState: 'Completed',
              jobTitleDescription: 'Recently Completed',
              jobTitle: firstCompletedJobTitle,
              filterForUser: filterForUser,
            ),
          ),
        ),
      ],
    );
  }
}
