import 'package:decimal/decimal.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/extensions/weighbridge/hwcn_level_extensions.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class WeighbridgeBasicCard extends EmrTabBarVerticalViewCard {
  WeighbridgeBasicCard({
    required super.title,
    required BuildContext context,
    required WeighbridgeFormData model,
    required UomService uomService,
    required UserInfoService userInfoService,
    required ValueNotifier<List<Uom>> uoms,
    required ValueNotifier<List<String>> yardWeighbridgeGroups,
    super.key,
  }) : super(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.displayName,
                     hintText: 'e.g. Ferrous Weighbridge',
                     binding: model.name,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: (name) {
                       final requiredValidatorResult = Validators.required(
                         name,
                       );

                       if (requiredValidatorResult == null &&
                           !name!.validateName()) {
                         return context
                             .l10n
                             .onlyLettersNumbersHyphensSpacesAllowed;
                       }

                       return requiredValidatorResult;
                     },
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: ValueListenableBuilder(
                     valueListenable: model.yard,
                     builder: (context, value, child) =>
                         EmrPickerFormField<Yard>(
                           key: value == null
                               ? UniqueKey()
                               : ValueKey(value.id),
                           labelText: context.l10n.yard,
                           binding: model.yard,
                           items: (String query) async {
                             final allYards = await context
                                 .coreApi
                                 .referenceData
                                 .yards(query);
                             final userYardCodes = userInfoService
                                 .userInfo
                                 .depots
                                 .map((e) => e.yardCode!)
                                 .toSet();

                             final eligibleYards = allYards
                                 .where(
                                   (yard) =>
                                       userYardCodes.contains(yard.yardCode),
                                 )
                                 .toList();

                             return eligibleYards;
                           },
                           itemTitleText: (item) => item.yardCode,
                           validator: Validators.required,
                         ),
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: ValueListenableBuilder<Yard?>(
                     valueListenable: model.yard,
                     builder: (context, yard, _) {
                       return EmrTextFormField<String>(
                         labelText: context.l10n.territoryCode,
                         binding: model.territoryCode,
                         enabled: ValueNotifier(false),
                         readOnly: ValueNotifier(true),
                         autovalidateMode: AutovalidateMode.onUserInteraction,
                         validator: (value) {
                           final validation = Validators.required(value);

                           if (validation != null) {
                             if (!model
                                 .fieldsConfigurations
                                 .value
                                 .yardSelected
                                 .value) {
                               return context.l10n.yardMustBeSelectedFirst;
                             } else {
                               return context.l10n.territoryNotLoaded;
                             }
                           }
                           return validation;
                         },
                       );
                     },
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: ValueListenableBuilder<Yard?>(
                     valueListenable: model.yard,
                     builder: (context, yard, _) {
                       return EmrTextFormField(
                         labelText: context.l10n.currency,
                         hintText: 'e.g. GBP / USD',
                         binding: model.currency,
                         enabled: ValueNotifier(false),
                       );
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
                     labelText: context.l10n.wmlExemptionNo,
                     binding: model.wmlExemptionNo,
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.wasteCarrierRegNo,
                     binding: model.wasteCarrierRegNo,
                   ),
                 ),
               ],
             ),
             Row(
               spacing: Insets.gutter,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrPickerFormField<Uom>(
                     labelText: context.l10n.weighbridgeUOM,
                     binding: model.weighbridgeUom,
                     items: (_) => Future.value(uoms.value),
                     itemTitleText: (item) => item.uomCode.replaceAll('XX', ''),
                     itemSubtitleText: (item) => item.uomCode,
                     enabled: model.fieldsConfigurations.value.yardSelected,
                     validator: (value) {
                       final validation = Validators.required(value);

                       if (validation != null && uoms.value.isEmpty) {
                         if (!model
                             .fieldsConfigurations
                             .value
                             .yardSelected
                             .value) {
                           return context.l10n.yardRequiredToLoadUoms;
                         } else {
                           return context.l10n.territoryRequiredToLoadUoms;
                         }
                       } else {
                         final territory =
                             model.yard.value?.company?.territory?.code ?? '';
                         if (model.weighbridgeUom.value != null &&
                             !uomService.uomValidForTerritory(
                               model.weighbridgeUom.value!,
                               territory,
                             )) {
                           return context.l10n.invalidUOMForYard(
                             model.weighbridgeUom.value!.uomCode.replaceAll(
                               'XX',
                               '',
                             ),
                             model.yard.value!.yardCode,
                           );
                         }
                       }
                       return validation;
                     },
                   ),
                 ),
                 Expanded(
                   child: EmrPickerFormField<Uom>(
                     labelText: context.l10n.dirtDeductionUOM,
                     binding: model.dirtDeductionUom,
                     items: (_) => Future.value(uoms.value),
                     itemTitleText: (item) => item.uomCode.replaceAll('XX', ''),
                     itemSubtitleText: (item) => item.uomCode,
                     enabled: model.fieldsConfigurations.value.yardSelected,
                     validator: (value) {
                       final validation = Validators.required(value);

                       if (validation != null && uoms.value.isEmpty) {
                         if (!model
                             .fieldsConfigurations
                             .value
                             .yardSelected
                             .value) {
                           return context.l10n.yardRequiredToLoadUoms;
                         } else {
                           return context.l10n.territoryRequiredToLoadUoms;
                         }
                       } else {
                         final territory =
                             model.yard.value?.company?.territory?.code ?? '';
                         if (model.dirtDeductionUom.value != null &&
                             !uomService.uomValidForTerritory(
                               model.dirtDeductionUom.value!,
                               territory,
                             )) {
                           return context.l10n.invalidUOMForYard(
                             model.dirtDeductionUom.value!.uomCode.replaceAll(
                               'XX',
                               '',
                             ),
                             model.yard.value!.yardCode,
                           );
                         }
                       }
                       return validation;
                     },
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrPickerFormField<RoundingOption>(
                     labelText: context.l10n.roundingType,
                     items: (query) async => RoundingOption.values,
                     itemTitleText: (item) => item.localizedLabel(context),
                     binding: model.roundingType,
                     mode: EmrPickerMode.dropdown,
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: ValueListenableBuilder<RoundingOption?>(
                     valueListenable: model.roundingType,
                     builder: (context, selectedType, _) {
                       final enabled =
                           selectedType != RoundingOption.noRounding;

                       return EmrTextFormField(
                         // The key is needed so any validation message is
                         // cleared when changing to a state where it should
                         // no longer be shown.
                         key: ValueKey('roundingPrecision.$enabled'),
                         labelText: context.l10n.roundingPrecision,
                         hintText: 'e.g. 0.5',
                         binding: model.roundingPrecision,
                         enabled: ValueNotifier(enabled),
                         validator: enabled
                             ? (String? value) {
                                 final requiredValidatorResult =
                                     Validators.required(value);

                                 if (requiredValidatorResult == null) {
                                   final val = Decimal.tryParse(value!);

                                   if (val == null) {
                                     return context.l10n.invalidNumber;
                                   }

                                   if (val <= Decimal.zero ||
                                       val >= Decimal.one) {
                                     return context.l10n.precisionError;
                                   }
                                 }

                                 return requiredValidatorResult;
                               }
                             : null,
                       );
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
                     labelText: context.l10n.cameraPreviewParameters,
                     binding: model.cameraPreviewParameters,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: (value) {
                       if (value != null &&
                           value.isNotEmpty &&
                           !value.isValidQueryParameters()) {
                         return context.l10n.invalidQueryParameters;
                       }
                       return null;
                     },
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.piPrintKey,
                     binding: model.piPrintApiKey,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: Validators.required,
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrMultiPickerFormField<String>(
                     labelText: context.l10n.weighbridgeGroups,
                     items: (query) {
                       return Future.value(
                         yardWeighbridgeGroups.value
                             .where((wg) => wg.contains(query))
                             .toList(),
                       );
                     },
                     enabled: model.fieldsConfigurations.value.yardSelected,
                     validator: (value) {
                       final requiredValidation = Validators.required(value);
                       if (requiredValidation == null) {
                         final selectedGroups = value as List<String>;
                         final invalidGroups = selectedGroups
                             .where(
                               (sg) =>
                                   !yardWeighbridgeGroups.value.contains(sg),
                             )
                             .toList();
                         if (invalidGroups.isNotEmpty) {
                           return context.l10n.notFoundForTheSelectedYard(
                             invalidGroups.join(', '),
                           );
                         }
                       } else if (!model
                           .fieldsConfigurations
                           .value
                           .yardSelected
                           .value) {
                         return context.l10n.yardRequiredToLoadGroups;
                       }
                       return null;
                     },
                     itemTitleText: (item) => item,
                     binding: model.weighbridgeGroups,
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrPickerFormField<HwcnLevel>(
                     labelText: context.l10n.hwcnLevel,
                     items: (query) async => HwcnLevel.values,
                     itemTitleText: (item) => item.localizedLabel(context),
                     binding: model.hwcnLevel,
                     mode: EmrPickerMode.dropdown,
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrMultiPickerFormField<ProductData>(
                     labelText: context.l10n.allowedProducts,
                     binding: model.allowedProducts,
                     itemTitleText: (product) => product.code.value,
                     itemSubtitleText: (product) => product.description.value,
                     items: (query) async {
                       final products = await context.coreApi.pricingService
                           .getProducts(null, query: '*$query*');
                       final selectedProductIds = model.allowedProducts.value
                           .map((product) => product.id.value);

                       return products
                           .where(
                             (product) =>
                                 !selectedProductIds.contains(product.id),
                           )
                           .map(ProductData.fromProduct)
                           .toList();
                     },
                   ),
                 ),
               ],
             ),
             ElvConfigurationsWidget(model: model),
             KnownTaresWidget(model: model, uomService: uomService, uoms: uoms),
             ConfigurationsWidget(model: model),
             TechmentCatSettingsWidget(
               model: model,
               uomService: uomService,
               uoms: uoms,
             ),
             CanModeWidget(model: model),
             TicketHeadersSearchInWidget(model: model),
             PricingServicesConfigWidget(model: model),
             EwcControlWidget(model: model),
             AutoHulkAffidavitWidget(model: model),
           ],
         ),
       );
}
