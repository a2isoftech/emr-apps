import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/form_fields/emr_button_group_form_field.dart';
import 'package:emr_one_core/widgets/form_fields/emr_date_form_field.dart';
import 'package:emr_one_core/widgets/form_fields/emr_multi_picker_form_field.dart';
import 'package:emr_one_transport/data/controllers/common/open_jobs_report_controller.dart';
import 'package:emr_one_transport/data/models/common/region.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpenJobsReportWidget extends StatefulWidget {
  const OpenJobsReportWidget({super.key, this.truckInfo});
  final TruckInfo? truckInfo;
  @override
  State<OpenJobsReportWidget> createState() => _OpenJobsReportWidgetState();
}

class _OpenJobsReportWidgetState extends State<OpenJobsReportWidget> {
  @override
  void initState() {
    final controller = context.read<OpenJobsReportController>();
    controller.init(truckInfo: widget.truckInfo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<OpenJobsReportController>(
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

  Widget _build(OpenJobsReportController controller) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          EmrMultiPickerFormField<Haulier>(
            labelText: context.l10n.haulier,
            binding: controller.selectedHauliers,
            itemTitleText: (item) =>
                (item.accountNo ?? '') +
                (item.name != null ? ' - ${item.name}' : ''),
            items: controller.getHaulier,
          ),
          EmrDateFormField(
            labelText: context.l10n.startDate,
            binding: controller.startDate,
          ),
          EmrDateFormField(
            labelText: context.l10n.endDateDisplay,
            binding: controller.endDate,
          ),
          // EmrPickerFormField(
          //   labelText: StringConstants.emailReportTo,
          //   binding: ValueNotifier(''),
          //   itemTitleText: (value) {
          //     return '';
          //   },
          //   items: widget.jobListService.partySearchByAccountOrName,
          // ),
          const SizedBox(height: Insets.gutter / 2),
          EmrButtonGroupFormField(
            binding: controller.selectedRatesToIncludes,
            mode: EmrButtonGroupFormFieldMode.multiple,
            options: controller.availableRates,
          ),
        ],
      ),
    );
  }
}
