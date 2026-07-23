import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_transport/data/controllers/common/haulier_report_controller.dart';
import 'package:emr_one_transport/data/models/common/account_email.dart';
import 'package:emr_one_transport/data/models/common/region.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/validators/form_validator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HaulierReportWidget extends StatefulWidget {
  const HaulierReportWidget({super.key, this.truckInfo});
  final TruckInfo? truckInfo;
  @override
  State<HaulierReportWidget> createState() => _HaulierReportWidgetState();
}

class _HaulierReportWidgetState extends State<HaulierReportWidget> {
  @override
  void initState() {
    final controller = context.read<HaulierReportController>();
    controller.init(truckInfo: widget.truckInfo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HaulierReportController>(
      builder: (context, ctrl, child) {
        return Stack(
          children: [
            _build(ctrl),
            if (ctrl.isLoading)
              const Positioned.fill(child: Center(child: LoadingIndicator())),
          ],
        );
      },
    );
  }

  Widget _build(HaulierReportController controller) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmrPickerFormField<Haulier>(
            labelText: context.l10n.haulier,
            validator: Validators.required,
            binding: controller.selectedHaulier,
            itemTitleText: (item) {
              return (item.accountNo ?? '') +
                  (item.name != null ? ' - ${item.name}' : '');
            },
            items: controller.getHaulier,
          ),
          ValueListenableBuilder<List<String>>(
            valueListenable: controller.availableTrucksNotifier,
            builder: (context, trucks, child) {
              return BuildColumnWithControl(
                label: context.l10n.selectTruck,
                control: EmrPickerFormField(
                  key: ValueKey(trucks),
                  items: (_) => Future.value(trucks),
                  itemTitleText: (item) => item,
                  binding: controller.selectedTruck,
                ),
                isBoldLabel: true,
              );
            },
          ),
          ValueListenableBuilder<List<Region>>(
            valueListenable: controller.availableRegionsNotifier,
            builder: (context, regions, child) {
              return BuildColumnWithControl(
                label: context.l10n.region,
                control: EmrMultiPickerFormField<Region>(
                  key: ValueKey(controller.selectedRegion),
                  validator: Validators.required,
                  items: (_) =>
                      Future.value(controller.availableRegionsNotifier.value),
                  itemTitleText: (item) => item.name,
                  binding: controller.selectedRegion,
                ),
                isBoldLabel: true,
              );
            },
          ),
          EmrDateFormField(
            labelText: context.l10n.startDate,
            binding: controller.startDate,
          ),
          EmrDateFormField(
            labelText: context.l10n.endDateDisplay,
            binding: controller.endDate,
          ),
          const SizedBox(height: Insets.gutter / 2),
          ValueListenableBuilder<List<AccountEmail>>(
            valueListenable: controller.availableEmailNotifier,
            builder: (context, regions, child) {
              return BuildColumnWithControl(
                label: context.l10n.emailReportTo,
                control: EmrMultiPickerFormField<AccountEmail>(
                  key: ValueKey(controller.selectedEmailsNotifier),
                  items: (_) =>
                      Future.value(controller.availableEmailNotifier.value),
                  itemTitleText: (item) =>
                      '${item.contactName}, ${item.contactType}',
                  itemSubtitleText: (item) => item.email,
                  binding: controller.selectedEmailsNotifier,
                ),
                isBoldLabel: true,
              );
            },
          ),
          EmrTextFormField<String>(
            labelText: context.l10n.additionalEmail,
            hintText: context.l10n.additionalEmailHint,
            binding: controller.additionalEmails,
            validator: FormValidator.validateEmails,
          ),
          EmrButtonGroupFormField<String>(
            binding: controller.selectedRatesToIncludes,
            mode: EmrButtonGroupFormFieldMode.multiple,
            options: controller.availableRates,
          ),
        ],
      ),
    );
  }
}
