import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_transport/data/controllers/common/yard_report_controller.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/validators/form_validator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/build_column_with_control.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YardReportWidget extends StatefulWidget {
  const YardReportWidget({super.key, this.yard});
  final DispatchYards? yard;
  @override
  State<YardReportWidget> createState() => _YardReportWidgetState();
}

class _YardReportWidgetState extends State<YardReportWidget> {
  @override
  void initState() {
    final controller = context.read<YardReportController>();
    controller.init(widget.yard);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<YardReportController>(
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

  Widget _build(YardReportController controller) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder<List<DispatchYards>>(
            valueListenable: controller.availableYardsNotifier,
            builder: (context, trucks, child) {
              return BuildColumnWithControl(
                label: context.l10n.selectYard,
                control: EmrMultiPickerFormField(
                  key: ValueKey(trucks),
                  validator: Validators.required,
                  items: (_) => Future.value(trucks),
                  itemTitleText: (item) => item.yardCode ?? '',
                  binding: controller.selectedYards,
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
          EmrTextFormField<String>(
            labelText: context.l10n.additionalEmail,
            hintText: context.l10n.additionalEmailHint,
            binding: controller.additionalEmails,
            validator: FormValidator.validateEmails,
          ),
        ],
      ),
    );
  }
}
