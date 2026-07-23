import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/users/cards/cards.dart';
import 'package:emr_one_data_management/screens/users/user_form_data.dart';
import 'package:emr_one_data_management/screens/users/users_data_source.dart';
import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({
    required this.userId,
    super.key,
  });

  final String userId;

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final Future<void> _future;
  late final UsersDataSource _dataSource;
  UserFormData? _model;

  @override
  void initState() {
    super.initState();

    _future = _loadUser();
    _dataSource = UsersDataSource(coreApiService: context.coreApi);
  }

  Future<void> _loadUser() async {
    if (widget.userId.endsWith(EmrOneDataManagementConstants.kEmptyGuid)) {
      _model = UserFormData(active: true);

      return;
    }

    final response =
        await context.coreApi.userAccess.getUser(id: widget.userId);

    if (response.success) {
      _model = UserFormData.fromUser(response.data!);
    }
  }

  @override
  Widget build(BuildContext _) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              // Loading.
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : (_model == null)
                  // User not found.
                  ? const Center(
                      child: Text('User not found.'),
                    )
                  // Form.
                  : EmrTabBarVerticalView(
                      onSave: () async {
                        if (_formKey.currentState?.validate() == false) {
                          await EmrModal.showMessageBar(
                            context,
                            'Please correct the validation error(s).',
                            messageType: MessageBarTypes.error,
                          );

                          return;
                        }

                        final user = _model!.toUser();
                        final result = await context.coreApi.userAccess
                            .saveUser(user: user);

                        if (result.success == false) {
                          if (!context.mounted) {
                            return;
                          }

                          await EmrModal.showMessageBar(
                            context,
                            result.message,
                            messageType: MessageBarTypes.error,
                          );

                          return;
                        }

                        if (!context.mounted) {
                          return;
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
                              EmrOneDataManagementConstants.kRouteUserSearch,
                            );
                          },
                        );
                      },
                      onCancel: () => context.goNamed(
                        EmrOneDataManagementConstants.kRouteUserSearch,
                      ),
                      children: [
                        UserCard(
                          context: context,
                          title: 'Basic User',
                          model: _model!,
                        ),
                        UserRoleCard(
                          context: context,
                          title: 'Job Roles',
                          model: _model!,
                          dataSource: _dataSource,
                        ),
                      ],
                    ),
        );
      },
    );
  }
}
