import 'package:cross_file/cross_file.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:emr_one_data_management/screens/example_editable_grid/editable_fruit.dart';
import 'package:emr_one_data_management/screens/example_editable_grid/editable_fruit_data_source.dart';
import 'package:flutter/material.dart';

class ExampleEditableGrid extends StatefulWidget {
  const ExampleEditableGrid({
    super.key,
  });

  @override
  State<ExampleEditableGrid> createState() => _FruitsScreenExampleState();
}

class _FruitsScreenExampleState extends State<ExampleEditableGrid> {
  late final EmrQueryLayoutController<EditableFruit> _controller;

  @override
  void initState() {
    super.initState();

    _controller = EmrQueryLayoutController<EditableFruit>(
      dataSource: EditableFruitDataSource(),
      supportedViewModes: const {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static const _widthTiny = 80.0;
  static const _widthSmall = 180.0;
  static const _widthMedium = 260.0;
  static const _widthLarge = 885.0;

  @override
  Widget build(BuildContext _) {
    return EmrForm(
      key: _formKey,
      mode: EmrFormMode.grid,
      builder: (context) => EmrQueryLayoutHybrid<EditableFruit>(
        controller: _controller,
        pinnedColumnCount: 1,
        columns: [
          EmrGridColumn(
            width: _widthTiny,
            headerBuilder: SizedBox.shrink,
            cellBuilder: (EditableFruit rowItem) => EmrValidationGroupSummary(
              groupId: rowItem.id,
            ),
          ),
          EmrGridColumn(
            width: _widthSmall,
            headerBuilder: () => const EmrGridHeader(text: 'Name'),
            cellBuilder: (EditableFruit rowItem) => EmrTextFormField(
              binding: rowItem.name,
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'Name',
                validators: [
                  Validators.required(value),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthSmall,
            headerBuilder: () => const EmrGridHeader(text: 'Weight'),
            cellBuilder: (EditableFruit rowItem) => EmrUomFormField(
              binding: rowItem.weight,
              validator: (_) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'Weight',
                validators: [
                  _rowValidator(context, rowItem, 'weight'),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthSmall,
            headerBuilder: () => const EmrGridHeader(text: 'Purchase Date'),
            cellBuilder: (EditableFruit rowItem) => EmrDateFormField(
              binding: rowItem.purchaseDate,
              validator: (_) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'Purchase Date',
                validators: [
                  _rowValidator(context, rowItem, 'purchaseDate'),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthSmall,
            headerBuilder: () => const EmrGridHeader(text: 'Purchase Time'),
            cellBuilder: (EditableFruit rowItem) => EmrTimeFormField(
              binding: rowItem.purchaseTime,
              validator: (_) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'Purchase Time',
                validators: [
                  _rowValidator(context, rowItem, 'purchaseTime'),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthLarge,
            headerBuilder: () =>
                const EmrGridHeader(text: 'EmrButtonGroupFormField'),
            cellBuilder: (EditableFruit rowItem) =>
                EmrButtonGroupFormField<String>(
              binding: ValueNotifier<List<String>>([]),
              options: _options,
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'EmrButtonGroupFormField',
                validators: [
                  Validators.required(value),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthMedium,
            headerBuilder: () =>
                const EmrGridHeader(text: 'EmrFilePickerFormField'),
            cellBuilder: (EditableFruit rowItem) => EmrFilePickerFormField(
              binding: ValueNotifier<XFile?>(null),
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'EmrFilePickerFormField',
                validators: [
                  Validators.required(value),
                ],
              ),
              extensions: EmrFilePickerFormFieldFileExtensions.pictures,
            ),
          ),
          EmrGridColumn(
            width: _widthMedium,
            headerBuilder: () =>
                const EmrGridHeader(text: 'EmrPickerFormField (dropdown)'),
            cellBuilder: (EditableFruit rowItem) => EmrPickerFormField(
              mode: EmrPickerMode.dropdown,
              items: _colours,
              itemTitleText: (item) => item,
              binding: ValueNotifier<String?>(null),
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'EmrPickerFormField (dropdown)',
                validators: [
                  Validators.required(value),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthMedium,
            headerBuilder: () =>
                const EmrGridHeader(text: 'EmrPickerFormField (inline)'),
            cellBuilder: (EditableFruit rowItem) => EmrPickerFormField(
              items: _colours,
              itemTitleText: (item) => item,
              binding: ValueNotifier<String?>(null),
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'EmrPickerFormField (inline)',
                validators: [
                  Validators.required(value),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthMedium,
            headerBuilder: () =>
                const EmrGridHeader(text: 'EmrPickerFormField (search)'),
            cellBuilder: (EditableFruit rowItem) => EmrPickerFormField(
              mode: EmrPickerMode.search,
              items: _colours,
              itemTitleText: (item) => item,
              binding: ValueNotifier<String?>(null),
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'EmrPickerFormField (search)',
                validators: [
                  Validators.required(value),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthSmall,
            headerBuilder: () =>
                const EmrGridHeader(text: 'EmrStepperFormField'),
            cellBuilder: (EditableFruit rowItem) => EmrStepperFormField(
              binding: ValueNotifier<int?>(null),
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'EmrStepperFormField',
                validators: [
                  Validators.required(value),
                ],
              ),
            ),
          ),
          EmrGridColumn(
            width: _widthSmall,
            headerBuilder: () =>
                const EmrGridHeader(text: 'EmrSwitchFormField'),
            cellBuilder: (EditableFruit rowItem) => EmrSwitchFormField(
              binding: ValueNotifier<bool>(false),
              validator: (value) => Validators.forValidationGroup(
                context,
                groupId: rowItem.id,
                label: 'EmrSwitchFormField',
                validators: [
                  Validators.required(value),
                ],
              ),
            ),
          ),
        ],
        showSearch: false,
        rowHeight: (rowIndex) => rowIndex < 0 ? 40 : 64,
        actions: {
          SaveActionIntent: SaveAction(
            formKey: _formKey,
            controller: _controller,
            createIntent: (context) => SaveActionIntent(context: context),
          ),
        },
      ),
    );
  }

  String? _rowValidator(
    BuildContext context,
    EditableFruit rowItem,
    String fieldName,
  ) {
    final anyFieldsFilledIn = rowItem.weight.value != null ||
        rowItem.purchaseDate.value != null ||
        rowItem.purchaseTime.value != null;

    if (anyFieldsFilledIn == false) {
      return null;
    }

    // If any of the weight, or purchase date/time fields are filled in then the
    // others need to be.
    switch (fieldName) {
      case 'weight':
        if (rowItem.weight.value == null) {
          return context.l10n.required;
        }
      case 'purchaseDate':
        if (rowItem.purchaseDate.value == null) {
          return context.l10n.required;
        }
      case 'purchaseTime':
        if (rowItem.purchaseTime.value == null) {
          return context.l10n.required;
        }
    }

    return null;
  }

  final _options = ValueNotifier({
    'A': 'Option A',
    'B': 'Option B',
    'C': 'Option C',
    'D': 'Option D',
    'E': 'Option E',
    'F': 'Option F',
  });

  Future<List<String>> _colours(String _) async => [
        'Red',
        'Green',
        'Blue',
      ];
}

class SaveActionIntent extends Intent {
  const SaveActionIntent({required this.context});

  final BuildContext context;
}

class SaveAction extends EmrAction<SaveActionIntent> {
  SaveAction({
    required this.formKey,
    required this.controller,
    required super.createIntent,
    super.label = 'Validate',
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
  });

  final GlobalKey<FormState> formKey;

  final EmrQueryLayoutController<EditableFruit> controller;

  @override
  Future<Object?> invoke(
    covariant SaveActionIntent intent, [
    BuildContext? context,
  ]) async {
    if (context == null) {
      return null;
    }

    debugPrint(
      controller.dataSource.data.value
          .map(
            (e) => 'Fruit: ${e.name.value}, '
                'Weight: ${e.weight.value}, '
                'Purchase Date: ${e.purchaseDate.value}, '
                'Purchase Time: ${e.purchaseTime.value}',
          )
          .join('\n'),
    );

    if (formKey.currentState?.validate() == false) {
      await EmrModal.showMessageBar(
        context,
        'Please correct the validation error(s).',
        messageType: MessageBarTypes.error,
      );

      return null;
    }

    await EmrModal.showMessageBar(context, 'The form is valid.');

    return null;
  }
}
