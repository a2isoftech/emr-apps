import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/controllers/controllers.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/direct_query_facet_range_picker.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/user_dashboard_item_parameter_value_edit.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:signals/signals_flutter.dart';

@internal
class DirectQueryInstanceEditor extends StatefulWidget {
  const DirectQueryInstanceEditor({
    required this.directQueryService,
    required this.controller,
    super.key,
  });

  final DirectQueryService directQueryService;
  final DirectQueryInstanceEditorController controller;

  @override
  State<DirectQueryInstanceEditor> createState() =>
      _DirectQueryInstanceEditorState();
}

class _DirectQueryInstanceEditorState extends State<DirectQueryInstanceEditor> {
  late DirectQueryInstance model;
  late Computed<bool> _rangePickerEnabled;

  @override
  void initState() {
    super.initState();

    model = widget.controller.model;

    final signals =
        model.parameterValues.value.map((e) => e.value.toSignal()).toList();

    _rangePickerEnabled = Computed<bool>(() {
      return model.kind.value == DirectQueryKind.singleFacetValue &&
          (model.parameterValues.value.isEmpty ||
              signals.every((element) => element.value != ''));
    });
  }

  @override
  void dispose() {
    _rangePickerEnabled.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Title',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter / 2),
          Row(
            children: [
              Expanded(
                child: EmrTextFormField(
                  binding: model.title,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Query title cannot be empty';
                    }
                    return null;
                  },
                  textAlignVertical: TextAlignVertical.top,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub-title',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter / 2),
          Row(
            children: [
              Expanded(
                child: EmrTextFormField(
                  binding: model.subTitle,
                  textAlignVertical: TextAlignVertical.top,
                ),
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Query Text',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter / 2),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter / 2),
                  child: Text(
                    model.rql,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant
                              .withAlpha(200),
                        ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter / 2),
          const Row(),
          const SizedBox(height: Insets.gutter),
          Visibility(
            visible: model.kind.value == DirectQueryKind.singleFacetValue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Facet Range Id',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: model.kind.value == DirectQueryKind.singleFacetValue,
            child: const SizedBox(height: Insets.gutter / 2),
          ),
          Visibility(
            visible: model.kind.value == DirectQueryKind.singleFacetValue,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: EmrTextFormField(
                    binding: model.facetRangeId,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Facet Range Id name cannot be empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: Insets.gutter),
                Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter / 2),
                  child: OutlinedButton(
                    onPressed: !_rangePickerEnabled.watch(context)
                        ? null
                        : () async {
                            final selectedRangeId = ValueNotifier<String>(
                              model.facetRangeId.value,
                            );
                            await EmrDialog.modal<String>(
                              context,
                              titleText: 'Pick Facet Range',
                              builder: (context) => DirectQueryFacetRangePicker(
                                item: model,
                                binding: selectedRangeId,
                                directQueryService: widget.directQueryService,
                              ),
                              onAccept: () async {
                                model.facetRangeId.value =
                                    selectedRangeId.value;
                                Navigator.of(context)
                                    .pop(selectedRangeId.value);
                              },
                              acceptLabel: context.l10n.ok,
                            );
                          },
                    child: const Text('Pick Range'),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: model.kind.value == DirectQueryKind.singleFacetValue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Facet Label',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: model.kind.value == DirectQueryKind.singleFacetValue,
            child: const SizedBox(height: Insets.gutter / 2),
          ),
          Visibility(
            visible: model.kind.value == DirectQueryKind.singleFacetValue,
            child: Row(
              children: [
                Expanded(
                  child: EmrTextFormField(
                    binding: model.facetLabel,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Facet Label cannot be empty';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: model.parameterValues.value.isNotEmpty,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Parameters',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: model.parameterValues.value.isNotEmpty,
            child: const SizedBox(height: Insets.gutter),
          ),
          Visibility(
            visible: model.parameterValues.value.isNotEmpty,
            child: Row(
              children: [
                Expanded(
                  child: UserDashboardItemParameterValueEdit(
                    model: model.parameterValues,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
