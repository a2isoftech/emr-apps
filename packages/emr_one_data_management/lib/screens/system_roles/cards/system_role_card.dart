import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/system_roles/system_role_form_data.dart';
import 'package:emr_sharedtypes/models/userRoles/permission.dart';
import 'package:flutter/material.dart';

class SystemRoleCard extends EmrTabBarVerticalViewCard {
  SystemRoleCard({
    required BuildContext context,
    required super.title,
    required SystemRoleFormData model,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmrTextFormField(
                labelText: 'Name',
                binding: model.name,
                validator: Validators.required,
              ),
              EmrTextFormField(
                labelText: 'Description',
                binding: model.description,
                validator: Validators.required,
              ),
              EmrMultiPickerFormField<Permission>(
                labelText: 'Permissions',
                items: context.coreApi.userAccess.permissions,
                itemTitleText: (item) => item.name,
                itemSubtitleText: (item) => item.description,
                binding: model.permissions,
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
