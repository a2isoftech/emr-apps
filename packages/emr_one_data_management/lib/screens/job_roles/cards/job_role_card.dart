import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/job_roles/job_role_form_data.dart';
import 'package:emr_one_data_management/screens/system_roles/system_roles_data_source.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';
import 'package:flutter/material.dart';

class JobRoleCard extends EmrTabBarVerticalViewCard {
  JobRoleCard({
    required BuildContext context,
    required super.title,
    required JobRoleFormData model,
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
              EmrMultiPickerFormField<SystemRole>(
                labelText: 'System Roles',
                items: (String query) => SystemRolesDataSource(
                  userAccessService: context.coreApi.userAccess,
                ).searchSystemRoles(query, active: true),
                itemTitleText: (item) => item.name,
                itemSubtitleText: (item) => item.description,
                binding: model.systemRoles,
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
              EmrSwitchFormField(
                labelText: 'Active',
                binding: model.active,
              ),
            ],
          ),
        );
}
