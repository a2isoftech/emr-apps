import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/screens.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class WeighbridgeGroupsForm extends StatefulWidget {
  const WeighbridgeGroupsForm({
    required this.yardCode,
    required this.userInfoService,
    super.key,
  });

  final String yardCode;
  final UserInfoService userInfoService;

  @override
  State<WeighbridgeGroupsForm> createState() => _WeighbridgeGroupsFormState();
}

class _WeighbridgeGroupsFormState extends State<WeighbridgeGroupsForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  WeighbridgeGroup? group;
  late final Future<void> _future;
  WeighbridgeGroupFormData? _model;

  @override
  void initState() {
    super.initState();
    _future = _loadWeighbridgeGroup();
  }

  bool get _creating =>
      widget.yardCode.endsWith(EmrOneDataManagementConstants.kEmptyGuid);

  Future<void> _loadWeighbridgeGroup() async {
    var existingGroups = <WeighbridgeGroup>[];

    if (_creating) {
      _model = WeighbridgeGroupFormData();
      _model!.yard.addListener(_yardListener);
      return;
    } else {
      final weighbridgeGroupsResponse =
          await context.coreApi.referenceData.searchWeighbridgeGroups(
        first: 1,
        yardCodes: [widget.yardCode],
      );

      if (weighbridgeGroupsResponse.success &&
          weighbridgeGroupsResponse.data != null) {
        existingGroups = weighbridgeGroupsResponse.data!.$1;
      }
    }

    if (existingGroups.isNotEmpty) {
      _model = WeighbridgeGroupFormData.fromWeighbridgeGroup(
        existingGroups.first,
      );
    }
  }

  @override
  void dispose() {
    if (_model != null && _creating) {
      _model!.yardCode.removeListener(_yardListener);
    }
    super.dispose();
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
                  ? Center(
                      child: Text(context.l10n.groupNotFound),
                    )
                  // Form.
                  : EmrTabBarVerticalView(
                      onSave: () async {
                        if (_formKey.currentState?.validate() == false) {
                          await EmrModal.showMessageBar(
                            context,
                            context.l10n.correctTheValidationErrors,
                            messageType: MessageBarTypes.error,
                          );

                          return;
                        }
                        final result = await context.coreApi.referenceData
                            .saveWeighbridgeGroups(
                          _model!.toWeighbridgeGroup(),
                        );

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
                          context.l10n.successfullySaved,
                        ).then(
                          (_) {
                            if (!context.mounted) {
                              return;
                            }

                            context.pop();
                          },
                        );
                      },
                      onCancel: () => context.pop(),
                      children: [
                        WeighbridgeGroupCard(
                          context: context,
                          title: context.l10n.basic,
                          model: _model!,
                          creating: _creating,
                          userInfoService: widget.userInfoService,
                        ),
                      ],
                    ),
        );
      },
    );
  }

  Future<void> _yardListener() async {
    if (_model?.yard.value != null) {
      final weighbridgeGroupsResponse =
          await context.coreApi.referenceData.searchWeighbridgeGroups(
        first: 1,
        yardCodes: [_model!.yard.value!.yardCode],
      );
      if (weighbridgeGroupsResponse.success &&
          weighbridgeGroupsResponse.data != null &&
          weighbridgeGroupsResponse.data!.$1.isNotEmpty) {
        _model!.group.value = weighbridgeGroupsResponse.data!.$1.first.group;
        if (mounted) {
          await EmrModal.showMessageBar(
            context,
            context.l10n.warnWeighbridgeGroupAlreadyExistsForYard,
            messageType: MessageBarTypes.warning,
          );
        }
      }
    }
  }
}
