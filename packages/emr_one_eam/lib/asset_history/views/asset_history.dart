import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/asset_history/controllers/asset_history_controller.dart';
import 'package:emr_one_eam/base/base_page.dart';
import 'package:emr_one_eam/models/asset_history.dart';
import 'package:flutter/material.dart';

class AssetHistoryView extends BasePage {
  AssetHistoryView({
    required super.controller,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => AssetHistoryViewState();
}

class AssetHistoryViewState
    extends BasePageState<AssetHistoryView, IAssetHistoryController> {
  @override
  Widget build(BuildContext context) {
    return _buildHistoryPanel();
  }

  Widget _addNavigationMessage() => Center(
        child: Text(context.l10n.noDataFound),
      );

  Widget _buildHistoryPanel() {
    return ValueListenableBuilder(
      valueListenable: controller.isBusy,
      builder: (context, value, child) {
        if (value) {
          return const Center(
            child: CircularProgressIndicator(
              color: EmrColours.primaryBlue,
            ),
          );
        }
        return ValueListenableBuilder(
          valueListenable: controller.assetHistory,
          builder: (BuildContext context, value, child) {
            if (value == null || value.users == null || value.users!.isEmpty) {
              return _addNavigationMessage();
            }
            return SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  _getUsers(value.users!),
                  _getTimeStamp(value.timestamps!),
                  ...value.attributes!.map(
                    _buildHistoryLayout,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _getUsers(List<AssetHistoryUser> users) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  context.l10n.updatedBy,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ...users.map(
                (u) => Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Text(u.displayName),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getTimeStamp(List<String> timeStamps) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  context.l10n.timeStamp,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ...timeStamps.map(
                (u) => Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          u.split('T').first,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHistoryLayout(AssetHistoryAttribute e) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  e.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ...e.values.map(
                (u) => Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(child: Text(u.text)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    controller.initializeAssetHistory();
  }
}
