import 'dart:async';

import 'package:emr_core_api/graphql/queries/inventory/production/search_boms.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/components/shared/label_value.dart';
import 'package:emr_one_inventory/constants/inventory_constants.dart';
import 'package:emr_one_inventory/constants/inventory_named_routes.dart';
import 'package:emr_one_inventory/controllers/production/bom_search_controller.dart';
import 'package:emr_one_inventory/intents/create_bom_intent.dart';
import 'package:flutter/material.dart';

class BomSearch extends StatelessWidget {
  const BomSearch({
    required this.queryLayoutController,
    required this.bomSearchController,
    super.key,
  });

  final EmrQueryLayoutController<Query$SearchBoms$searchBoms$nodes>
  queryLayoutController;
  final BomSearchController bomSearchController;

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<Query$SearchBoms$searchBoms$nodes>(
      controller: queryLayoutController,
      actions: {
        if (context.userHasPermission(
          InventoryConstants.permissionCreateEditBom,
        ))
          CreateBomIntent: CreateBomAction(
            createIntent: (context) => CreateBomIntent(context: context),
            label: context.l10n.create,
            onCreate: () {
              context.goNamed(InventoryNamedRoutes.createBom);
            },
          ),
      },
      columns: prepareColumns(context),
      cardWidth: 340,
      buildCardTitle: (bom) {
        return bom.title;
      },
      buildCardTrailing: _contextMenuBuilder,
      buildCardBody: (item, index) {
        return _bomCardView(context, bom: item);
      },
    );
  }

  List<EmrGridColumn<Query$SearchBoms$searchBoms$nodes>> prepareColumns(
    BuildContext context,
  ) {
    return [
      EmrGridColumn(
        headerBuilder: () => const Text(''),
        width: 60,
        cellBuilder: (row) {
          return Row(
            children: [
              if (row.active &&
                  context.userHasPermission(
                    InventoryConstants.permissionCreateEditBom,
                  ))
                IconButton(
                  onPressed: () => context.goNamed(
                    InventoryNamedRoutes.editBom,
                    params: {'id': row.id.split('/').last},
                  ),
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.edit_outlined, size: Insets.gutter),
                ),
              if (!row.active &&
                  context.userHasPermission(
                    InventoryConstants.permissionDeleteBom,
                  ))
                IconButton(
                  onPressed: () => deleteOrRestoreBom(context, row),
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.restore_outlined, size: Insets.gutter),
                ),
              if (row.active &&
                  context.userHasPermission(
                    InventoryConstants.permissionCreateEditBom,
                  ))
                IconButton(
                  onPressed: () => onClone(context, row.id),
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.copy_outlined, size: Insets.gutter),
                ),
              if (row.active &&
                  context.userHasPermission(
                    InventoryConstants.permissionCreateEditBom,
                  ))
                IconButton(
                  onPressed: () async {
                    await EmrDialog.modal<void>(
                      context,
                      titleText: context.l10n.confirmDelete,
                      builder: (context) {
                        return Text(
                          '${context.l10n.areYouSureYouWantToDelete}?',
                        );
                      },
                      isDanger: true,
                      acceptLabel: context.l10n.delete,
                      onAccept: () async {
                        Navigator.pop(context);
                        await deleteOrRestoreBom(context, row);
                      },
                    );
                  },
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.delete_outlined, size: Insets.gutter),
                ),
            ],
          );
        },
      ),
      columnBuilder(
        headerText: context.l10n.name,
        cellText: (row) => row.title,
      ),
      columnBuilder(
        headerText: context.l10n.rawMaterials,
        cellText: (row) =>
            row.inputProducts.map((x) => x.productCode).join(', '),
      ),
      columnBuilder(
        headerText: context.l10n.finishedGoods,
        cellText: (row) =>
            row.outputProducts.map((x) => x.productCode).join(', '),
      ),
    ];
  }

  Widget _bomCardView(
    BuildContext context, {
    required Query$SearchBoms$searchBoms$nodes bom,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LabelValue(label: context.l10n.name, value: bom.title),
        LabelValue(
          label: context.l10n.rawMaterials,
          value: bom.inputProducts.map((x) => x.productCode).join(', '),
        ),
        LabelValue(
          label: context.l10n.finishedGoods,
          value: bom.outputProducts.map((x) => x.productCode).join(', '),
        ),
      ],
    );
  }

  Widget _contextMenuBuilder(Query$SearchBoms$searchBoms$nodes bom) {
    return PopupMenuButton<void>(
      padding: EdgeInsets.zero,
      itemBuilder: (context) {
        return [
          if (bom.active &&
              context.userHasPermission(
                InventoryConstants.permissionCreateEditBom,
              ))
            PopupMenuItem<void>(
              child: Text(context.l10n.edit),
              onTap: () {
                context.goNamed(
                  InventoryNamedRoutes.editBom,
                  params: {'id': bom.id.split('/').last},
                );
              },
            ),
          if (bom.active &&
              context.userHasPermission(
                InventoryConstants.permissionCreateEditBom,
              ))
            PopupMenuItem<void>(
              onTap: () => onClone(context, bom.id),
              child: Text(context.l10n.clone),
            ),
          if (bom.active &&
              context.userHasPermission(InventoryConstants.permissionDeleteBom))
            PopupMenuItem<void>(
              onTap: () async {
                await EmrDialog.modal<void>(
                  context,
                  titleText: context.l10n.confirmDelete,
                  builder: (context) {
                    return Text('${context.l10n.areYouSureYouWantToDelete}?');
                  },
                  isDanger: true,
                  acceptLabel: context.l10n.delete,
                  onAccept: () async {
                    Navigator.pop(context);
                    await deleteOrRestoreBom(context, bom);
                  },
                );
              },
              child: Text(context.l10n.delete),
            ),
          if (!bom.active &&
              context.userHasPermission(InventoryConstants.permissionDeleteBom))
            PopupMenuItem<void>(
              onTap: () => deleteOrRestoreBom(context, bom),
              child: Text(context.l10n.restore),
            ),
        ];
      },
    );
  }

  EmrGridColumn<Query$SearchBoms$searchBoms$nodes> columnBuilder({
    required String headerText,
    required String Function(Query$SearchBoms$searchBoms$nodes) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 150,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => GestureDetector(
        onTap: onSortTap,
        child: Row(
          children: [
            Text(
              headerText,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            if (getSortIcon != null) getSortIcon.call(),
          ],
        ),
      ),
      cellBuilder: (Query$SearchBoms$searchBoms$nodes row) => GestureDetector(
        child: Text(cellText.call(row), overflow: TextOverflow.ellipsis),
      ),
    );
  }

  Future<void> deleteOrRestoreBom(
    BuildContext context,
    Query$SearchBoms$searchBoms$nodes bom,
  ) async {
    final bomService = bomSearchController.bomService;
    var success = false;
    try {
      bomSearchController.showLoader.value = true;
      final result = await (bom.active
          ? bomService.deleteBom(bom.id)
          : bomService.restoreBom(bom.id));
      success = result.success;
    } finally {
      bomSearchController.showLoader.value = false;
    }

    if (success) {
      await queryLayoutController.dataSource.refresh();
    }
    if (!context.mounted) return;

    final message = success
        ? (bom.active
              ? context.l10n.deleteBomSuccessful
              : context.l10n.restoreBomSuccessful)
        : context.l10n.anErrorOccurredTryAgain;

    unawaited(
      EmrModal.showMessageBar(
        context,
        message,
        messageType: success ? MessageBarTypes.success : MessageBarTypes.error,
      ),
    );
  }

  Future<void> onClone(BuildContext context, String id) async {
    bomSearchController.bomName.value = '';
    return EmrDialog.modal<void>(
      context,
      titleText:
          '${context.l10n.clone} '
          '${context.l10n.billOfMaterials}',
      acceptLabel: context.l10n.clone,
      onAccept: () async {
        if (bomSearchController.formKey.currentState!.validate()) {
          final (bool success, String error) = await bomSearchController
              .cloneBom(id: id, title: bomSearchController.bomName.value);
          Navigator.pop(context);
          unawaited(
            EmrModal.showMessageBar(
              context,
              success ? context.l10n.cloneBomSuccessful : error,
              messageType: success
                  ? MessageBarTypes.success
                  : MessageBarTypes.error,
            ),
          );
          if (success) {
            await queryLayoutController.dataSource.refresh();
          }
        }
      },
      builder: (_) {
        return SizedBox(
          width: 400,
          child: Form(
            key: bomSearchController.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EmrTextFormField(
                  binding: bomSearchController.bomName,
                  labelText:
                      '${context.l10n.billOfMaterials} '
                      '${context.l10n.name}',
                  validator: (value) => Validators.join([
                    Validators.length(value, max: 100, min: 3),
                    Validators.required(value),
                  ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
