import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeighbridgeTicketPrintCard extends EmrTabBarVerticalViewCard {
  WeighbridgeTicketPrintCard({
    required BuildContext context,
    required super.title,
    required WeighbridgeProfileTicketPrintData model,
    required ValueNotifier<List<String>> ticketPrintTemplates,
    required void Function(WeighbridgeProfileTicketPrintData) deleteTicketPrint,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: model.name,
                builder: (_, __, ___) {
                  return WeighbridgeProfileSectionHeader(
                    iconData: FontAwesomeIcons.print,
                    text: model.name.value,
                    onDelete: () => deleteTicketPrint(model),
                  );
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.ticketPrintName,
                      binding: model.name,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (name) {
                        final requiredValidatorResult =
                            Validators.required(name);
                        if (requiredValidatorResult == null &&
                            !name!.validateName()) {
                          return context
                              .l10n.onlyLettersNumbersHyphensSpacesAllowed;
                        }
                        return requiredValidatorResult;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: Insets.gutter,
                  ),
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.headerText,
                      hintText: context.l10n.exampleTraderCopy,
                      binding: model.headerText,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (name) {
                        final requiredValidatorResult =
                            Validators.required(name);
                        if (requiredValidatorResult == null &&
                            !name!.validateName()) {
                          return context
                              .l10n.onlyLettersNumbersHyphensSpacesAllowed;
                        }
                        return requiredValidatorResult;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.printerName,
                      hintText: 'e.g. Local TSP800',
                      binding: model.printer.value.name,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: Validators.required,
                    ),
                  ),
                  const SizedBox(
                    width: Insets.gutter,
                  ),
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.printerUrl,
                      hintText: 'e.g. http://localhost/piprint',
                      binding: model.printer.value.url,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => Validators.join([
                        Validators.required(value),
                        Validators.url(value),
                      ]),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrPickerFormField<PrintForTicketDirections>(
                      labelText: context.l10n.printForTicketDirections,
                      items: (query) async => PrintForTicketDirections.values,
                      itemTitleText: (item) => item.localizedLabel(context),
                      binding: model.printForTicketDirections,
                      mode: EmrPickerMode.dropdown,
                      validator: Validators.required,
                    ),
                  ),
                  const SizedBox(
                    width: Insets.gutter,
                  ),
                  Expanded(
                    child: EmrPickerFormField<TicketPrintType>(
                      labelText: context.l10n.ticketPrintType,
                      items: (query) async => TicketPrintType.values,
                      itemTitleText: (item) => item.name,
                      binding: model.ticketPrintType,
                      mode: EmrPickerMode.dropdown,
                      validator: Validators.required,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: EmrPickerFormField<String>(
                      labelText: context.l10n.templateName,
                      items: (query) async => [
                        '',
                        ...ticketPrintTemplates.value,
                      ],
                      itemTitleText: (item) =>
                          item.isEmpty ? context.l10n.psnopNone : item,
                      binding: model.templateName,
                      mode: EmrPickerMode.dropdown,
                    ),
                  ),
                  const SizedBox(
                    width: Insets.gutter,
                  ),
                  Expanded(
                    child: EmrTextFormField(
                      labelText: context.l10n.numberOfCopies,
                      hintText: 'e.g. 1',
                      binding: model.numberOfCopies,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) => Validators.join([
                        Validators.required(value),
                        Validators.integer(value, min: 1),
                      ]),
                    ),
                  ),
                ],
              ),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child:EmrPickerFormField<ShowWeightMode>(
                      labelText: context.l10n.showWeightMode,
                      items: (query) async => ShowWeightMode.values,
                      itemTitleText: (item) => item.localizedLabel(context),
                      binding: model.showWeightMode,
                      mode: EmrPickerMode.dropdown,
                      validator: Validators.required,
                    ),
                  ),
                  const SizedBox(
                    width: Insets.gutter,
                  ),
                  const Expanded(
                    child: SizedBox.shrink(),
                  ),
                ],
              ),
            ],
          ),
        );
}
