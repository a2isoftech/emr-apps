import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/common/utility.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridge_preferences.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class WeighbridgeProfilesSearch extends StatefulWidget
    with AppBarExtender, OmniSearch {
  WeighbridgeProfilesSearch({
    required this.userInfoService,
    required this.preferences,
    super.key,
  });

  final UserInfoService userInfoService;
  final WeighbridgePreferences preferences;

  @override
  List<Widget> getActions(BuildContext context) => [
    IconButton.filled(
      tooltip: context.l10n.addWeighbridgeProfile,
      onPressed: () => context.pushNamed(
        EmrOneDataManagementConstants.kRouteWeighbridgeProfileForm,
        params: {'id': EmrOneDataManagementConstants.kEmptyGuid},
      ),
      icon: const Icon(Icons.add_circle),
    ),
  ];

  @override
  State<WeighbridgeProfilesSearch> createState() =>
      _WeighbridgeProfilesSearch();
}

class _WeighbridgeProfilesSearch extends State<WeighbridgeProfilesSearch> {
  late final WeighbridgeProfilesDataSource _dataSource;
  late final WeighbridgesSearchFilterController _filterController;
  late final EmrQueryLayoutController<WeighbridgeProfile>
  _queryLayoutController;
  late final Future<void> _initializeFuture;

  @override
  void initState() {
    super.initState();

    _initializeFuture = initialize();
  }

  Future<void> initialize() async {
    _dataSource = WeighbridgeProfilesDataSource(
      coreApiService: context.coreApi,
      handleErrors: handleErrors,
    );

    final savedFilters = await widget.preferences.getFilter();
    _filterController = WeighbridgesSearchFilterController(
      userInfoService: widget.userInfoService,
      savedFilters: savedFilters,
    );

    _filterController.filters.addListener(_onFilterChanged);

    _queryLayoutController = EmrQueryLayoutController<WeighbridgeProfile>(
      dataSource: _dataSource,
      filterController: _filterController,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  void dispose() {
    _filterController.filters.removeListener(_onFilterChanged);
    super.dispose();
  }

  void _onFilterChanged() {
    widget.preferences.saveFilter(_filterController.filtersAsMap);
  }

  Widget _getCloneJobProfile(
    BuildContext context,
    WeighbridgeProfile profile,
    EmrQueryDataSource<WeighbridgeProfile> dataSource,
  ) {
    return SizedBox(
      width: 60,
      height: 26,
      child: Row(
        children: [
          Tooltip(
            message: context.l10n.clone,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    EmrOneDataManagementConstants.kRouteWeighbridgeProfileForm,
                    params: {'id': profile.id},
                    queryParams: {'clone': 'true'},
                  );
                },
                child: const Icon(
                  Icons.copy_rounded,
                  size: 26,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Tooltip(
            message: context.l10n.delete,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  _deleteWeighbridgeProfile(context, profile.id);
                },
                child: const Icon(
                  Icons.delete_outline,
                  size: 26,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return FutureBuilder(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const CircularProgressIndicator();
        }
        return EmrQueryLayoutHybrid<WeighbridgeProfile>(
          controller: _queryLayoutController,
          columns: [
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'id',
                dataSource: _queryLayoutController.dataSource,
                child: Text(
                  context.l10n.weighbridgeProfileId,
                  style: headerTextStyle,
                ),
              ),
              cellBuilder: (weighbridgeProfile) => Text(weighbridgeProfile.id),
              width: 200,
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'name',
                dataSource: _queryLayoutController.dataSource,
                child: Text(context.l10n.displayName, style: headerTextStyle),
              ),
              cellBuilder: (weighbridgeProfile) =>
                  Text(weighbridgeProfile.name),
              width: 150,
            ),
            EmrGridColumn(
              headerBuilder: () => EmrSortableGridHeader(
                field: 'yard',
                dataSource: _queryLayoutController.dataSource,
                child: Text(context.l10n.yard, style: headerTextStyle),
              ),
              cellBuilder: (weighbridgeProfile) =>
                  Text(weighbridgeProfile.yardCode),
            ),
            EmrGridColumn(
              headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
              cellBuilder: (weighbridgeProfile) => _getCloneJobProfile(
                context,
                weighbridgeProfile,
                _queryLayoutController.dataSource,
              ),
              width: 70,
            ),
          ],
          onItemTapped: (weighbridgeProfile) => context.pushNamed(
            EmrOneDataManagementConstants.kRouteWeighbridgeProfileForm,
            params: {'id': weighbridgeProfile.id},
          ),
        );
      },
    );
  }

  Future<void> handleErrors(String errorMessage) async {
    await EmrModal.showMessageBar(
      context,
      errorMessage,
      messageType: MessageBarTypes.error,
    );
  }

  Future<void> _deleteWeighbridgeProfile(
    BuildContext context,
    String profileId,
  ) {
    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.confirmation,
      builder: (context) => Center(
        child: Text(
          context.l10n.deleteWeighbridgeProfileConfirmation,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ),
      acceptLabel: context.l10n.ok,
      isDanger: true,
      onAccept: () async {
        try {
          showLoadingIndicator();
          final response = await _dataSource.deactivateWeighbridgeProfile(
            profileId,
          );
          if (context.mounted) {
            context.pop();
            hideLoadingIndicator();
            await DataManagementUtility.infoDialogWidget(
              context,
              title: response ? context.l10n.success : context.l10n.error,
              message: response
                  ? context.l10n.weighbridgeProfileDeleted
                  : context.l10n.weighbridgeProfileDeleteError,
              isDanger: !response,
            );
            await _dataSource.refresh();
          }
        } catch (ex) {
          if (context.mounted) {
            await DataManagementUtility.infoDialogWidget(
              context,
              title: context.l10n.error,
              message: context.l10n.anErrorOccurredTryAgain,
              isDanger: true,
            );
            hideLoadingIndicator();
          }
        }
      },
      onCancel: () async {
        context.pop();
      },
    );
    return Future.value();
  }

  void showLoadingIndicator() {
    if (mounted) {
      unawaited(EmrDialog.busy(context, titleText: ''));
    }
  }

  void hideLoadingIndicator() {
    if (mounted) {
      context.pop();
    }
  }
}
