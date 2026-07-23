import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/controllers/direct_query_editor_controller.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/internal/direct_query_parameter_edit.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class DirectQueryEditor extends StatefulWidget {
  const DirectQueryEditor({
    required this.directQueryService,
    required this.controller,
    super.key,
  });

  final DirectQueryService directQueryService;
  final DirectQueryEditorController controller;

  @override
  State<DirectQueryEditor> createState() => _DirectQueryEditorState();
}

class _DirectQueryEditorState extends State<DirectQueryEditor> {
  late DirectQueryDefinition model;

  @override
  void initState() {
    super.initState();

    model = widget.controller.queryDefinition!;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Query Name',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                        return 'Query name cannot be empty';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Query Text',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter / 2),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 140,
                    child: EmrTextFormField(
                      binding: model.queryText,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Query text name cannot be empty';
                        }

                        if (widget.controller.queryDefinition?.parameters.value
                                .isNotEmpty ??
                            false) {
                          for (final parameter in widget
                              .controller.queryDefinition!.parameters.value) {
                            if (!value.contains('%${parameter.name.value}%')) {
                              return 'Query text must contain all parameters';
                            }
                          }
                        }

                        return null;
                      },
                      expands: true,
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.top,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Query Type',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            EmrPickerFormField(
              items: (_) => Future.value(DirectQueryKind.values),
              itemTitleText: (item) => item.toString(),
              binding: model.kind,
              mode: EmrPickerMode.dropdown,
            ),
            const SizedBox(height: Insets.gutter / 2),
            const Divider(),
            const SizedBox(height: Insets.gutter / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Parameters',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      model.parameters.value.add(
                        DirectQueryParameterDefinition(
                          name: ValueNotifier<String>(''),
                          type: ValueNotifier<DirectQueryParameterType>(
                            DirectQueryParameterType.string,
                          ),
                        ),
                      );
                    });
                  },
                  child: const Text('Add Parameter'),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text('Name'),
                ),
                Flexible(
                  child: Text('Type'),
                ),
                Flexible(
                  child: Text('Default'),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 300,
                    child: DirectQueryParameterEditor(
                      model: model.parameters,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
