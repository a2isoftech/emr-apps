import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/user_roles/user_job_roles_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/users/user_form_data.dart';
import 'package:emr_one_data_management/screens/users/users_data_source.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';
import 'package:flutter/material.dart';

class UserRoleCard extends EmrTabBarVerticalViewCard {
  UserRoleCard({
    required BuildContext context,
    required super.title,
    required UserFormData model,
    required UsersDataSource dataSource,
    super.key,
  }) : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmrMultiPickerFormField<JobRole>(
                labelText: 'Job Roles',
                items: (String query) => dataSource.searchJobRoles(
                  query,
                  context.coreApi.userAccess.searchJobRoles,
                  active: true,
                ),
                itemTitleText: (item) => item.name,
                itemSubtitleText: (item) => item.name,
                binding: model.jobRoles,
                validator: Validators.required,
              ),
            ],
          ),
        );
}
