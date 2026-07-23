import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/explorer_controller.dart';
import 'package:flutter/material.dart';

class QueryLayoutExplorerControlPanel extends StatelessWidget {
  const QueryLayoutExplorerControlPanel({required this.controller, super.key});

  final ExplorerController controller;

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        );

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).colorScheme.surfaceBright,
            Theme.of(context).colorScheme.surfaceDim,
          ],
          stops: const [0.4, 1.0],
        ),
      ),
      child: SizedBox(
        width: 340,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Search options',
                      style: titleTextStyle,
                    ),
                  ],
                ),
                SwitchListTile(
                  title: const Text('Show search'),
                  value: controller.searchEnabled,
                  onChanged: (isChecked) {
                    controller.toggleSearchEnabled();
                  },
                ),
                SwitchListTile(
                  title: const Text('Show filters'),
                  value: controller.filtersEnabled,
                  onChanged: (isChecked) {
                    controller.toggleFiltersEnabled();
                  },
                ),
                const SizedBox(height: Insets.gutter),
                Row(
                  children: [
                    Text(
                      'View Modes',
                      style: titleTextStyle,
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: Insets.gutter),
                  itemCount: EmrQueryLayoutViewMode.values.length,
                  itemBuilder: (context, index) {
                    final mode = EmrQueryLayoutViewMode.values[index];
                    return CheckboxListTile(
                      title: Text(mode.name),
                      value: controller.viewModes.contains(mode),
                      onChanged: controller.viewModes.length == 1 &&
                              controller.viewModes.contains(mode)
                          ? null
                          : (isChecked) {
                              controller.toggleViewMode(mode);
                            },
                    );
                  },
                ),
                const SizedBox(height: Insets.gutter),
                Row(
                  children: [
                    Text(
                      'Selection Mode',
                      style: titleTextStyle,
                    ),
                  ],
                ),
                // Radio list
                RadioGroup(
                  groupValue: controller.selectionMode,
                  onChanged: (value) {
                    if (value != null) {
                      controller.toggleSelectionMode(value);
                    }
                  },
                  child: Column(
                    children: RowSelectionMode.values.map((mode) {
                      return RadioListTile<RowSelectionMode>(
                        title: Text(mode.name),
                        value: mode,
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: Insets.gutter),
                Row(
                  children: [
                    Text(
                      'Actions',
                      style: titleTextStyle,
                    ),
                  ],
                ),

                /// Section to enable/disable actions
                const SizedBox(height: Insets.gutter),
                Column(
                  children: [
                    ...controller.actionsEnabled.entries.map(
                      (entry) {
                        final actionType = entry.key;
                        final notifier = entry.value;
                        return ValueListenableBuilder<bool>(
                          valueListenable: notifier,
                          builder: (context, isEnabled, child) {
                            return SwitchListTile(
                              dense: true,
                              title: Text(
                                controller.actionLabels[actionType]!,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              value: isEnabled,
                              onChanged: (value) {
                                controller.actionsEnabled[actionType]!.value =
                                    value;
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
