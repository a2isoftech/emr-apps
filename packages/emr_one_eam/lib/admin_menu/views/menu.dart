import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/admin_menu/controllers/menu_controller.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_controller.dart';
import 'package:emr_one_eam/asset_template/views/asset_template_base_view.dart';
import 'package:emr_one_eam/constants/paths.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:emr_one_eam/graphql/queries/lists_search.graphql.dart';
import 'package:emr_one_eam/help/controllers/help_file_controller.dart';
import 'package:emr_one_eam/help/views/help_pdf_viewer.dart';
import 'package:emr_one_eam/import/bulk_update_assets/views/bulk_update_asset_view.dart';
import 'package:emr_one_eam/import/controllers/import_controller.dart';
import 'package:emr_one_eam/import/import_asset_template/views/import_asset_template_view.dart';
import 'package:emr_one_eam/import/import_assets/views/import_assets_view.dart';
import 'package:emr_one_eam/lists/controllers/lists_controller.dart';
import 'package:emr_one_eam/lists/views/lists_base.dart';
import 'package:emr_one_eam/screen_access.dart';
import 'package:emr_one_eam/screens/asset_screen/asset_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminMenuView extends StatefulWidget {
  const AdminMenuView({
    required this.controler,
    required this.screenControler,
    super.key,
  });
  final IAdminMenuController controler;
  final AssetScreenController screenControler;

  @override
  State<AdminMenuView> createState() => _AdminMenuViewState();
}

class _AdminMenuViewState extends State<AdminMenuView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final access = Provider.of<ScreenAccess>(context, listen: false);
    if (!access.isEAMAdmin(context)) {
      return Container();
    }
    return ValueListenableBuilder(
      valueListenable: widget.controler.selectedSubMenu,
      builder: (context, value, child) {
        switch (value) {
          case null:
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ..._addHelpMenu(context),
                    ..._addSettingsMenu(context),
                    ..._addImportMenu(context),
                    ..._addDataSyncMenu(context),
                  ],
                ),
              ),
            );
          case EAMRoutingName.eamHelp:
            return HelpFileView(
              controler: Provider.of<IHelpFileController>(context),
            );
          case EAMRoutingName.adminMenuAssetTemplate:
            return AssetTemplateBaseView(
              controller: Provider.of<IAssetTemplateController>(context),
              queryLayoutController: Provider.of<
                  EmrQueryLayoutController<
                      Query$GetPaginatedAssetTemplates$assetTemplates$nodes>>(
                context,
              ),
            );
          case EAMRoutingName.adminMenuLists:
            return ListsBase(
              controller: Provider.of<IListsController>(context),
              queryLayoutController: Provider.of<
                  EmrQueryLayoutController<Query$getLists$lists$nodes>>(
                context,
              ),
              key: GlobalKey(),
            );
          case EAMRoutingName.adminMenuImportAsset:
            return ImportAssetsView(
              controller: Provider.of<IImportAssetController>(context),
              key: GlobalKey(),
            );
          case EAMRoutingName.adminMenuImportAssetTemplate:
            return ImportAssetTemplateView(
              controller: Provider.of<IImportController>(context),
              key: GlobalKey(),
            );
          case EAMRoutingName.adminMenuImportAssetBulk:
            return BulkUpdateAssetView(
              controller: Provider.of<IBulkUpdateController>(context),
              key: GlobalKey(),
            );
        }
        return Container();
      },
    );
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
            context.l10n.help,
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
        ],
      ),
      const SizedBox(height: Insets.gutter),
      _menu(context, <SimpleMenuItem>[
        SimpleMenuItem(context.l10n.help, Icons.help, () {
          widget.controler.setSelectedMenu(EAMRoutingName.eamHelp);
          setTitle(context.l10n.help);
        }),
        SimpleMenuItem(context.l10n.queueStatus, Icons.queue, () async {
          widget.controler.setSelectedMenu(EAMRoutingName.eamHelp);
          setTitle(context.l10n.importAsset);
        }),
      ]),
    ];
  }

  void setTitle(String title) {
    widget.screenControler.setTitle(title);
  }

  List<Widget> _addSettingsMenu(BuildContext context) {
    return [
      Row(
        children: [
          Text(
            context.l10n.manage,
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
        ],
      ),
      _menu(context, <SimpleMenuItem>[
        SimpleMenuItem(context.l10n.eAMLists, Icons.list, () async {
          widget.controler.setSelectedMenu(EAMRoutingName.adminMenuLists);
          setTitle(context.l10n.adminMenuLists);
        }),
        SimpleMenuItem(context.l10n.assetTemplate, Icons.list, () async {
          widget.controler
              .setSelectedMenu(EAMRoutingName.adminMenuAssetTemplate);
          setTitle(context.l10n.adminMenuAssetTemplate);
        }),
      ]),
      const SizedBox(height: Insets.gutter),
    ];
  }

  List<Widget> _addImportMenu(BuildContext context) {
    return [
      Row(
        children: [
          Text(
            context.l10n.import,
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
        ],
      ),
      const SizedBox(height: Insets.gutter),
      _menu(context, <SimpleMenuItem>[
        SimpleMenuItem(context.l10n.asset, Icons.important_devices, () async {
          widget.controler.setSelectedMenu(EAMRoutingName.adminMenuImportAsset);
          setTitle(context.l10n.importAsset);
        }),
        SimpleMenuItem(context.l10n.bulkUpdateAttributes, Icons.import_contacts,
            () async {
          widget.controler
              .setSelectedMenu(EAMRoutingName.adminMenuImportAssetBulk);
          setTitle(context.l10n.importBulkAsset);
        }),
        SimpleMenuItem(context.l10n.assetTemplate, Icons.file_copy, () async {
          widget.controler
              .setSelectedMenu(EAMRoutingName.adminMenuImportAssetTemplate);
          setTitle(context.l10n.bulkAssetTemplate);
        }),
      ]),
    ];
  }

  List<Widget> _addDataSyncMenu(BuildContext context) {
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
        SimpleMenuItem(context.l10n.loadSaveAssetsString, Icons.sync, () async {
          final result =
              await widget.controler.loadAndSaveAllAssetForAllTemplates();
          if (context.mounted) {
            var resultMessage = result?.successes?.join(',');
            resultMessage ??= result?.errors?.join(',');
            await EmrDialog.ok(context, titleText: resultMessage ?? '');
          }
        }),
        SimpleMenuItem(
          context.l10n.syncFLTreeText,
          Icons.sync_outlined,
          () async {
            await _showImportMessageAndCall(context.l10n.functionalLocation);
          },
        ),
      ]),
    ];
  }

  Future<void> _showImportMessageAndCall(String tableName) async {
    await EmrDialog.cancelOk(
      context,
      titleText: context.l10n.areYouSure,
      contentText: context.l10n.requestQueuedString,
      onOk: () async {
        final result = await widget.controler.syncData(tableName);
        if (mounted) {
          var text = context.l10n.importFailedText;
          if (result) {
            text = context.l10n.dataImportQueued;
          }
          await EmrDialog.ok(
            context,
            titleText: context.l10n.information,
            contentText: text,
          );
        }
      },
    );
  }
}
