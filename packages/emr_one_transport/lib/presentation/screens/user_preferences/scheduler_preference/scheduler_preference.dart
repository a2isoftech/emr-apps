import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/controllers/user_preferences/scheduler_preference_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SchedulerPreferenceScreen extends StatefulWidget {
  const SchedulerPreferenceScreen({super.key});

  @override
  State<SchedulerPreferenceScreen> createState() =>
      _SchedulerPreferenceScreenState();
}

class _SchedulerPreferenceScreenState extends State<SchedulerPreferenceScreen> {
  @override
  void initState() {
    super.initState();
    final controller = Provider.of<SchedulerPreferenceController>(
      context,
      listen: false,
    );
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    final availableLocationCustomizationOption = ValueNotifier({
      LocationTypeEnum.customerLocation: context.l10n.customerLocationAddress,
      LocationTypeEnum.startLocation: context.l10n.startLocationAddress,
      LocationTypeEnum.endLocation: context.l10n.endLocationAddress,
    });
    final availableAddressCustomizationOption = ValueNotifier({
      AddressFormatType.fullAddress: context.l10n.showFullAddress,
      AddressFormatType.postCodeOnly: context.l10n.showOnlyPostcode,
      AddressFormatType.yardCode: context.l10n.showYardCode,
    });
    return Consumer<SchedulerPreferenceController>(
      builder: (context, controller, child) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: Insets.gutter,
                    children: [
                      Text(context.l10n.defaultTruckGrouping),
                      SegmentedButton<SchedulerTruckGroupBy>(
                        segments: [
                          ButtonSegment<SchedulerTruckGroupBy>(
                            value: SchedulerTruckGroupBy.yard,
                            label: Text(context.l10n.yard),
                          ),
                          ButtonSegment<SchedulerTruckGroupBy>(
                            value: SchedulerTruckGroupBy.haulier,
                            label: Text(context.l10n.haulier),
                          ),
                        ],
                        selected: controller.selectedGroupBy,
                        onSelectionChanged:
                            (Set<SchedulerTruckGroupBy> selected) async {
                              setState(() {
                                controller.selectedGroupBy = selected;
                              });
                            },
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                  const Divider(),
                  const SizedBox(height: Insets.gutter),
                  Column(
                    children: [
                      EmrRadioListFormField(
                        validator: Validators.required,
                        labelText: context.l10n.locationCustomizationOption,
                        options: availableLocationCustomizationOption,
                        binding: controller.selectedLocationCustomizationOption,
                      ),
                      const Divider(),
                      EmrRadioListFormField(
                        labelText: context.l10n.addressFormat,
                        options: availableAddressCustomizationOption,
                        binding: controller.selectedAddressCustomizationOption,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(
                        style: EmrButtonStyles.cta(),
                        onPressed: () async {
                          final notificationController = context
                              .read<EmrOneNotificationController>();

                          final response = await controller.save();
                          if (!context.mounted) return;
                          if (response.status == ActionStatus.apiFailure) {
                            notificationController.showNotification(
                              EmrOneErrorNotification(
                                title: context.l10n.error,
                                description: context.l10n.errorAndTryAgainMsg,
                              ),
                            );
                          } else {
                            notificationController.showNotification(
                              EmrOneSuccessNotification(
                                title: context.l10n.success,
                                description:
                                    context.l10n.operationCompletedSuccessfully,
                              ),
                            );
                          }
                        },
                        child: Text(context.l10n.save),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (controller.isloading)
              const Positioned.fill(child: Center(child: LoadingIndicator())),
          ],
        );
      },
    );
  }
}
