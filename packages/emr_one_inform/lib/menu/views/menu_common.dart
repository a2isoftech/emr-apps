import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/menu/controllers/menu_controller.dart' as menu;
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/models/refresh_assets.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class MenuCommon extends BasePage<menu.MenuController> {
  MenuCommon({super.key});

  final _assetController = TextEditingController();

  late final List<String>? selectedAssetTags = List.empty(growable: true);
  late final List<Asset>? selectedAssets = List.empty(growable: true);

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) => context.l10n.setupLabel;

  @override
  void initState(BuildContext context) {
    // controller.assetsToRefresh = [];
    // controller.getAssets('');
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._addHelpMenu(context),
            ..._addSettingsMenu(context),
            ..._addMaintenanceMenu(context),
            if (InformJobs.preference?.isD365Enabled ??
                false || (InformJobs.preference?.isMROEnabled ?? false))
              ..._addSyncmenu(context),
          ],
        ),
      ),
    );
  }

  bool isImportTemplateAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isImportTemplateAllowed(context);
  }

  bool isCategoryAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isCategoryCreateAllowed(context);
  }

  bool isSchedulerAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isSchedulerCreateAllowed(context);
  }

  bool isListAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isListCreateAllowed(context);
  }

  bool isTeamsAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isTeamsCreateAllowed(context);
  }

  bool isMROSyncAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isMROSyncAllowed(context);
  }

  bool isCompanyPreferenceAllowed(BuildContext context) {
    if (kIsWeb) {
      final access = ScreenAccess();
      return access.isCompanyPreferenceAllowed(context);
    }
    return false;
  }

  bool isDiagnsoticAllowed(BuildContext context) {
    if (kIsWeb) {
      final access = ScreenAccess();
      return access.isDiagnsoticAllowed(context);
    }
    return false;
  }

  bool isDeviceDataAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isDeviceDataAllowed(context);
  }

  bool isD365SyncAllowed(BuildContext context) {
    final access = ScreenAccess();
    return access.isD365DataSyncAllowed(context);
  }

  Widget _menu(BuildContext context, List<SimpleMenuItem> menuItems) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Wrap(
        spacing: Insets.gutter,
        runSpacing: Insets.gutter,
        children: menuItems.map((e) => _menuItem(context, e)).toList(),
      ),
    );
  }

  Widget _menuItem(BuildContext context, SimpleMenuItem item) {
    return EOHoverTile(
      onTap: item.function,
      child: EOHoverTileSimpleContent(
        icon: item.icon,
        label: item.name.toUpperCase(),
      ),
    );
  }

  List<Widget> _addHelpMenu(BuildContext context) {
    return [
      Row(
        children: [
          Text(
            'Help',
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
        ],
      ),
      const SizedBox(height: Insets.gutter),
      _menu(context, <SimpleMenuItem>[
        SimpleMenuItem('Help', Icons.help, () async {
          await context.pushNamed(FormsRoutingName.help);
        }),
      ]),
    ];
  }

  List<Widget> _addSettingsMenu(BuildContext context) {
    return [
      Row(
        children: [
          Text(
            context.l10n.settings,
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
        ],
      ),
      const SizedBox(height: Insets.gutter),
      _menu(context, <SimpleMenuItem>[
        SimpleMenuItem(context.l10n.yard, Icons.location_on_outlined, () async {
          await context.pushNamed(FormsRoutingName.yardSelection);
        }),
        if (isCategoryAllowed(context))
          SimpleMenuItem(context.l10n.clients, Icons.account_tree_rounded,
              () async {
            await context.pushNamed(FormsRoutingName.clients);
          }),
        if (isListAllowed(context))
          SimpleMenuItem(context.l10n.lists, Icons.list_alt_rounded, () async {
            await context.pushNamed(FormsRoutingName.lists);
          }),
        if (isTeamsAllowed(context))
          SimpleMenuItem(context.l10n.teams, Icons.group_add_outlined,
              () async {
            await context.pushNamed(FormsRoutingName.teams);
          }),
        if (isCompanyPreferenceAllowed(context))
          SimpleMenuItem(context.l10n.companyPreference,
              Icons.settings_input_component_outlined, () async {
            await context.pushNamed(FormsRoutingName.companyPreference);
          }),
      ]),
      const SizedBox(height: Insets.gutter),
    ];
  }

  List<Widget> _addMaintenanceMenu(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    return [
      Row(
        children: [
          Text(
            context.l10n.maintenanceLabel,
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
        ],
      ),
      const SizedBox(height: Insets.gutter),
      _menu(context, <SimpleMenuItem>[
        if (isSchedulerAllowed(context))
          SimpleMenuItem(context.l10n.schedulerLabel, Icons.schedule, () async {
            await context.pushNamed(FormsRoutingName.scheduler);
          }),
        if (appConfig.isWeb && isImportTemplateAllowed(context))
          SimpleMenuItem(
            context.l10n.importTemplate,
            Icons.cloud_upload_outlined,
            () async {
              await context.pushNamed(FormsRoutingName.importTemplate);
            },
          ),
        if (appConfig.isWeb && isDiagnsoticAllowed(context)) ...[
          SimpleMenuItem(
            'Diagnostic Tool',
            Icons.monitor_heart_outlined,
            () async {
              await context.pushNamed(FormsRoutingName.diagnostic);
            },
          ),
        ],
        if (isDeviceDataAllowed(context)) ...[
          SimpleMenuItem(
            'Device Data',
            Icons.screenshot_monitor,
            () async {
              await context.pushNamed(FormsRoutingName.clientDiagnostic);
            },
          ),
        ],
      ]),
      const SizedBox(height: Insets.gutter),
    ];
  }

  List<Widget> _addSyncmenu(BuildContext context) {
    return [
      Row(
        children: [
          Text(
            context.l10n.dataSyncLabel,
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
        ],
      ),
      const SizedBox(height: Insets.gutter),
      _menu(context, <SimpleMenuItem>[
        if (isD365SyncAllowed(context)) ...[
          if (InformJobs.preference?.isD365Enabled ?? false)
            ..._d365SyncMenuItems(context),
          if (isMROSyncAllowed(context))
            SimpleMenuItem(
              context.l10n.mroAssetsLabel,
              Icons.refresh,
              () async => _refreshAssets(context),
            ),
        ],
      ]),
      const SizedBox(height: Insets.gutter),
    ];
  }

  List<SimpleMenuItem> _d365SyncMenuItems(BuildContext context) {
    final list = [
      SimpleMenuItem(
        context.l10n.menuRefreshCmms,
        Icons.refresh,
        () async {
          await showMessageDialog(
            context: context,
            messageType: MessageType.success,
            message: '''
Your request has been queued. The data will be refreshed shortly''',
          ).then((value) => controller.refreshCMMS(yard.yardCode!));
        },
      ),
      SimpleMenuItem(
        context.l10n.menuRefreshWorkRequest,
        Icons.refresh,
        () async {
          await showMessageDialog(
            context: context,
            messageType: MessageType.success,
            message: '''
Your request has been queued. The data will be refreshed shortly''',
          ).then((value) => controller.refreshWorkRequest(yard.yardCode!));
        },
      ),
    ];
    return list;
  }

  Future<void> _refreshAssets(BuildContext context) async {
    return showDialog<bool?>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select assets to refresh'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width * 0.30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TypeAheadFormField(
                      onSuggestionSelected: (Asset? availableAsset) {
                        final asset = availableAsset!;
                        setState(() {
                          selectedAssets?.add(asset);
                          selectedAssetTags?.add(asset.assetCode);
                        });
                        _assetController.text = '';
                      },
                      itemBuilder: (context, Asset? availableAssets) {
                        final assets = availableAssets!;
                        return ListTile(title: Text(assets.assetCode));
                      },
                      suggestionsCallback: (searchText) async {
                        return (searchText.length > 2)
                            ? await controller.getAssets(searchText)
                            : const Iterable<Asset>.empty();
                      },
                      noItemsFoundBuilder: (context) => SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(context.l10n.noRecordsMessage),
                        ),
                      ),
                      textFieldConfiguration: TextFieldConfiguration(
                        controller: _assetController,
                        decoration:
                            FormStyles.textFieldDecoration(context).copyWith(
                          labelText: context.l10n.assetsHint,
                          hintText: context.l10n.assetsLabel,
                          suffixIcon: _assetController.text.isEmpty
                              ? null
                              : IconButton(
                                  onPressed: () =>
                                      setState(_assetController.clear),
                                  icon: const Icon(Icons.clear),
                                ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Wrap(
                        runSpacing: 5,
                        spacing: 5,
                        children: selectedAssetTags!
                            .map(
                              (e) => InputChip(
                                label: Text(e),
                                pressElevation: 0,
                                deleteIcon: Ink(
                                  decoration: ShapeDecoration(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: FaIcon(
                                      FontAwesomeIcons.xmark,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                onDeleted: () {
                                  setState(() {
                                    selectedAssetTags?.remove(e);
                                    final assetToRemove = selectedAssets!
                                        .where((x) => x.assetCode == e);
                                    if (assetToRemove.isNotEmpty) {
                                      selectedAssets
                                          ?.remove(assetToRemove.first);
                                    }
                                  });
                                },
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _assetController.clear();
                  selectedAssetTags?.clear();
                  selectedAssets?.clear();
                });

                context.pop(false);
              },
              child: Text(context.l10n.close),
            ),
            TextButton(
              onPressed: () {
                context.pop(true);
              },
              child: Text(context.l10n.done),
            ),
          ],
        );
      },
    ).then((isConfirmed) async {
      if (isConfirmed ?? false) {
        if (selectedAssetTags!.isEmpty) {
          if (context.mounted) {
            await showConfirmationDialog(
              context: context,
              message: '''
It will refresh all assets in MRO. Are you sure?''',
            ).then((value) async {
              if (value ?? false) {
                await controller.refreshAssets(
                  RefreshAssetsRequest(assetCodes: selectedAssetTags),
                );
                setState(() {
                  _assetController.clear();
                  selectedAssetTags?.clear();
                  selectedAssets?.clear();
                });
              }
            });
          }
        } else {
          if (context.mounted) {
            await showMessageDialog(
              context: context,
              messageType: MessageType.success,
              message: '''
Your request has been queued. The data will be refreshed shortly''',
            ).then((value) async {
              await controller.refreshAssets(
                RefreshAssetsRequest(assetCodes: selectedAssetTags),
              );
              setState(() {
                _assetController.clear();
                selectedAssetTags?.clear();
                selectedAssets?.clear();
              });
            });
          }
        }
      }
    });
  }
}
