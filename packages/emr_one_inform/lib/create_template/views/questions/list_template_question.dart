import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/create_template/services/create_template_service.dart';
import 'package:emr_one_inform/create_template/views/questions/template_question.dart';
import 'package:emr_one_inform/widgets/inform_assign_multiple.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:uuid/uuid.dart';

class ListTemplateQuestion extends TemplateQuestion {
  const ListTemplateQuestion({
    required super.component,
    required super.onStateChanged,
    super.key,
  });

  @override
  State<ListTemplateQuestion> createState() =>
      _ListTemplateQuestionTemplateQuestionState();
}

class _ListTemplateQuestionTemplateQuestionState
    extends TemplateQuestionState<ListTemplateQuestion> {
  final _typeAheadController = TextEditingController();
  late ICreateTemplateService _createTemplateService;
  List<FormList> _formList = List.empty(growable: true);
  FormList? _selectedFormList;

  @override
  void initState() {
    super.initState();

    _createTemplateService =
        Provider.of<ICreateTemplateService>(context, listen: false);
    _createTemplateService.getLists().then((value) => _formList = value);
  }

  @override
  Widget build(BuildContext context) => ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xs: 10,
            child: InformMultipleFreeTextSelection(
              key: UniqueKey(),
              defaultSelectedItems: widget
                      .component.dropdownDataProvider?.values
                      ?.map((e) => e.value!)
                      .toList() ??
                  [],
              onItemDeleted: _onItemDeleted,
              onSuggestionSelected: _onItemAdded,
              label: 'Values for list',
              hint: 'Please add a value',
            ),
          ),
          ResponsiveGridCol(
            xs: 2,
            child: IconButton(
              onPressed: () async {
                final result = await showDialog<FormList>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Choose a List'),
                    content: StatefulBuilder(
                      builder: (context, setState) => SizedBox(
                        height: 300,
                        width: 300,
                        child: Column(
                          children: [
                            TypeAheadFormField<FormList>(
                              suggestionsCallback: (searchPattern) =>
                                  _formList.where(
                                (e) =>
                                    e.listName?.toLowerCase().contains(
                                          searchPattern.toLowerCase(),
                                        ) ??
                                    false,
                              ),
                              itemBuilder:
                                  (context, FormList availableOptions) {
                                return ListTile(
                                  title: Text(availableOptions.listName!),
                                );
                              },
                              onSuggestionSelected: (FormList availableOption) {
                                setState(() {
                                  _typeAheadController.text =
                                      availableOption.listName!;
                                  _selectedFormList = availableOption;
                                });
                              },
                              noItemsFoundBuilder: (context) => SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(context.l10n.noRecordsMessage),
                                ),
                              ),
                              textFieldConfiguration: TextFieldConfiguration(
                                controller: _typeAheadController,
                                decoration:
                                    FormStyles.textFieldDecoration(context)
                                        .copyWith(
                                  hintText: 'Search existing list',
                                  labelText: 'Select a existing list',
                                  suffixIcon: _typeAheadController.text.isEmpty
                                      ? null
                                      : IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _typeAheadController.text = '';
                                              _selectedFormList = null;
                                            });
                                          },
                                          icon: const Icon(Icons.clear),
                                        ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              runSpacing: 5,
                              spacing: 5,
                              children:
                                  (_selectedFormList?.listValues?.isNotEmpty ??
                                          false)
                                      ? _selectedFormList!.listValues!
                                          .split(',')
                                          .map(
                                            (e) => InputChip(
                                              label: Text(e),
                                              onPressed: () {},
                                            ),
                                          )
                                          .toList()
                                      : <InputChip>[],
                            ),
                          ],
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => context.pop(),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => context.pop(_selectedFormList),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );

                if (result != null) {
                  _replaceValues(result.listValues?.split(','));
                }
              },
              icon: const Icon(
                Icons.list,
                size: 50,
              ),
            ),
          ),
        ],
      );

  void _onItemDeleted(String value) {
    final itemToDelete = widget.component.dropdownDataProvider?.values
        ?.firstWhereOrNull((e) => e.value == value);
    if (itemToDelete != null) {
      widget.component.dropdownDataProvider?.values?.remove(itemToDelete);
    }
  }

  void _onItemAdded(String value) {
    widget.component.dropdownDataProvider?.values
        ?.add(Values(id: const Uuid().v4(), value: value));
  }

  void _replaceValues(List<String>? values) {
    if (values == null) return;
    setState(() {
      widget.component.dropdownDataProvider = DataProvider(
        id: const Uuid().v4(),
        type: 'Values',
        values:
            values.map((e) => Values(id: const Uuid().v4(), value: e)).toList(),
      );
    });
    widget.onStateChanged();
  }
}
