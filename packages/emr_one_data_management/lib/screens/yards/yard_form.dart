import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/yards/cards/yard_cards.dart';
import 'package:emr_one_data_management/screens/yards/yard_form_data.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:flutter/material.dart';

class YardForm extends StatefulWidget {
  const YardForm({required this.code, super.key});

  final String code;

  @override
  State<YardForm> createState() => _YardFormState();
}

class _YardFormState extends State<YardForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Yard? yard;
  late final Future<void> _future;
  YardFormData? _model;

  @override
  void initState() {
    super.initState();

    _future = _loadYard();
  }

  Future<void> _loadYard() async {
    if (widget.code.endsWith(EmrOneDataManagementConstants.kEmptyGuid)) {
      _model = YardFormData(
        active: true,
        id: widget.code,
        yardCode: '',
        yardName: '',
        shortName: '',
      );

      return;
    }

    final coreApi = context.coreApi.referenceData;
    final yardID = 'yards/${widget.code.toUpperCase()}';
    final yard = await coreApi.getYardById(id: yardID);
    final yardInfo = yard.data;

    if (yardInfo == null) {
      _model = null;
      return;
    }

    final deviceId = 'devices/${yardInfo.territoryCode}/${yardInfo.yardCode}';

    final devices = await coreApi.fetchDeviceById(deviceId);

    _model = YardFormData.fromYard(yardInfo, devices);
  }

  @override
  Widget build(BuildContext _) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return FocusTraversalGroup(
          policy: OrderedTraversalPolicy(),
          child: Form(
            key: _formKey,
            child: (snapshot.connectionState != ConnectionState.done)
                // Loading.
                ? const Center(child: CircularProgressIndicator())
                : (_model == null)
                // Yard not found.
                ? const Center(child: Text('Yard not found.'))
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
                      final yard = _model!.toYard();
                      final result = await context.coreApi.referenceData
                          .saveYard(yard: yard);

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
                      ).then((_) {
                        if (!context.mounted) {
                          return;
                        }

                        context.goNamed(
                          EmrOneDataManagementConstants.kRouteYardSearch,
                        );
                      });
                    },
                    onCancel: () => context.goNamed(
                      EmrOneDataManagementConstants.kRouteYardSearch,
                    ),
                    children: [
                      BasicYardCard(
                        context: context,
                        title: 'Basic Yard',
                        model: _model!,
                      ),
                      YardAddressCard(
                        context: context,
                        title: 'Address',
                        model: _model!,
                      ),
                      PaymentYardCard(
                        context: context,
                        title: 'Payment Method details',
                        model: _model!,
                      ),
                      AdvancedDetailsYardCard(
                        title: 'Advanced Details',
                        model: _model!,
                      ),
                      DeviceCards(title: 'Devices', devices: _model!.devices),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
