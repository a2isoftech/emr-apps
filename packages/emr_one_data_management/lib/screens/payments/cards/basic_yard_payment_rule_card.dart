import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/emr_tab_bar_vertical_view/emr_form_buttons.dart';
import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_one_data_management/screens/payments/yard_payment_rule_form_data.dart';
import 'package:emr_sharedtypes/models/inventory/product.dart';
import 'package:emr_sharedtypes/models/product_rule.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

class YardPaymentRuleCard extends StatefulWidget {
  const YardPaymentRuleCard({
    required this.model,
    this.onCancel,
    this.onSave,
    this.buttons = const [],
    super.key,
  });

  final YardPaymentRuleFormData model;
  final void Function()? onSave;
  final void Function()? onCancel;
  final List<TextButton> buttons;

  @override
  State<YardPaymentRuleCard> createState() => _YardPaymentRuleCardState();
}

class _YardPaymentRuleCardState extends State<YardPaymentRuleCard>
    with TickerProviderStateMixin {
  final ValueNotifier<List<ProductRuleRow>> _rows = ValueNotifier([]);
  late EmrGridController<ProductRuleRow> _gridController;
  late List<ProductRuleRow> defaultRow;
  final ValueNotifier<Product?> _selectedProduct = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    final productIds = [
      'Default',
      ...widget.model.completeProductIds.value,
    ];

    final initialRows = productIds.map((productId) {
      final isDefault = productId == 'Default';

      return ProductRuleRow(
        productId: productId,
        authorityReportable: isDefault
            ? widget.model.authorityReportable.value
            : (widget.model.authorityReportableProductIds.value
                    .contains(productId)
                ? !widget.model.authorityReportable.value
                : widget.model.authorityReportable.value),
        drivingLicenceRequired: isDefault
            ? widget.model.drivingLicenceRequired.value
            : (widget.model.drivingLicenceRequiredProductIds.value
                    .contains(productId)
                ? !widget.model.drivingLicenceRequired.value
                : widget.model.drivingLicenceRequired.value),
        cashCardRequired: isDefault
            ? widget.model.cashCardRequired.value
            : (widget.model.cashCardProductIds.value.contains(productId)
                ? !widget.model.cashCardRequired.value
                : widget.model.cashCardRequired.value),
        copperSellersLicenseRequired: isDefault
            ? widget.model.copperSellersLicenseRequired.value
            : (widget.model.copperSellersLicenseProductIds.value
                    .contains(productId)
                ? !widget.model.copperSellersLicenseRequired.value
                : widget.model.copperSellersLicenseRequired.value),
        exemptedSellerStatusRequired: isDefault
            ? widget.model.exemptedSellerStatusRequired.value
            : (widget.model.exemptedSellerStatusProductIds.value
                    .contains(productId)
                ? !widget.model.exemptedSellerStatusRequired.value
                : widget.model.exemptedSellerStatusRequired.value),
        preventCashPayment: isDefault
            ? widget.model.preventCashPayment.value
            : (widget.model.preventCashPaymentProductIds.value
                    .contains(productId)
                ? !widget.model.preventCashPayment.value
                : widget.model.preventCashPayment.value),
        proofOfOwnershipRequired: isDefault
            ? widget.model.proofOfOwnershipRequired.value
            : (widget.model.proofOfOwnershipProductIds.value.contains(productId)
                ? !widget.model.proofOfOwnershipRequired.value
                : widget.model.proofOfOwnershipRequired.value),
        vehicleDetailsRequired: isDefault
            ? widget.model.vehicleDetailsRequired.value
            : (widget.model.vehicleDetailsProductIds.value.contains(productId)
                ? !widget.model.vehicleDetailsRequired.value
                : widget.model.vehicleDetailsRequired.value),
        executedAffidavitDocumentRequired: isDefault
            ? widget.model.executedAffidavitDocumentRequired.value
            : (widget.model.executedAffidavitDocumentProductIds.value
                    .contains(productId)
                ? !widget.model.executedAffidavitDocumentRequired.value
                : widget.model.executedAffidavitDocumentRequired.value),
        allowedForAutoConfirm: isDefault
            ? widget.model.allowedForAutoConfirm.value
            : (widget.model.allowedForAutoConfirmProductIds.value
                    .contains(productId)
                ? !widget.model.allowedForAutoConfirm.value
                : widget.model.allowedForAutoConfirm.value),
      );
    }).toList();

    _rows.value = initialRows;
    _gridController = EmrGridController<ProductRuleRow>(data: _rows);

    defaultRow =
        initialRows.where((row) => row.productId == 'Default').toList();
  }

  void _removeRow(ProductRuleRow row) {
    final updated = List<ProductRuleRow>.from(_rows.value)..remove(row);

    setState(() {
      _rows.value = updated;
      widget.model.completeProductIds.value.remove(row.productId);
      widget.model.authorityReportableProductIds.value.remove(row.productId);
      widget.model.drivingLicenceRequiredProductIds.value.remove(row.productId);
      widget.model.cashCardProductIds.value.remove(row.productId);
      widget.model.copperSellersLicenseProductIds.value.remove(row.productId);
      widget.model.exemptedSellerStatusProductIds.value.remove(row.productId);
      widget.model.preventCashPaymentProductIds.value.remove(row.productId);
      widget.model.proofOfOwnershipProductIds.value.remove(row.productId);
      widget.model.vehicleDetailsProductIds.value.remove(row.productId);
      widget.model.executedAffidavitDocumentProductIds.value
          .remove(row.productId);
      widget.model.allowedForAutoConfirmProductIds.value.remove(row.productId);
      widget.model.productRuleRowList.value = _rows.value;
    });
  }

  Future<void> _onEditProduct(ProductRuleRow row) async {
    final authorityNotifier = ValueNotifier<bool>(row.authorityReportable);
    final drivingNotifier = ValueNotifier<bool>(row.drivingLicenceRequired);
    final cashCardNotifier = ValueNotifier<bool>(row.cashCardRequired);
    final copperSellersNotifier =
        ValueNotifier<bool>(row.copperSellersLicenseRequired);
    final exemptedSellerStatusNotifier =
        ValueNotifier<bool>(row.exemptedSellerStatusRequired);
    final preventCashPaymentNotifier =
        ValueNotifier<bool>(row.preventCashPayment);
    final proofOfOwnershipNotifier =
        ValueNotifier<bool>(row.proofOfOwnershipRequired);
    final vehicleDetailsNotifier =
        ValueNotifier<bool>(row.vehicleDetailsRequired);
    final executedAffidavitDocumentNotifier =
        ValueNotifier<bool>(row.executedAffidavitDocumentRequired);
    final allowedForAutoConfirmNotifier =
        ValueNotifier<bool>(row.allowedForAutoConfirm);

    final result = await EmrDialog.modal<bool>(
      context,
      titleText: 'Edit Product Profile',
      builder: (dialogContext) => SizedBox(
        width: 500,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: authorityNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Authority Reportable'),
                  value: value,
                  onChanged: (val) => authorityNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: drivingNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Driving Licence'),
                  value: value,
                  onChanged: (val) => drivingNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: cashCardNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Cash Card'),
                  value: value,
                  onChanged: (val) => cashCardNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: copperSellersNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Copper Sellers License'),
                  value: value,
                  onChanged: (val) => copperSellersNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: exemptedSellerStatusNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Exempted Seller Status'),
                  value: value,
                  onChanged: (val) => exemptedSellerStatusNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: preventCashPaymentNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Prevent Cash'),
                  value: value,
                  onChanged: (val) => preventCashPaymentNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: proofOfOwnershipNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Proof Of Ownership'),
                  value: value,
                  onChanged: (val) => proofOfOwnershipNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: vehicleDetailsNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Vehicle Details'),
                  value: value,
                  onChanged: (val) => vehicleDetailsNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: executedAffidavitDocumentNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Executed Affidavit Document'),
                  value: value,
                  onChanged: (val) =>
                      executedAffidavitDocumentNotifier.value = val,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: allowedForAutoConfirmNotifier,
                builder: (_, value, __) => SwitchListTile(
                  title: const Text('Allowed For Auto Confirm'),
                  value: value,
                  onChanged: (val) => allowedForAutoConfirmNotifier.value = val,
                ),
              ),
            ],
          ),
        ),
      ),
      onAccept: () async {
        Navigator.of(context).pop(true);
      },
    );

    if (true == result) {
      final updatedAuthority = authorityNotifier.value;
      final updatedDriving = drivingNotifier.value;
      final updatedcashCard = cashCardNotifier.value;
      final updatedcopperSellers = copperSellersNotifier.value;
      final updatedexemptedSellerStatus = exemptedSellerStatusNotifier.value;
      final updatedpreventCashPayment = preventCashPaymentNotifier.value;
      final updatedproofOfOwnership = proofOfOwnershipNotifier.value;
      final updatedvehicleDetails = vehicleDetailsNotifier.value;
      final updatedexecutedAffidavitDocument =
          executedAffidavitDocumentNotifier.value;
      final updatedAllowedForAutoConfirm = allowedForAutoConfirmNotifier.value;

      final index = _rows.value.indexOf(row);
      final updatedList = List<ProductRuleRow>.from(_rows.value);

      final updatedRow = ProductRuleRow(
        productId: row.productId,
        authorityReportable: updatedAuthority,
        drivingLicenceRequired: updatedDriving,
        cashCardRequired: updatedcashCard,
        copperSellersLicenseRequired: updatedcopperSellers,
        executedAffidavitDocumentRequired: updatedexecutedAffidavitDocument,
        preventCashPayment: updatedpreventCashPayment,
        proofOfOwnershipRequired: updatedproofOfOwnership,
        vehicleDetailsRequired: updatedvehicleDetails,
        exemptedSellerStatusRequired: updatedexemptedSellerStatus,
        allowedForAutoConfirm: updatedAllowedForAutoConfirm,
      );

      updatedList[index] = updatedRow;

      setState(() {
        _rows.value = updatedList;
        _updateModelWithRow(updatedRow);
      });
    }
  }

  void _updateModelWithRow(ProductRuleRow row) {
    final authorityList =
        List<String>.from(widget.model.authorityReportableProductIds.value);
    final drivingList =
        List<String>.from(widget.model.drivingLicenceRequiredProductIds.value);
    final cashCardList =
        List<String>.from(widget.model.cashCardProductIds.value);
    final copperSellersLicenseList = List<String>.from(
      widget.model.copperSellersLicenseProductIds.value,
    );
    final exemptedSellerStatusList = List<String>.from(
      widget.model.exemptedSellerStatusProductIds.value,
    );
    final preventCashPaymentList =
        List<String>.from(widget.model.preventCashPaymentProductIds.value);
    final proofOfOwnershipList = List<String>.from(
      widget.model.proofOfOwnershipProductIds.value,
    );
    final vehicleDetailsList =
        List<String>.from(widget.model.vehicleDetailsProductIds.value);
    final executedAffidavitDocumentList = List<String>.from(
      widget.model.executedAffidavitDocumentProductIds.value,
    );
    final allowedForAutoConfirmList = List<String>.from(
      widget.model.allowedForAutoConfirmProductIds.value,
    );

    if (row.authorityReportable) {
      if (!authorityList.contains(row.productId)) {
        authorityList.add(row.productId);
      }
    } else {
      authorityList.remove(row.productId);
    }

    if (row.drivingLicenceRequired) {
      if (!drivingList.contains(row.productId)) {
        drivingList.add(row.productId);
      }
    } else {
      drivingList.remove(row.productId);
    }

    if (row.cashCardRequired) {
      if (!cashCardList.contains(row.productId)) {
        cashCardList.add(row.productId);
      }
    } else {
      cashCardList.remove(row.productId);
    }

    if (row.copperSellersLicenseRequired) {
      if (!copperSellersLicenseList.contains(row.productId)) {
        copperSellersLicenseList.add(row.productId);
      }
    } else {
      copperSellersLicenseList.remove(row.productId);
    }

    if (row.exemptedSellerStatusRequired) {
      if (!exemptedSellerStatusList.contains(row.productId)) {
        exemptedSellerStatusList.add(row.productId);
      }
    } else {
      exemptedSellerStatusList.remove(row.productId);
    }

    if (row.preventCashPayment) {
      if (!preventCashPaymentList.contains(row.productId)) {
        preventCashPaymentList.add(row.productId);
      }
    } else {
      preventCashPaymentList.remove(row.productId);
    }

    if (row.proofOfOwnershipRequired) {
      if (!proofOfOwnershipList.contains(row.productId)) {
        proofOfOwnershipList.add(row.productId);
      }
    } else {
      proofOfOwnershipList.remove(row.productId);
    }

    if (row.vehicleDetailsRequired) {
      if (!vehicleDetailsList.contains(row.productId)) {
        vehicleDetailsList.add(row.productId);
      }
    } else {
      vehicleDetailsList.remove(row.productId);
    }

    if (row.executedAffidavitDocumentRequired) {
      if (!executedAffidavitDocumentList.contains(row.productId)) {
        executedAffidavitDocumentList.add(row.productId);
      }
    } else {
      executedAffidavitDocumentList.remove(row.productId);
    }

    if (row.allowedForAutoConfirm) {
      if (!allowedForAutoConfirmList.contains(row.productId)) {
        allowedForAutoConfirmList.add(row.productId);
      }
    } else {
      allowedForAutoConfirmList.remove(row.productId);
    }

    widget.model.authorityReportableProductIds.value = authorityList;
    widget.model.drivingLicenceRequiredProductIds.value = drivingList;
    widget.model.cashCardProductIds.value = cashCardList;
    widget.model.copperSellersLicenseProductIds.value =
        copperSellersLicenseList;
    widget.model.exemptedSellerStatusProductIds.value =
        exemptedSellerStatusList;
    widget.model.preventCashPaymentProductIds.value = preventCashPaymentList;
    widget.model.proofOfOwnershipProductIds.value = proofOfOwnershipList;
    widget.model.vehicleDetailsProductIds.value = vehicleDetailsList;
    widget.model.executedAffidavitDocumentProductIds.value =
        executedAffidavitDocumentList;
    widget.model.allowedForAutoConfirmProductIds.value =
        allowedForAutoConfirmList;

    if (row.productId == 'Default') {
      widget.model.authorityReportable.value = row.authorityReportable;
      widget.model.drivingLicenceRequired.value = row.drivingLicenceRequired;
      widget.model.cashCardRequired.value = row.cashCardRequired;
      widget.model.copperSellersLicenseRequired.value =
          row.copperSellersLicenseRequired;
      widget.model.exemptedSellerStatusRequired.value =
          row.drivingLicenceRequired;
      widget.model.preventCashPayment.value = row.drivingLicenceRequired;
      widget.model.proofOfOwnershipRequired.value = row.drivingLicenceRequired;
      widget.model.vehicleDetailsRequired.value = row.drivingLicenceRequired;
      widget.model.executedAffidavitDocumentRequired.value =
          row.drivingLicenceRequired;
      widget.model.allowedForAutoConfirm.value = row.drivingLicenceRequired;
    }

    widget.model.productRuleRowList.value = _rows.value;
  }

  Future<void> _onAddProduct() async {
    final product = _selectedProduct.value;
    if (product == null ||
        widget.model.completeProductIds.value.contains(product.id)) {
      return;
    }

    final authorityNotifier =
        ValueNotifier<bool>(defaultRow.first.authorityReportable);
    final drivingNotifier =
        ValueNotifier<bool>(defaultRow.first.drivingLicenceRequired);
    final cashCardNotifier =
        ValueNotifier<bool>(defaultRow.first.cashCardRequired);
    final copperSellersNotifier = ValueNotifier<bool>(
      defaultRow.first.copperSellersLicenseRequired,
    );
    final exemptedSellerStatusNotifier = ValueNotifier<bool>(
      defaultRow.first.exemptedSellerStatusRequired,
    );
    final preventCashPaymentNotifier =
        ValueNotifier<bool>(defaultRow.first.preventCashPayment);
    final proofOfOwnershipNotifier =
        ValueNotifier<bool>(defaultRow.first.proofOfOwnershipRequired);
    final vehicleDetailsNotifier =
        ValueNotifier<bool>(defaultRow.first.vehicleDetailsRequired);
    final executedAffidavitDocumentNotifier = ValueNotifier<bool>(
      defaultRow.first.executedAffidavitDocumentRequired,
    );
    final allowedForAutoConfirmNotifier =
        ValueNotifier<bool>(defaultRow.first.allowedForAutoConfirm);

    final result = await EmrDialog.modal<bool>(
      context,
      titleText: 'Add Product Profile',
      builder: (dialogContext) => SizedBox(
        width: 500,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ValueListenableBuilder<bool>(
                valueListenable: authorityNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Authority Reportable'),
                  value: value,
                  onChanged: (val) => authorityNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: drivingNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Driving Licence Required'),
                  value: value,
                  onChanged: (val) => drivingNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: cashCardNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Cash Card Required'),
                  value: value,
                  onChanged: (val) => cashCardNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: copperSellersNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Copper Sellers License Required'),
                  value: value,
                  onChanged: (val) => copperSellersNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: exemptedSellerStatusNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Exempted SellerStatus Required'),
                  value: value,
                  onChanged: (val) => exemptedSellerStatusNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: preventCashPaymentNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Prevent Cash Payment'),
                  value: value,
                  onChanged: (val) => preventCashPaymentNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: proofOfOwnershipNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Proof Of Ownership Required'),
                  value: value,
                  onChanged: (val) => proofOfOwnershipNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: executedAffidavitDocumentNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Executed Affidavit Document'),
                  value: value,
                  onChanged: (val) =>
                      executedAffidavitDocumentNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: vehicleDetailsNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Vehicle Details'),
                  value: value,
                  onChanged: (val) => vehicleDetailsNotifier.value = val,
                ),
              ),
              ValueListenableBuilder<bool>(
                valueListenable: allowedForAutoConfirmNotifier,
                builder: (context, value, _) => SwitchListTile(
                  title: const Text('Allowed For Auto Confirm'),
                  value: value,
                  onChanged: (val) => allowedForAutoConfirmNotifier.value = val,
                ),
              ),
            ],
          ),
        ),
      ),
      onAccept: () async {
        Navigator.of(context).pop(true);
      },
    );

    if (true == result) {
      final newRow = ProductRuleRow(
        productId: product.id,
        authorityReportable: authorityNotifier.value,
        drivingLicenceRequired: drivingNotifier.value,
        cashCardRequired: cashCardNotifier.value,
        copperSellersLicenseRequired: copperSellersNotifier.value,
        exemptedSellerStatusRequired: exemptedSellerStatusNotifier.value,
        preventCashPayment: preventCashPaymentNotifier.value,
        proofOfOwnershipRequired: proofOfOwnershipNotifier.value,
        vehicleDetailsRequired: vehicleDetailsNotifier.value,
        allowedForAutoConfirm: allowedForAutoConfirmNotifier.value,
        executedAffidavitDocumentRequired:
            executedAffidavitDocumentNotifier.value,
      );

      setState(() {
        _rows.value = [..._rows.value, newRow];
        widget.model.completeProductIds.value.add(product.id);
        _updateModelWithRow(newRow);
      });

      widget.model.productRuleRowList.value = _rows.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          const SizedBox(width: Insets.gutter),
          if (widget.model.id.value!.endsWith(
              'yards/${EmrOneDataManagementConstants.kRouteNewYardCode}',))
            Column(
              children: [
                const SizedBox(width: Insets.gutter),
                Row(
                  children: [
                    Expanded(
                      child: EmrPickerFormField<Yard>(
                        labelText: 'Select Yard',
                        items: context.coreApi.referenceData.yards,
                        itemTitleText: (yard) => yard.name,
                        itemSubtitleText: (yard) => yard.yardCode,
                        binding: widget.model.selectedYard,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(width: Insets.gutter),
          Row(
            children: [
              Expanded(
                child: EmrPickerFormField<Product>(
                  labelText: 'Add Product',
                  items: context.coreApi.referenceData.products,
                  itemTitleText: (item) => item.description,
                  itemSubtitleText: (item) => item.code,
                  binding: _selectedProduct,
                ),
              ),
              const SizedBox(width: Insets.gutter),
              FilledButton(
                onPressed: _onAddProduct,
                child: const Text(
                  'Add',
                ),
              ),
            ],
          ),
          const SizedBox(width: Insets.gutter),
          SizedBox(
            height: 400,
            child: EmrGrid<ProductRuleRow>(
              controller: _gridController,
              alternateBackgroundRowColour: true,
              pinnedRowCount: 2,
              pinnedColumnCount: 2,
              columns: [
                EmrGridColumn(
                  headerBuilder: () => const EmrGridHeader(text: ''),
                  cellBuilder: (row) {
                    if (row.productId == 'Default') {
                      return const SizedBox.shrink();
                    }
                    return Align(
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        tooltip: 'Delete Product',
                        onPressed: () {
                          EmrDialog.noYes(
                            context,
                            titleText: 'Confirm Delete',
                            contentText: 'Do you want to delete the product?',
                            onYes: () => _removeRow(row),
                            onNo: () {},
                          );
                        },
                      ),
                    );
                  },
                ),
                EmrGridColumn(
                  headerBuilder: () =>
                      const EmrGridHeader(text: 'Product Code'),
                  cellBuilder: (row) => GestureDetector(
                    child: Text(row.productId.split('/').last),
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () =>
                      const EmrGridHeader(text: 'Authority Reportable'),
                  cellBuilder: (row) =>
                      iconForCheckboxState(value: row.authorityReportable),
                ),
                EmrGridColumn(
                  headerBuilder: () =>
                      const EmrGridHeader(text: 'Driving Licence Required'),
                  cellBuilder: (row) => iconForCheckboxState(
                    value: row.drivingLicenceRequired,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () =>
                      const EmrGridHeader(text: 'Cash Card Required'),
                  cellBuilder: (row) =>
                      iconForCheckboxState(value: row.cashCardRequired),
                ),
                EmrGridColumn(
                  headerBuilder: () =>
                      const EmrGridHeader(text: 'Copper Sellers License'),
                  cellBuilder: (row) => iconForCheckboxState(
                    value: row.copperSellersLicenseRequired,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const EmrGridHeader(
                    text: 'Exempted Seller Status Required',
                  ),
                  cellBuilder: (row) => iconForCheckboxState(
                    value: row.exemptedSellerStatusRequired,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () =>
                      const EmrGridHeader(text: 'Prevent Cash Payment'),
                  cellBuilder: (row) =>
                      iconForCheckboxState(value: row.preventCashPayment),
                ),
                EmrGridColumn(
                  headerBuilder: () => const EmrGridHeader(
                    text: 'Proof Of Ownership Required',
                  ),
                  cellBuilder: (row) => iconForCheckboxState(
                    value: row.proofOfOwnershipRequired,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () =>
                      const EmrGridHeader(text: 'Vehicle Details Required'),
                  cellBuilder: (row) => iconForCheckboxState(
                    value: row.vehicleDetailsRequired,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const EmrGridHeader(
                    text: 'Executed Affidavit Document Required',
                  ),
                  cellBuilder: (row) => iconForCheckboxState(
                    value: row.executedAffidavitDocumentRequired,
                  ),
                ),
                EmrGridColumn(
                  headerBuilder: () => const EmrGridHeader(
                    text: 'Allowed For Auto Confirm',
                  ),
                  cellBuilder: (row) => iconForCheckboxState(
                    value: row.allowedForAutoConfirm,
                  ),
                ),
              ],
              onRowTapped: _onEditProduct,
            ),
          ),
          const SizedBox(width: Insets.gutter),
          SizedBox(
            height: 70,
            child: EmrFormButtons(
              onSave: () async {
                final paymentRule = widget.model.toYardPaymentRule();
                final result = await context.coreApi.referenceData
                    .savePaymentRules(paymentRule: paymentRule);

                if (result?.success == false) {
                  if (!context.mounted) {
                    return;
                  }

                  await EmrModal.showMessageBar(
                    context,
                    result!.message,
                    messageType: MessageBarTypes.error,
                  );

                  return;
                }

                if (!context.mounted) {
                  return;
                }

                await EmrModal.showMessageBar(
                  context,
                  'Successfully saved',
                ).then(
                  (_) {
                    if (!context.mounted) {
                      return;
                    }

                    context.goNamed(
                      EmrOneDataManagementConstants.kRouteYardPaymentRuleSearch,
                    );
                  },
                );
              },
              onCancel: () {
                context.goNamed(
                  EmrOneDataManagementConstants.kRouteYardPaymentRuleSearch,
                );
              },
              buttons: widget.buttons,
            ),
          ),
        ],
      ),
    );
  }

  IconData _iconFor(bool? value) {
    if (true == value) return Icons.check_box;
    if (value == false) return Icons.check_box_outline_blank;
    return Icons.remove_circle;
  }

  Color _colorFor(bool? value) {
    if (value == null) return Colors.grey;
    return Colors.grey;
  }

  double _opacityFor(bool? value) {
    if (value == null) return 0.4;
    return 1;
  }

  Widget iconForCheckboxState({required bool value}) {
    return Opacity(
      opacity: _opacityFor(value),
      child: Icon(
        _iconFor(value),
        color: _colorFor(value),
      ),
    );
  }
}
