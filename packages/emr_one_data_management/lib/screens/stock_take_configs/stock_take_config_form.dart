import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/stock_take_configs/stock_take_config_form_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class StockTakeConfigForm extends StatefulWidget {
  const StockTakeConfigForm({required this.yardCode, super.key});

  final String yardCode;

  @override
  State<StockTakeConfigForm> createState() => _StockTakeConfigFormState();
}

class _StockTakeConfigFormState extends State<StockTakeConfigForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  StockTakeConfig? stockTakeConfig;
  late final Future<void> _future;
  late StockTakeConfigFormData? _model;
  bool isCreate = false;

  @override
  void initState() {
    super.initState();

    isCreate = widget.yardCode == EmrOneDataManagementConstants.kRouteEdit;
    _future = _loadStockTakeConfig();
  }

  Future<void> _loadStockTakeConfig() async {
    if (isCreate) {
      _model = StockTakeConfigFormData();
      return;
    }

    final stockTakeConfig = await context.coreApi.referenceData
        .getStockTakeConfiguration(widget.yardCode);

    _model = StockTakeConfigFormData(
      yardCode: stockTakeConfig?.yardCode,
      isDeltaSnapshotEnabled: stockTakeConfig?.isDeltaSnapshotEnabled,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              ? const Center(child: CircularProgressIndicator())
              : EmrTabBarVerticalView(
                  children: [
                    EmrTabBarVerticalViewCard(
                      title: context.l10n.config,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          EmrPickerFormField<String>(
                            labelText: context.l10n.yard,
                            items: (query) async {
                              final yards = await context.coreApi.referenceData
                                  .yards(query);
                              final userYardCodes =
                                  UserInfoService.instance?.userInfo.yards
                                      .map((e) => e.yardCode)
                                      .toSet()
                                      .toList() ??
                                  [];

                              return yards
                                  .map((x) => x.yardCode)
                                  .where(userYardCodes.contains)
                                  .toList();
                            },
                            itemTitleText: (item) => item,
                            binding: _model!.yardCode,
                            enabled: ValueNotifier(isCreate),
                            validator: Validators.required,
                          ),
                          EmrSwitchFormField(
                            labelText: context.l10n.enableDeltaSnapshot,
                            binding: _model!.isDeltaSnapshotEnabled,
                          ),
                        ],
                      ),
                    ),
                  ],
                  onSave: () async {
                    if (_formKey.currentState?.validate() == false) {
                      return;
                    }

                    final result = await context.coreApi.referenceData
                        .saveStockTakeConfiguration(
                          _model!.yardCode.value!,
                          isDeltaSnapshotEnabled:
                              _model?.isDeltaSnapshotEnabled.value ?? false,
                        );

                    if (result?.success == false) {
                      if (!context.mounted) return;

                      await EmrModal.showMessageBar(
                        context,
                        result!.message,
                        messageType: MessageBarTypes.error,
                      );

                      return;
                    }
                    if (!context.mounted) return;
                    await EmrModal.showMessageBar(
                      context,
                      context.l10n.successfullySaved,
                    );

                    if (!context.mounted) return;
                    context.pop();
                  },
                  onCancel: () => context.pop(),
                ),
        );
      },
    );
  }
}
