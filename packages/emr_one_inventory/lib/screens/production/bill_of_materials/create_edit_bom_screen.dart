import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/controllers/production/create_edit_bom_controller.dart';
import 'package:emr_one_inventory/models/production/product.dart';
import 'package:emr_one_inventory/screens/production/bill_of_materials/products_grid.dart';
import 'package:flutter/material.dart';

class CreateEditBomScreen extends StatelessWidget {
  const CreateEditBomScreen({required this.controller, this.bomId, super.key});

  final CreateEditBomController controller;
  final String? bomId;

  @override
  Widget build(BuildContext context) {
    final cardView = EmrTabBarVerticalView(
      onSave: () async {
        final (isValid, error) = controller.validate(context);
        if (!isValid) {
          unawaited(
            EmrModal.showMessageBar(context, error, messageType: .error),
          );
          return;
        }

        controller.showLoader.value = true;
        final result = await controller.save(bomId);
        controller.showLoader.value = false;
        if (!context.mounted) return;

        if (result.success) {
          Navigator.of(context).pop();
          unawaited(
            EmrModal.showMessageBar(context, context.l10n.successfullySaved),
          );
        } else {
          unawaited(
            EmrModal.showMessageBar(
              context,
              result.message,
              messageType: .error,
            ),
          );
        }
      },
      onCancel: () => Navigator.of(context).pop(),
      columns: const [1, 2],
      children: [
        EmrTabBarVerticalViewCard(
          title: context.l10n.details,
          child: _cardDetails(context),
        ),
        EmrTabBarVerticalViewCard(
          title: context.l10n.rawMaterials,
          actions: {
            CardAddActionIntent: CardAddAction(
              context,
              createIntent: (p0) => CardAddActionIntent(context: p0),
              onAction: () {
                ProductsGrid.showAsDialog(
                  context,
                  bomService: controller.bomservice,
                  selectedProducts: controller.inputProducts.value,
                  title: '${context.l10n.select} ${context.l10n.rawMaterials}',
                  onAccept: controller.addInputProducts,
                );
              },
            ),
          },
          child: ValueListenableBuilder(
            valueListenable: controller.inputProducts,
            builder: (context, data, _) {
              if (data.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Text(context.l10n.noProductsAdded),
                  ),
                );
              }
              return _cardProducts(data, controller.removeInputProducts);
            },
          ),
        ),
        EmrTabBarVerticalViewCard(
          title: context.l10n.finishedGoods,
          actions: {
            CardAddActionIntent: CardAddAction(
              context,
              createIntent: (context) => CardAddActionIntent(context: context),
              onAction: () {
                ProductsGrid.showAsDialog(
                  context,
                  bomService: controller.bomservice,
                  selectedProducts: controller.outputProducts.value,
                  title: '${context.l10n.select} ${context.l10n.finishedGoods}',
                  onAccept: controller.addOutputProducts,
                );
              },
            ),
          },
          child: ValueListenableBuilder(
            valueListenable: controller.outputProducts,
            builder: (context, data, _) {
              if (data.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Text(context.l10n.noProductsAdded),
                  ),
                );
              }
              return _cardProducts(data, controller.removeOutputProducts);
            },
          ),
        ),
      ],
    );

    if (bomId == null) {
      return cardView;
    }

    return FutureBuilder(
      future: controller.bomservice.getBom('billOfMaterials/$bomId'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == .done) {
          if (!snapshot.hasData) {
            return Center(
              child: Text(
                context.l10n.anErrorOccurredTryAgain,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            );
          }

          final bom = snapshot.data!;

          if (!bom.active) {
            return Center(child: Text(context.l10n.notFound));
          }

          controller.initFields(
            id: bomId!,
            title: bom.title,
            inputProducts: [
              ...bom.inputProducts.map(
                (x) => Product(
                  id: x.productId,
                  code: x.productCode,
                  description: x.product?.description,
                ),
              ),
            ],
            outputProducts: [
              ...bom.outputProducts.map(
                (x) => Product(
                  id: x.productId,
                  code: x.productCode,
                  description: x.product?.description,
                ),
              ),
            ],
          );

          return cardView;
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _cardProducts(List<Product> data, void Function(String id) onDelete) {
    return Wrap(
      spacing: 20,
      runSpacing: 10,
      children: [
        ...data.map(
          (x) => EmrCard(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      x.code,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(x.description ?? ''),
                  ],
                ),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () => onDelete(x.id),
                  icon: const Icon(Icons.delete_outline_outlined),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _cardDetails(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: EmrTextFormField(
              binding: controller.title,
              labelText: '${context.l10n.billOfMaterials} ${context.l10n.name}',
              validator: Validators.required,
            ),
          ),
        ],
      ),
    );
  }
}
