import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/user_roles/user_job_roles_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/job_roles/cards/job_role_card.dart';
import 'package:emr_one_data_management/screens/job_roles/job_role_form_data.dart';
import 'package:flutter/material.dart';

class JobRoleForm extends StatefulWidget {
  const JobRoleForm({
    required this.id,
    super.key,
  });
  final String id;

  @override
  State<JobRoleForm> createState() => _JobRoleForm();
}

class _JobRoleForm extends State<JobRoleForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final Future<void> _future;
  JobRoleFormData? _model;

  @override
  void initState() {
    super.initState();
    _future = _loadJobRole();
  }

  Future<void> _loadJobRole() async {
    if (widget.id == EmrOneDataManagementConstants.kEmptyGuid) {
      _model = JobRoleFormData();
      return;
    }
    final response =
        await context.coreApi.userAccess.loadJobRole(id: widget.id);
    if (response.success) {
      _model = JobRoleFormData.fromJobRole(
        response.data!,
      );
    }
  }

  @override
  Widget build(BuildContext _) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: (snapshot.connectionState != ConnectionState.done)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : (_model == null)
                        ? const Center(
                            child: Text('Job Role not found.'),
                          )
                        : EmrTabBarVerticalView(
                            children: [
                              JobRoleCard(
                                context: context,
                                title: 'Job Role',
                                model: _model!,
                              ),
                            ],
                            onSave: () async {
                              if (_formKey.currentState?.validate() == false) {
                                await EmrModal.showMessageBar(
                                  context,
                                  'Please correct the validation error(s).',
                                  messageType: MessageBarTypes.error,
                                );
                                return;
                              }

                              final jobRole = _model!.toJobRole();
                              final result = await context.coreApi.userAccess
                                  .saveJobRole(jobRole: jobRole);

                              if (!context.mounted) {
                                return;
                              }

                              if (result.success == false) {
                                await EmrModal.showMessageBar(
                                  context,
                                  result.message,
                                  messageType: MessageBarTypes.error,
                                );
                                return;
                              }

                              _model = JobRoleFormData.fromJobRole(
                                result.data!,
                              );

                              if (_model != null &&
                                  widget.id != _model!.id.value) {
                                context.goNamed(
                                  EmrOneDataManagementConstants
                                      .kRouteJobRolesForm,
                                  params: {'id': _model!.id.value!},
                                );
                              }

                              await EmrModal.showMessageBar(
                                context,
                                'Successfully saved',
                              ).then(
                                (_) {
                                  if (!context.mounted) {
                                    return;
                                  }

                                  context.goNamed(
                                    EmrOneDataManagementConstants
                                        .kRouteJobRoles,
                                  );
                                },
                              );
                            },
                            onCancel: () => context.goNamed(
                              EmrOneDataManagementConstants.kRouteJobRoles,
                            ),
                          ),
              ),
            ],
          ),
        );
      },
    );
  }
}
