import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/territories/territory_form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

Company? defaultCompany;

class TerritoryCard extends EmrTabBarVerticalViewCard {
  TerritoryCard({
    required BuildContext context,
    required super.title,
    required TerritoryFormData model,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmrTextFormField(
                labelText: 'Territory Code',
                binding: model.territoryCode,
                validator: Validators.required,
              ),
              EmrTextFormField(
                labelText: 'Territory Name',
                binding: model.name,
                validator: Validators.required,
              ),
              EmrPickerFormField<Company>(
                labelText: 'Default Company',
                items: context.coreApi.referenceData.companies,
                itemTitleText: (item) => item.fullName,
                itemSubtitleText: (item) => item.code,
                binding: model.defaultCompany,
                validator: Validators.required,
              ),
              EmrPickerFormField<EmrOneCoreUom>(
                labelText: 'UOM',
                items: (query) async {
                  return context.coreApi.referenceData
                      .allowedUoms(query, model.territoryCode.value ?? '');
                },
                itemTitleText: (item) => item.uomCode,
                itemSubtitleText: (item) => item.uomId.toString(),
                binding: model.uom,
                validator: Validators.required,
              ),
              EmrTextFormField(
                labelText: 'Currency Code',
                binding: model.currencyCode,
                validator: Validators.required,
              ),
              EmrSwitchFormField(
                labelText: 'Active',
                binding: model.active,
              ),
            ],
          ),
        );
}
