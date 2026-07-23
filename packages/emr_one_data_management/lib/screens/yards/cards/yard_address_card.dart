import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/yards/yard_form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class YardAddressCard extends EmrTabBarVerticalViewCard {
  YardAddressCard({
    required BuildContext context,
    required super.title,
    required YardFormData model,
    super.key,
  }) : super(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        EmrPickerFormField<Region>(
                          labelText: 'Region',
                          items: (item) =>
                              context.coreApi.referenceData.fetchRegions(
                            hasParentRegion: false,
                            query: item,
                          ),
                          itemTitleText: (item) => item.name,
                          itemSubtitleText: (item) => item.name,
                          binding: model.region,
                          validator: Validators.required,
                        ),
                        EmrPickerFormField<Timezone>(
                          labelText: 'Timezone',
                          items: context.coreApi.referenceData.fetchTimezones,
                          itemTitleText: (item) => item.displayName,
                          itemSubtitleText: (item) => item.timeZoneId,
                          binding: model.timezone,
                          validator: Validators.required,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EmrTextFormField(
                          labelText: 'Address Line 1',
                          binding: model.addressLine1,
                        ),
                        EmrTextFormField(
                          labelText: 'Address Line 2',
                          binding: model.addressLine2,
                        ),
                        EmrTextFormField(
                          labelText: 'Address Line 3',
                          binding: model.addressLine3,
                        ),
                        EmrTextFormField(
                          labelText: 'Address Line 4',
                          binding: model.addressLine4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: Insets.gutter),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EmrTextFormField(
                          labelText: 'Address Line 5',
                          binding: model.addressLine5,
                        ),
                        EmrTextFormField(
                          labelText: 'Address Line 6',
                          binding: model.addressLine6,
                        ),
                        EmrTextFormField(
                          labelText: 'Post Code',
                          binding: model.postCode,
                        ),
                        EmrTextFormField(
                          labelText: 'Telephone',
                          binding: model.telephone,
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
