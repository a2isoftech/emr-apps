import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/territories/cards/basic_territory_card.dart';
import 'package:emr_one_data_management/screens/territories/territory_form_data.dart';
import 'package:emr_sharedtypes/models/territory.dart';
import 'package:flutter/material.dart';

class TerritoryForm extends StatefulWidget {
  const TerritoryForm({
    required this.code,
    super.key,
  });

  final String code;

  @override
  State<TerritoryForm> createState() => _TerritoryFormState();
}

class _TerritoryFormState extends State<TerritoryForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Territory? territory;
  late final Future<void> _future;
  TerritoryFormData? _model;

  @override
  void initState() {
    super.initState();

    _future = _loadTerritory();
  }

  Future<void> _loadTerritory() async {
    if (widget.code.endsWith(EmrOneDataManagementConstants.kEmptyGuid)) {
      _model = TerritoryFormData(active: true);

      return;
    }

    final territory = await context.coreApi.referenceData
        .getTerritoryById('territories/${widget.code}');

    _model = TerritoryFormData.fromTerritory(territory);
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
                  // Territory not found.
                  ? const Center(
                      child: Text('Territory not found.'),
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
                        final territory = _model!.toTerritory();
                        final result = await context.coreApi.referenceData
                            .saveTerritory(territory: territory);

                        if (result?.success == false) {
                          if (!context.mounted) {
                            return;
                          }

                          await EmrModal.showMessageBar(
                            context,
                            result!.message,
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
                              EmrOneDataManagementConstants
                                  .kRouteTerritorySearch,
                            );
                          },
                        );
                      },
                      onCancel: () => context.goNamed(
                        EmrOneDataManagementConstants.kRouteTerritorySearch,
                      ),
                      children: [
                        TerritoryCard(
                          context: context,
                          title: 'Basic Territory',
                          model: _model!,
                        ),
                      ],
                    ),
        );
      },
    );
  }
}
