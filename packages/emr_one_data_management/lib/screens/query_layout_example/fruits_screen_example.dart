import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/fruits_filters_controller.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/fruits_screen_controller.dart';
import 'package:emr_one_data_management/screens/query_layout_example/data_source/fruit_data_source.dart';
import 'package:emr_one_data_management/screens/query_layout_example/models/fruit.dart';
import 'package:emr_one_data_management/screens/query_layout_example/widgets/fruit_card_body.dart';
import 'package:flutter/material.dart';

/// This is an example screen which uses `EmrQueryLayoutHybrid`. The screen
/// isn't self-contained, as it relies on the `QueryLayoutExplorer` to provide
/// some settings which can be changed via the explorer UI.
///
/// But this code is intended to demonstrate how a screen would use the
/// `EmrQueryLayoutHybrid` widget directly to show a list of items.
///
/// Most of the logic is handled by the `FruitsExampleController`, which
/// manages the data source, columns and actions for the query layout.
class FruitsScreenExample extends StatefulWidget {
  const FruitsScreenExample({
    required this.viewModes,
    required this.selectionMode,
    required this.actionsEnabled,
    required this.searchEnabled,
    required this.filtersEnabled,
    super.key,
  });

  /// These properties are controlled by the `QueryLayoutExplorer`
  final Set<EmrQueryLayoutViewMode> viewModes;
  final RowSelectionMode selectionMode;
  final Map<Type, ValueNotifier<bool>> actionsEnabled;
  final bool searchEnabled;
  final bool filtersEnabled;

  @override
  State<FruitsScreenExample> createState() => _FruitsScreenExampleState();
}

class _FruitsScreenExampleState extends State<FruitsScreenExample> {
  late final FruitsScreenController _controller;

  @override
  void initState() {
    super.initState();

    final filterController = FruitsFiltersController();

    /// Create our controller which will internally define all of the
    /// actions and columns as well as the data source.
    _controller = FruitsScreenController(
      actionsEnabled: widget.actionsEnabled,
      supportedViewModes: widget.viewModes,
      viewMode: widget.viewModes.first,
      dataSource: FruitDataSource()..selectionMode = widget.selectionMode,
      filterController: widget.filtersEnabled ? filterController : null,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<Fruit>(
      controller: _controller,
      columns: _controller.columns,
      showSearch: widget.searchEnabled,
      actions: _controller.actions,
      dismissible: true,
      confirmDismiss: (_) async {
        final result = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(context.l10n.confirmation),
            content: const Text(
              'Are you sure you want to delete this item?',
            ),
            actions: [
              TextButton(
                onPressed: () => context.pop(false),
                child: Text(context.l10n.no),
              ),
              TextButton(
                onPressed: () => context.pop(true),
                child: Text(context.l10n.yes),
              ),
            ],
          ),
        );

        return Future.value(result ?? false);
      },
      buildCardTitle: (Fruit fruit) {
        return '${fruit.name} (${fruit.color})';
      },
      buildCardBody: FruitCardBody.new,
    );
  }
}
