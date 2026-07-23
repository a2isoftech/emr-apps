import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/trucks/internal_truck_controller.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/presentation/screens/assets/internal_trucks/vor_schedules.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InternalTruckEditScreen extends StatefulWidget {
  const InternalTruckEditScreen({required this.truckId, super.key});

  final String truckId;

  @override
  State<InternalTruckEditScreen> createState() =>
      _InternalTruckEditScreenState();
}

class _InternalTruckEditScreenState extends State<InternalTruckEditScreen> {
  late InternalTruckController _controller;
  late Future<void> _initializeFuture;

  @override
  void initState() {
    _controller = Provider.of<InternalTruckController>(context, listen: false);
    _initializeFuture = _controller.initialize(widget.truckId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done ||
            _controller.isLoading ||
            _controller.truckDetails.value == null) {
          return const LoadingIndicator();
        } else {
          return ValueListenableBuilder(
            valueListenable: _controller.truckDetails,
            builder: (context, truck, _) {
              if (truck == null) return const LoadingIndicator();
              return Container(
                padding: const EdgeInsets.all(Insets.gutter),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTruckDetailsSection(truck),
                    const SizedBox(height: Insets.gutter),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: Insets.gutter),
                        child: VorSchedules(
                          internalTruckController: _controller,
                          vrm: truck.vrm ?? '',
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }

  Widget _buildTruckDetailsSection(TransportTruck truck) {
    return Consumer<InternalTruckController>(
      builder: (context, val, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${context.l10n.basicDetails} :',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter * 2),
            _buildTruckRow([
              _labelValue(context.l10n.assetCode, truck.assetNumber),
              _labelValue(context.l10n.vrm, truck.vrm),
              _labelValue(context.l10n.friendlyName, truck.friendlyName),
              _labelValue(context.l10n.status, truck.lifecycleStatus),
            ]),
            _buildTruckRow([
              Row(
                children: [
                  if (_controller.isYardChangeInProgress)
                    _showFieldLoader()
                  else
                    _labelValue(context.l10n.dispatchYard, truck.dispatchYard),
                  const SizedBox(width: Insets.gutter / 2),
                  if (context.userHasPermission(
                    UserPermissions.internalTrucksDispatchYardAction,
                  ))
                    FilledButton(
                      onPressed: _showChangeYardDialog,
                      style: EmrButtonStyles.cta(),
                      child: Text(context.l10n.changeYard),
                    ),
                ],
              ),
              _labelValue(context.l10n.costCenter, truck.costCenter),
              _labelValue(context.l10n.haulier, truck.haulierCode),
              _labelValue(context.l10n.condition, truck.condition),
            ]),
            _buildTruckRow([
              _labelValue(context.l10n.serialNumber, truck.serialNumber),
              _labelValue(context.l10n.make, truck.make),
              _labelValue(context.l10n.model, truck.model),
              _labelValue(context.l10n.assetType, truck.truckType),
            ]),
          ],
        );
      },
    );
  }

  Widget _buildTruckRow(List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
      child: Row(children: children.map((c) => Expanded(child: c)).toList()),
    );
  }

  Widget _labelValue(String label, String? value) {
    return Row(
      children: [
        SelectableText('$label :'),
        const SizedBox(width: Insets.gutter / 2),
        SelectableText(
          value ?? '-',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Future<void> _showChangeYardDialog() async {
    final yards = _controller.yards;
    final currentYard = _controller.truckDetails.value?.dispatchYard;

    final selectedYard = ValueNotifier<String?>(currentYard);
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.changeYard,
      builder: (_) => SizedBox(
        height: 100,
        width: 280,
        child: EmrPickerFormField(
          labelText: context.l10n.yard,
          items: (_) => Future.value(yards.map((e) => e.yardCode!).toList()),
          itemTitleText: (item) => item,
          binding: selectedYard,
        ),
      ),
      onAccept: () async {
        if (selectedYard.value != null && selectedYard.value != currentYard) {
          final response = await _controller.updateTruckYard(
            widget.truckId,
            selectedYard.value!,
          );
          if (mounted) {
            if (response.isSuccess) {
              await SuccessAlertWidget.showSuccessMessage(
                context,
                context.l10n.yardSavedSuccessfully,
              );
            } else {
              await ErrorAlertWidget.showErrorMessage(
                context,
                response.errorMessage.isNotEmpty
                    ? response.errorMessage
                    : context.l10n.errorAndTryAgainMsg,
              );
            }
          }
        }
        if (!mounted) return;
        Navigator.of(context).pop();
      },
    );
  }

  Widget _showFieldLoader() {
    return const SizedBox(
      height: 16,
      width: 16,
      child: CircularProgressIndicator(),
    );
  }
}
