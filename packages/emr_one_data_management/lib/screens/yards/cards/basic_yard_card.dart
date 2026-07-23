import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/yards/yard_form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class BasicYardCard extends EmrTabBarVerticalViewCard {
  BasicYardCard({
    required BuildContext context,
    required super.title,
    required YardFormData model,
    super.key,
  }) : super(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        EmrTextFormField(
                          labelText: 'Yard Code',
                          binding: model.yardCode,
                          validator: Validators.required,
                        ),
                        EmrTextFormField(
                          labelText: 'Yard Name',
                          binding: model.yardName,
                          validator: Validators.required,
                        ),
                        EmrTextFormField(
                          labelText: 'Cash Tin Number',
                          binding: model.cashTinNumber,
                        ),
                        EmrPickerFormField<String>(
                          labelText: 'Trading?',
                          items: (query) async => ['Y', 'N'],
                          itemTitleText: (item) => item,
                          itemSubtitleText: (item) =>
                              item == 'Y' ? 'Yes' : 'No',
                          binding: model.tradingIndicator,
                          validator: Validators.required,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: Insets.gutter),
                  Expanded(
                    child: Column(
                      children: [
                        EmrPickerFormField<Company>(
                          labelText: 'Company',
                          items: context.coreApi.referenceData.companies,
                          itemTitleText: (item) => item.fullName,
                          itemSubtitleText: (item) => item.code,
                          binding: model.company,
                          validator: Validators.required,
                        ),
                        EmrPickerFormField<Territory>(
                          labelText: 'Territory',
                          items: context.coreApi.referenceData.territories,
                          itemTitleText: (item) => item.code,
                          itemSubtitleText: (item) => item.name,
                          binding: model.territory,
                          validator: Validators.required,
                        ),
                        Row(
                          children: [
                            EmrSwitchFormField(
                              labelText: 'Active',
                              binding: model.active,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
}
