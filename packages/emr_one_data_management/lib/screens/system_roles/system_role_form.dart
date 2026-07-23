import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/user_roles/user_system_roles_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/system_roles/cards/system_role_card.dart';
import 'package:emr_one_data_management/screens/system_roles/system_role_form_data.dart';
import 'package:flutter/material.dart';

class SystemRoleForm extends StatefulWidget {
  const SystemRoleForm({
    required this.id,
    super.key,
  });

  final String id;

  @override
  State<SystemRoleForm> createState() => _SystemRoleForm();
}

class _SystemRoleForm extends State<SystemRoleForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final Future<void> _future;
  SystemRoleFormData? _model;

  @override
  void initState() {
    super.initState();
    _future = _loadSystemRole();
  }

  Future<void> _loadSystemRole() async {
    if (widget.id == EmrOneDataManagementConstants.kEmptyGuid) {
      _model = SystemRoleFormData();
      return;
    }

    final response =
        await context.coreApi.userAccess.loadSystemRole(id: widget.id);

    if (response.success) {
      _model = SystemRoleFormData.fromSystemRole(
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
                            child: Text('System Role not found.'),
                          )
                        : EmrTabBarVerticalView(
                            children: [
                              SystemRoleCard(
                                context: context,
                                title: 'System Role',
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

                              final systemRole = _model!.toSystemRole();
                              final result = await context.coreApi.userAccess
                                  .saveSystemRole(
                                systemRole: systemRole,
                              );

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

                              _model = SystemRoleFormData.fromSystemRole(
                                result.data!,
                              );
                              if (_model != null &&
                                  widget.id != _model!.id.value) {
                                context.goNamed(
                                  EmrOneDataManagementConstants
                                      .kRouteSystemRolesForm,
                                  params: {'id': _model!.id.value!},
                                );
                              }
                              await EmrModal.showMessageBar(
                                      context, 'Successfully saved',)
                                  .then(
                                (_) {
                                  if (!context.mounted) {
                                    return;
                                  }

                                  context.goNamed(
                                    EmrOneDataManagementConstants
                                        .kRouteSystemRoles,
                                  );
                                },
                              );
                            },
                            onCancel: () => context.goNamed(
                              EmrOneDataManagementConstants.kRouteSystemRoles,
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
