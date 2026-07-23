import 'dart:convert';

import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/models/scanned_asset.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/scanned_asset/scanned_asset_controller.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/search_widget.dart';
import 'package:flutter/material.dart';

abstract class ScannedAssetCommon extends BasePage<ScannedAssetController> {
  ScannedAssetCommon({super.key, this.assetCode});

  final String? assetCode;

  Widget parentWidget(Widget child);

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return '$assetCode (${yard.yardCode})';
  }

  @override
  void initState(BuildContext context) {
    if (assetCode != null) {
      controller.getAssetByCode(assetCode!);
    }
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    final assetInformation = controller.asset;
    return parentWidget(
      Column(
        children: [
          if (controller.isBusy) ...[
            Padding(
              padding: const EdgeInsets.all(10),
              child: showSpinner(),
            ),
          ] else if (assetCode == null) ...[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: showNoData('Failed to scan the asset!'),
              ),
            ),
          ] else if (assetInformation == null) ...[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: showNoData(
                  'Failed to retrieve information for $assetCode',
                ),
              ),
            ),
          ] else ...[
            if (controller.isSearchVisible) ...[
              SearchWidget(
                context: context,
                yardCode: assetInformation.yardCode!,
                filterForUser: false,
                searchUser: false,
                initialState: controller.searchState,
                onFilterApplied: (searchState) {
                  controller.searchStateChanged(searchState);

                },
              ),
            ],
            Padding(
              padding: const EdgeInsets.all(10),
              child: Wrap(
                runSpacing: 10,
                children: [
                  if (controller.isFilterVisible) ...[
                    _actionJobStateButtons(context),
                  ],
                  _showAssetInformation(context, assetInformation),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _showAssetInformation(
    BuildContext context,
    ScannedAsset assetInformation,
  ) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(1),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: EmrColours.secondaryGrey),
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          runSpacing: 5,
          children: [
            _cardRow('AssetCode :', assetInformation.assetCode),
            _cardRow(context.l10n.assetType, assetInformation.assetType),
            _cardWrappedRow(context.l10n.assetName, assetInformation.name),
            _cardRow(context.l10n.make, assetInformation.make),
            _cardRow(context.l10n.model, assetInformation.model),
            _cardRow(context.l10n.serialNumber, assetInformation.serialNumber),
            _cardRow(context.l10n.depotNo, assetInformation.depotNo),
          ],
        ),
      ),
    );
  }

  Widget _cardRow(String label, String? text) {
    return Row(
      children: [
        Text(label),
        const Text(' : '),
        Text(text ?? ''),
      ],
    );
  }

  Widget _cardWrappedRow(String label, String? text) {
    return Wrap(
      children: [
        Text(label),
        const Text(' : '),
        Text(text ?? ''),
      ],
    );
  }

  Widget _actionJobStateButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ChoiceChip(
          label: Text(
            context.l10n.newlabel,
            style: const TextStyle(fontSize: 16),
          ),
          labelPadding: EdgeInsets.zero,
          onSelected: (value) {
            context.pushNamed(
              FormsRoutingName.jobsAssignedToYard,
              queryParams: {
                'startDate': jsonEncode(
                  controller.searchSelectedDates.dateRange!.start
                      .toIso8601String()
                      .substring(0, 19),
                ),
                'endDate': jsonEncode(
                  controller.searchSelectedDates.dateRange!.end
                      .toIso8601String()
                      .substring(0, 19),
                ),
                'assetCode': controller.asset!.assetCode,
                'jobState': FormAppStringLiteral.JobStateNew,
              },
            );
          },
          selected: false,
          selectedColor: FormAppColors.success,
        ),
        ChoiceChip(
          label: Text(
            context.l10n.inProgress,
            style: const TextStyle(fontSize: 16),
          ),
          labelPadding: EdgeInsets.zero,
          onSelected: (value) {
            context.pushNamed(
              FormsRoutingName.jobsAssignedToYard,
              queryParams: {
                'startDate': jsonEncode(
                  controller.searchSelectedDates.dateRange!.start
                      .toIso8601String()
                      .substring(0, 19),
                ),
                'endDate': jsonEncode(
                  controller.searchSelectedDates.dateRange!.end
                      .toIso8601String()
                      .substring(0, 19),
                ),
                'assetCode': controller.asset!.assetCode,
                'jobState': FormAppStringLiteral.JobStateInProgress,
              },
            );
          },
          selected: false,
          selectedColor: FormAppColors.success,
        ),
        ChoiceChip(
          label: Text(
            context.l10n.completedJobs,
            style: const TextStyle(fontSize: 16),
          ),
          labelPadding: EdgeInsets.zero,
          onSelected: (value) {
            context.pushNamed(
              FormsRoutingName.completedJobs,
              queryParams: {
                'startDate': jsonEncode(
                  controller.searchSelectedDates.dateRange!.start
                      .toIso8601String()
                      .substring(0, 19),
                ),
                'endDate': jsonEncode(
                  controller.searchSelectedDates.dateRange!.end
                      .toIso8601String()
                      .substring(0, 19),
                ),
                'assetCode': controller.asset!.assetCode,
                'filterForUser': jsonEncode(true),
              },
            );
          },
          selected: false,
          selectedColor: FormAppColors.success,
        ),
      ],
    );
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onSearch,
        icon: Icon(Icons.search, color: FormAppColors.white),
      ),
      IconButton(
        onPressed: onFilter,
        icon: Icon(
          Icons.filter_list,
          color: FormAppColors.white,
        ),
      ),
    ];
  }

  void onSearch() {
    controller.toggleSearchWindow();
  }

  void onFilter() {
    controller.toggleFilterWindow();
  }
}
