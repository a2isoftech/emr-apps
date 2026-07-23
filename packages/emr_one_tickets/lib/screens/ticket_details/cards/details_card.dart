import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/widgets.dart';

class DetailsCard extends EmrTabBarVerticalViewResponsiveColumnsCard {
  DetailsCard(
    BuildContext context, {
    required super.title,
    required TicketDetailsFormData model,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.category,
             enabled: model.canEdit,
             mode: .dropdown,
             binding: model.ticketCategory,
             items: (_) => Enum$TicketCategory.values.pickerItems(context),
             itemTitleText: (item) => item.displayString(context),
             validator: Validators.required,
           ),
           EmrPickerFormField(
             labelText: context.l10n.location,
             enabled: model.canEdit,
             binding: model.location,
             items: context.coreApi.accountService.pickerAccountLocations,
             itemTitleText: (item) => '${item.value} (${item.key})',
             validator: Validators.required,
           ),
           EmrPickerFormField(
             labelText: context.l10n.serviceType,
             enabled: model.canEdit,
             binding: model.serviceType,
             items: (_) => Enum$TicketServiceType.values.pickerItems(context),
             itemTitleText: (item) => item.displayString(context),
             validator: Validators.required,
             mode: .dropdown,
           ),
           EmrPickerFormField(
             labelText: 'Transport mode',
             enabled: model.canEdit,
             binding: model.transportDetailsTransportType,
             items: (_) => Enum$TransportType.values.pickerItems(context),
             itemTitleText: (item) => item.displayString(context),
             validator: Validators.required,
             mode: .dropdown,
           ),
           EmrTextFormField(
             labelText: 'Vehicle reg / Wagon No.',
             enabled: model.canEdit,
             binding: model.transportDetailsVehicleReg,
           ),
           EmrTextFormField(
             labelText: 'Account contract ref.',
             enabled: model.canEdit,
             binding: model.contractInternalReference,
           ),
           EmrUomFormField(
             labelText: 'Internal net',
             enabled: ValueNotifier(false),
             binding: model.internalNet,
           ),
           EmrTextFormField(
             labelText: context.l10n.currency,
             enabled: ValueNotifier(false),
             binding: model.currency,
           ),
           ListenableBuilder(
             listenable: Listenable.merge([
               model.ticketCategory,
               model.ticketType,
             ]),
             builder: (_, _) => EmrTextFormField(
               labelText: 'Outward ticket No.',
               enabled: model.canEdit,
               visible: ValueNotifier(
                 (model.ticketCategory.value == .INTER_DEPOT ||
                         model.ticketCategory.value == .INTER_YARD_TRANSFER) &&
                     model.ticketType.value == .INWARDS,
               ),
               binding: model.outwardTicketNumber,
             ),
           ),
         ],
       );
}
