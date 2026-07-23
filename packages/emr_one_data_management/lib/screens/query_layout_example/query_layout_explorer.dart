import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/explorer_controller.dart';
import 'package:emr_one_data_management/screens/query_layout_example/fruits_screen_example.dart';
import 'package:emr_one_data_management/screens/query_layout_example/query_layout_explorer_controlpanel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// This is the "Explorer" screen for the Query Layout Fruits Example.
/// It is not meant to demonstrate using the Query Layout directly, for that
/// please refer to the `FruitsScreenExample` widget.
///
/// This screen allows you to toggle various settings for the Query Layout,
/// such as view modes, selection modes, search options, and action visibility.
/// It is designed to help you explore the capabilities of the Query Layout.
class QueryLayoutExplorer extends StatefulWidget with AppBarExtender {
  QueryLayoutExplorer({super.key});

  final ExplorerController explorerController = ExplorerController();

  @override
  List<Widget> getActions(BuildContext context) => [
        Visibility(
          visible: !kIsWeb,
          child: IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () async {
              await Navigator.of(context).push(
                CupertinoSheetRoute<void>(
                  builder: (BuildContext context) =>
                      _SheetScaffold(explorerController),
                ),
              );
            },
          ),
        ),
      ];

  @override
  State<QueryLayoutExplorer> createState() => _QueryLayoutExplorerState();
}

class _QueryLayoutExplorerState extends State<QueryLayoutExplorer> {
  @override
  void initState() {
    super.initState();
    widget.explorerController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    widget.explorerController.removeListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return CupertinoPageScaffold(
        child: FruitsScreenExample(
          key: UniqueKey(),
          viewModes: widget.explorerController.viewModes,
          selectionMode: widget.explorerController.selectionMode,
          searchEnabled: widget.explorerController.searchEnabled,
          filtersEnabled: widget.explorerController.filtersEnabled,
          actionsEnabled: widget.explorerController.actionsEnabled,
        ),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListenableBuilder(
            listenable: widget.explorerController,
            builder: (BuildContext context, Widget? child) {
              return FruitsScreenExample(
                key: UniqueKey(),
                viewModes: widget.explorerController.viewModes,
                selectionMode: widget.explorerController.selectionMode,
                searchEnabled: widget.explorerController.searchEnabled,
                filtersEnabled: widget.explorerController.filtersEnabled,
                actionsEnabled: widget.explorerController.actionsEnabled,
              );
            },
          ),
        ),
        Visibility(
          visible: kIsWeb,
          child: VerticalDivider(
            width: 1,
            color: Theme.of(context).dividerColor,
          ),
        ),
        // Control panel
        Visibility(
          visible: kIsWeb,
          child: Column(
            children: [
              Expanded(
                child: QueryLayoutExplorerControlPanel(
                  controller: widget.explorerController,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SheetScaffold extends StatelessWidget {
  const _SheetScaffold(this.controller);

  final ExplorerController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: Theme.of(context).colorScheme.surfaceDim,
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Control Panel'),
          automaticBackgroundVisibility: false,
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(CupertinoIcons.clear),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: Insets.gutter * 2),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListenableBuilder(
                      listenable: controller,
                      builder: (_, __) => QueryLayoutExplorerControlPanel(
                        controller: controller,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
