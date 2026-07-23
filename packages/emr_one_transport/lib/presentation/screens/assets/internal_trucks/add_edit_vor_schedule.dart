import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/controllers/trucks/internal_truck_controller.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEditVorSchedule extends StatefulWidget {
  const AddEditVorSchedule({
    required this.internalTruckController,
    this.trucksCount = 1,
    this.vorSchedule,
    super.key,
  });

  final num trucksCount;
  final VORSchedule? vorSchedule;
  final InternalTruckController internalTruckController;

  @override
  State<AddEditVorSchedule> createState() => _AddEditVorScheduleState();
}

class _AddEditVorScheduleState extends State<AddEditVorSchedule> {
  @override
  void initState() {
    super.initState();
    _initialize();
    if (widget.vorSchedule != null) {
      widget.internalTruckController.setInitialFieldValues(widget.vorSchedule);
    } else {
      widget.internalTruckController.resetFields();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.internalTruckController,
      builder: (context, child) {
        return Consumer<InternalTruckController>(
          builder: (context, val, child) => Stack(
            children: [
              Form(
                key: widget.key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EmrPickerFormField<String>(
                      labelText: context.l10n.reasons,
                      items: (_) async => widget
                          .internalTruckController
                          .reasons
                          .value
                          .where((e) => e.code != null)
                          .map((e) => e.code!)
                          .toList(),
                      itemTitleText: (code) => code,
                      binding: widget.internalTruckController.selectedReason,
                      validator: Validators.required,
                    ),
                    const SizedBox(height: Insets.gutter / 2),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: EmrDateFormField(
                            labelText: context.l10n.startDate,
                            binding: widget.internalTruckController.startDate,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: Validators.required,
                          ),
                        ),
                        const SizedBox(width: Insets.gutter),
                        Expanded(
                          child: Localizations.override(
                            context: context,
                            locale: const Locale('de', 'DE'),
                            child: EmrTimeFormField(
                              hintText: '',
                              labelText: context.l10n.startTime,
                              binding: widget.internalTruckController.startDate,
                              validator: Validators.required,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Insets.gutter / 2),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: EmrDateFormField(
                            labelText: context.l10n.endDate,
                            binding: widget.internalTruckController.endDate,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) => Validators.join([
                              Validators.required(value),
                              DateHelper.validateEndDate(
                                widget.internalTruckController.startDate.value,
                                widget.internalTruckController.endDate.value,
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(width: Insets.gutter),
                        //
                        Expanded(
                          child: Localizations.override(
                            context: context,
                            locale: const Locale('de', 'DE'),
                            child: EmrTimeFormField(
                              labelText: context.l10n.endTime,
                              hintText: '',
                              binding: widget.internalTruckController.endDate,
                              validator: (value) => Validators.join([
                                Validators.required(value),
                                DateHelper.validateEndDate(
                                  widget
                                      .internalTruckController
                                      .startDate
                                      .value,
                                  widget.internalTruckController.endDate.value,
                                  compareTime: true,
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Insets.gutter / 2),
                    Expanded(
                      flex: 3,
                      child: EmrTextFormField(
                        labelText: context.l10n.notes,
                        binding: widget.internalTruckController.notes,
                        maxLines: 2,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                    if (widget.trucksCount > 1) _buildTrucksCountMessage(),
                  ],
                ),
              ),
              if (widget.internalTruckController.isLoading)
                const LoadingIndicator(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTrucksCountMessage() {
    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter / 2),
      child: Row(
        children: [
          Text(
            context.l10n.vorSelectionMessage,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.red),
          ),
          Text(
            '${widget.trucksCount} trucks',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _initialize() async {
    await widget.internalTruckController.initialize(null);
  }
}
