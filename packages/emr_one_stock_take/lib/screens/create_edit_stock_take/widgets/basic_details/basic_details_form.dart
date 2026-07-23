import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/select_option.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/basic_details/basic_details_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BasicDetailsForm extends StatefulWidget {
  const BasicDetailsForm({required this.controller, super.key});
  final BasicDetailsController controller;

  @override
  State<BasicDetailsForm> createState() => _BasicDetailsFormState();
}

class _BasicDetailsFormState extends State<BasicDetailsForm> {
  @override
  void initState() {
    super.initState();
    widget.controller.settingsController.loadUserSettings().then((_) {
      widget.controller.territoryCode =
          widget.controller.settingsController.territory;
    });
  }

  @override
  Widget build(BuildContext context) {
    final initiator =
        widget.controller.stockTakeId == null || widget.controller.isClone
        ? UserInfoService.instance!.userInfo.name
        : widget.controller.originator;

    return Form(
      key: widget.controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter),
            child: Text('${context.l10n.initiatedBy}: $initiator'),
          ),
          EmrPickerFormField<SelectOption>(
            items: (_) => widget.controller.loadYards(),
            labelText: context.l10n.yard,
            itemTitleText: (item) => item.key,
            itemSubtitleText: (item) => item.name,
            binding: widget.controller.selectedYard,
            validator: Validators.required,
            readOnly: ValueNotifier(true),
            mode: kIsWeb ? EmrPickerMode.inline : EmrPickerMode.search,
          ),
          EmrPickerFormField<SelectOption>(
            items: (value) => widget.controller.loadProductFamilies(value),
            labelText: context.l10n.productFamily,
            itemTitleText: (item) => item.key,
            binding: widget.controller.selectedProductFamily,
            mode: kIsWeb ? EmrPickerMode.inline : EmrPickerMode.search,
            readOnly: ValueNotifier(widget.controller.stockTakeId != null),
            validator: Validators.required,
          ),
          EmrTextFormField(
            binding: widget.controller.nameInputValue,
            labelText: context.l10n.stockTakeDescription,
            validator: (value) => Validators.join([
              Validators.length(value, max: 50),
              Validators.required(value),
            ]),
          ),
          EmrPickerFormField<SelectOption>(
            items: (query) async {
              return widget.controller.loadUsers(
                query,
                widget.controller.settingsController.territory,
              );
            },
            labelText: context.l10n.conductedBy,
            itemTitleText: (item) => item.name,
            itemSubtitleText: (item) => item.subTitle ?? '',
            binding: widget.controller.selectedUser,
            validator: Validators.required,
            mode: kIsWeb ? EmrPickerMode.inline : EmrPickerMode.search,
          ),
          EmrSwitchFormField(
            labelText: context.l10n.stockTakeRoutineCheck,
            binding: widget.controller.routineCheck,
          ),
          if (!kIsWeb) const SizedBox(height: 50),
        ],
      ),
    );
  }
}
