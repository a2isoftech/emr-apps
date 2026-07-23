import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/users/user_form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

extension UserFormDataExtension on UserFormData {
  ValueNotifier<bool> get isExistingUserNotifier {
    return ValueNotifier(id.value != null);
  }
}

class UserCard extends EmrTabBarVerticalViewCard {
  UserCard({
    required BuildContext context,
    required super.title,
    required UserFormData model,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmrTextFormField(
                labelText: 'First Name',
                binding: model.firstName,
                validator: Validators.required,
                readOnly: model.isExistingUserNotifier,
              ),
              EmrTextFormField(
                labelText: 'Last Name',
                binding: model.lastName,
                validator: Validators.required,
                readOnly: model.isExistingUserNotifier,
              ),
              EmrTextFormField(
                labelText: 'Email Address',
                binding: model.emailAddress,
                validator: (value) => Validators.join([
                  Validators.required(value),
                  Validators.email(value),
                ]),
                readOnly: model.isExistingUserNotifier,
              ),
              EmrTextFormField(
                labelText: 'Employee Number',
                binding: model.employeeNumber,
                validator: model.isExistingUserNotifier.value
                    ? null
                    : Validators.required,
                readOnly: model.isExistingUserNotifier,
              ),
              EmrTextFormField(
                labelText: 'Job title',
                binding: model.jobTitle,
                validator: model.isExistingUserNotifier.value
                    ? null
                    : Validators.required,
                readOnly: model.isExistingUserNotifier,
              ),
              EmrMultiPickerFormField<Territory>(
                labelText: 'Available Territories',
                items: context.coreApi.referenceData.territories,
                itemTitleText: (item) => item.name,
                itemSubtitleText: (item) => item.code,
                binding: model.territories,
                validator: Validators.required,
              ),
              EmrPickerFormField(
                labelText: 'Default Yard',
                items: (query) => context.coreApi.referenceData.yards(
                  query,
                  territories: model.territories.value,
                ),
                itemTitleText: (item) => item.name,
                itemSubtitleText: (item) => item.yardCode,
                binding: model.defaultYard,
                validator: Validators.required,
              ),
            ],
          ),
        );
}
