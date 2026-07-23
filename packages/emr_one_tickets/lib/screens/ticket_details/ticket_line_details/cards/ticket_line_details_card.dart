import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/inventory_services/location_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class TicketLineDetailsCard extends EmrTabBarVerticalViewResponsiveColumnsCard {
  TicketLineDetailsCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
    required TicketLineFormData lineModel,
    required ValueNotifier<bool> canEdit,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: 'Bought as product',
             enabled: canEdit,
             binding: lineModel.product,
             items: context.coreApi.referenceData.pickerProducts,
             itemTitleText: (item) => item.key,
             itemSubtitleText: (item) => item.value,
             validator: Validators.required,
           ),
           // When the product changes we change the key of the picker so it
           // doesn't cache previous results.
           ValueListenableBuilder(
             valueListenable: lineModel.product,
             builder: (context, value, child) {
               return EmrPickerFormField(
                 key: ValueKey('location:${lineModel.product.value.key}'),
                 labelText: context.l10n.location,
                 enabled: ValueNotifier(
                   canEdit.value && lineModel.product.value.value.isNotEmpty,
                 ),
                 binding: lineModel.location,
                 items: (query) =>
                     context.coreApi.inventoryService.pickerInventoryLocations(
                       model.yardCode.value ?? '',
                       query,
                       lineModel.product.value.value,
                     ),
                 itemTitleText: (item) => item.key,
                 itemSubtitleText: (item) => item.value,
                 validator: Validators.required,
               );
             },
           ),
           EmrPickerFormField(
             labelText: 'Stocked as product',
             enabled: canEdit,
             binding: lineModel.stockAsProduct,
             items: context.coreApi.referenceData.pickerProducts,
             itemTitleText: (item) => item.key,
             itemSubtitleText: (item) => item.value,
             validator: Validators.required,
           ),
           const SizedBox.shrink(),
           EmrUomFormField(
             labelText: 'Gross Weight',
             enabled: canEdit,
             binding: lineModel.grossWeight,
             validator: Validators.required,
           ),
           EmrUomFormField(
             labelText: 'Net Weight',
             enabled: canEdit,
             binding: lineModel.netWeight,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: 'Gross Weight Sequence No.',
             enabled: canEdit,
             binding: lineModel.weightSerial,
           ),
           EmrTextFormField(
             labelText: 'Tare Weight Sequence No.',
             enabled: canEdit,
             binding: lineModel.tareWeightSerial,
           ),
           EmrTimeFormField(
             labelText: 'Gross Weight Time',
             enabled: canEdit,
             binding: lineModel.grossWeightDateTime,
           ),
           EmrPickerFormField(
             labelText: 'Has Seen Zero',
             enabled: canEdit,
             binding: lineModel.hasSeenZero,
             items: (_) => Future.value([true, false]),
             itemTitleText: (item) => item ? context.l10n.yes : context.l10n.no,
             mode: .dropdown,
           ),
           EmrPickerFormField(
             labelText: 'Is Gross From Previous Weight',
             enabled: canEdit,
             binding: lineModel.isGrossFromPreviousWeight,
             items: (_) => Future.value([true, false]),
             itemTitleText: (item) => item ? context.l10n.yes : context.l10n.no,
             mode: .dropdown,
           ),
           EmrTextFormField(
             labelText: 'Manual Gross Weight Reason',
             enabled: canEdit,
             binding: lineModel.manualGrossWeightReason,
           ),
           EmrPickerFormField(
             labelText: 'Price Origin',
             enabled: canEdit,
             binding: lineModel.priceOrigin,
             items: (_) => Enum$PriceOriginType.values.pickerItems(context),
             itemTitleText: (item) => item.displayString(context),
             mode: .dropdown,
           ),
           EmrTextFormField(
             labelText: context.l10n.sealNumber,
             enabled: canEdit,
             binding: lineModel.sealNumber,
           ),
           EmrTextFormField(
             labelText: 'Account Waste Stream Number',
             enabled: canEdit,
             binding: lineModel.partyWasteStreamNumber,
           ),
           EmrTextFormField(
             labelText: 'Bin Number',
             enabled: canEdit,
             binding: lineModel.binNo,
           ),
           EmrTextFormField(
             labelText: 'Consignment Note Number',
             enabled: canEdit,
             binding: lineModel.consignmentNoteNo,
           ),
           EmrTextFormField(
             labelText: 'Packing List Reference',
             enabled: canEdit,
             binding: lineModel.packingListReference,
           ),
         ],
       );
}
