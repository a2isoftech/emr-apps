import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/screens/landing_page/landing_page_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandingPageNative extends LandingPageCommon {
  LandingPageNative({super.key});

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) {
    final userName = UserInfoService.instance!.userInfo.name;
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.home_outlined, color: FormAppColors.white),
        iconSize: 24,
        onPressed: () {
          context.goNamed(NamedRoutes.home);
        },
      ),
      title: Text(
        '$userName (${yard.yardCode})',
        style: TextStyle(fontSize: 20, color: FormAppColors.white),
      ),
      titleSpacing: 0,
      backgroundColor: FormAppColors.black,
      actions: [
        _scan(context),
        IconButton(
          onPressed: () => context.pushNamed(FormsRoutingName.myCalendar),
          icon: Icon(Icons.calendar_month, color: FormAppColors.white),
        ),
      ],
    );
  }

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget? getActionButton(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      onPressed: () => onFloatingButtonPressed(context),
      tooltip: 'Create',
      shape: const CircleBorder(),
      child: Icon(Icons.add, color: FormAppColors.white),
    );
  }

  Future<void> onFloatingButtonPressed(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      builder: (context) => Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity - 20,
              child: ElevatedButton(
                onPressed: () {
                  context.pop();
                  context.pushNamed(FormsRoutingName.createWorkOrder);
                },
                child: Text(context.l10n.createTask),
              ),
            ),
            SizedBox(
              width: double.infinity - 20,
              child: ElevatedButton(
                onPressed: () {
                  context.pop();
                  context.pushNamed(FormsRoutingName.createWorkOrderRequest);
                },
                child: Text(context.l10n.createWorkRequest),
              ),
            ),
          ],
        ),
      ),
    );
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        jobCard(
          context: context,
          jobCount: inProgressJobsCount.toString(),
          jobState: 'New',
          jobTitleDescription: 'Recently Added',
          jobTitle: firstinProgressJobTitle,
          filterForUser: filterForUser,
        ),
        jobCard(
          context: context,
          jobCount: newJobsCount.toString(),
          jobState: 'In Progress',
          jobTitleDescription: 'Due Soon',
          jobTitle: firstnewJobTitle,
          filterForUser: filterForUser,
        ),
        jobCard(
          context: context,
          jobCount: completedJobsCount.toString(),
          jobState: 'Completed',
          jobTitleDescription: 'Recently Completed',
          jobTitle: firstCompletedJobTitle,
          filterForUser: filterForUser,
        ),
      ],
    );
  }

  Widget _scan(BuildContext context) {
    return Visibility(
      visible: isScannerForAssetSearchAllowed(),
      child: IconButton(
        onPressed: () async {
          await ScanHelper.startInlineCodeScan(context, title: 'Scan').then((
            scannedAssetCode,
          ) {
            debugPrint(scannedAssetCode);
            if (scannedAssetCode != null && scannedAssetCode != '') {
              if (context.mounted) {
                context.pushNamed(
                  FormsRoutingName.scannedAsset,
                  queryParams: {'assetCode': scannedAssetCode},
                );
              }
            }
          });
        },
        icon: SvgPicture.asset(
          FormAppAssetsPath.barcode,
          package: FormAppStringLiteral.PackageName,
          width: 24,
          colorFilter: ColorFilter.mode(FormAppColors.white, BlendMode.srcIn),
        ),
      ),
    );
  }
}
