import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/depot.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AssignMultipleEntity<T> extends StatefulWidget {
  const AssignMultipleEntity({
    required this.suggestionsCallback,
    required this.valueSelector,
    this.defaultSelectedItems,
    super.key,
    this.itemBuilder,
    this.onSuggestionSelected,
    this.label,
    this.hint,
    this.validatorCallback,
    this.onItemDeleted,
  });

  final FutureOr<Iterable<T>> Function(String) suggestionsCallback;
  final Widget Function(BuildContext, T)? itemBuilder;
  final void Function(T)? onSuggestionSelected;
  final String? label;
  final String? hint;
  final String? Function(String?)? validatorCallback;
  final String Function(T object) valueSelector;
  final void Function(T)? onItemDeleted;
  final List<T>? defaultSelectedItems;

  @override
  State<AssignMultipleEntity<T>> createState() =>
      _AssignMultipleEntityState<T>();
}

class _AssignMultipleEntityState<T> extends State<AssignMultipleEntity<T>> {
  final _typeAheadController = TextEditingController();
  final List<T> _selectedItems = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    if (widget.defaultSelectedItems?.isNotEmpty ?? false) {
      _selectedItems.addAll(widget.defaultSelectedItems!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TypeAheadFormField<T>(
          suggestionsCallback: widget.suggestionsCallback,
          itemBuilder: (context, T availableOptions) {
            if (widget.itemBuilder == null) {
              final option = widget.valueSelector(availableOptions);
              return ListTile(title: Text(option));
            }
            return widget.itemBuilder!.call(context, availableOptions);
          },
          onSuggestionSelected: (T availableOption) {
            final option = availableOption;
            _typeAheadController.text = '';
            setState(() {
              if (_selectedItems
                  .where(
                    (e) =>
                        widget.valueSelector(e) == widget.valueSelector(option),
                  )
                  .isEmpty) {
                _selectedItems.add(option);

                if (widget.onSuggestionSelected != null) {
                  widget.onSuggestionSelected!.call(option);
                }
              }
            });
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: Center(child: Text(context.l10n.noRecordsMessage)),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _typeAheadController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              hintText: widget.hint,
              labelText: widget.label,
            ),
          ),
          validator: widget.validatorCallback,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Wrap(
            runSpacing: 5,
            spacing: 5,
            children: _selectedItems
                .map(
                  (e) => InputChip(
                    label: Text(widget.valueSelector(e)),
                    pressElevation: 0,
                    deleteIcon: Ink(
                      decoration: ShapeDecoration(
                        color: Theme.of(context).colorScheme.tertiary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: FaIcon(
                          FontAwesomeIcons.xmark,
                          color: Theme.of(context).colorScheme.onTertiary,
                          size: 14,
                        ),
                      ),
                    ),
                    onDeleted: () {
                      setState(() {
                        _selectedItems.remove(e);
                      });
                      if (widget.onItemDeleted != null) {
                        widget.onItemDeleted!.call(e);
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class InformMultipleYardSelection extends AssignMultipleEntity<Yard> {
  InformMultipleYardSelection({
    required this.dataSource,
    required super.valueSelector,
    super.key,
    super.defaultSelectedItems,
    super.onSuggestionSelected,
    super.label,
    super.hint,
    super.validatorCallback,
    super.onItemDeleted,
  }) : super(
          suggestionsCallback: (searchText) {
            return dataSource.isNotEmpty
                ? dataSource
                    .where(
                      (e) =>
                          e.yardCode!
                              .toLowerCase()
                              .contains(searchText.toLowerCase()) ||
                          e.name!
                              .toLowerCase()
                              .contains(searchText.toLowerCase()),
                    )
                    .toList()
                : const Iterable<Yard>.empty();
          },
          itemBuilder: (context, Yard? availableYards) {
            final yard = availableYards!;
            return ListTile(
              title: Text(yard.yardCode ?? ''),
              subtitle: Text(yard.name ?? ''),
            );
          },
        );

  final List<Yard> dataSource;
}

class InformMultipleDepotSelection extends AssignMultipleEntity<Depot> {
  InformMultipleDepotSelection({
    required this.dataSource,
    required super.valueSelector,
    super.key,
    super.defaultSelectedItems,
    super.onSuggestionSelected,
    super.label,
    super.hint,
    super.validatorCallback,
    super.onItemDeleted,
  }) : super(
          suggestionsCallback: (searchText) => dataSource.isNotEmpty
              ? dataSource
                  .where(
                    (e) => e.depotNo!
                        .toLowerCase()
                        .contains(searchText.toLowerCase()),
                  )
                  .toList()
              : const Iterable<Depot>.empty(),
          itemBuilder: (context, Depot? availableYards) {
            final depot = availableYards!;
            return ListTile(
              title: Text(depot.depotNo ?? ''),
              subtitle: Text(depot.name ?? ''),
            );
          },
        );

  final List<Depot> dataSource;
}

class InformMultipleFreeTextSelection extends AssignMultipleEntity<String> {
  InformMultipleFreeTextSelection({
    super.key,
    super.defaultSelectedItems,
    super.onSuggestionSelected,
    super.label,
    super.hint,
    super.validatorCallback,
    super.onItemDeleted,
  }) : super(
          suggestionsCallback: (searchText) => [searchText],
          valueSelector: (text) => text,
        );
}

class InformMultipleTextSelection extends AssignMultipleEntity<String> {
  InformMultipleTextSelection({
    required this.dataSource,
    super.key,
    super.defaultSelectedItems,
    super.onSuggestionSelected,
    super.label,
    super.hint,
    super.validatorCallback,
    super.onItemDeleted,
  }) : super(
          suggestionsCallback: (searchText) => dataSource
              .where((e) => e.toLowerCase().contains(searchText.toLowerCase()))
              .toList(),
          valueSelector: (text) => text,
        );

  final List<String> dataSource;
}

class InformMultipleAssetSelection extends AssignMultipleEntity<Asset> {
  InformMultipleAssetSelection({
    required this.dataSource,
    required super.valueSelector,
    super.key,
    super.defaultSelectedItems,
    super.onSuggestionSelected,
    super.label,
    super.hint,
    super.validatorCallback,
    super.onItemDeleted,
  }) : super(
          suggestionsCallback: (searchText) => dataSource.isNotEmpty
              ? dataSource
                  .where(
                    (e) => e.assetCode
                        .toLowerCase()
                        .contains(searchText.toLowerCase()),
                  )
                  .toList()
              : const Iterable<Asset>.empty(),
          itemBuilder: (context, Asset? availableAssets) {
            final asset = availableAssets!;
            return ListTile(
              title: Text(asset.assetCode),
              subtitle: Text(asset.name ?? ''),
            );
          },
        );

  final List<Asset> dataSource;
}

class InformMultipleUserSelection extends AssignMultipleEntity<User> {
  InformMultipleUserSelection({
    required this.dataSource,
    required super.valueSelector,
    super.key,
    super.defaultSelectedItems,
    super.onSuggestionSelected,
    super.label,
    super.hint,
    super.validatorCallback,
    super.onItemDeleted,
  }) : super(
          suggestionsCallback: (searchText) => dataSource.isNotEmpty
              ? dataSource
                  .where(
                    (e) => e.displayName
                        .toLowerCase()
                        .contains(searchText.toLowerCase()),
                  )
                  .toList()
              : const Iterable<User>.empty(),
          itemBuilder: (context, User? availableUsers) {
            final user = availableUsers!;
            return ListTile(title: Text(user.displayName));
          },
        );

  final List<User> dataSource;
}
