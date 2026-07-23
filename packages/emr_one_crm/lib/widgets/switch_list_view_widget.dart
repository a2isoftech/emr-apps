import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SwitchListViewWidget extends StatefulWidget {
  const SwitchListViewWidget({
    required this.onViewChange,
    super.key,
  });

  final void Function() onViewChange;

  @override
  State<SwitchListViewWidget> createState() => _SwitchListViewState();
}

class _SwitchListViewState extends State<SwitchListViewWidget> {
  bool _isGridView = true;
  void onViewChange() {
    _isGridView = !_isGridView;
    widget.onViewChange();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
      ),
      child: _isGridView
          ? IconButton(
              onPressed: onViewChange,
              icon: const Icon(Icons.view_list),
              iconSize: Insets.gutter * 2,
            )
          : IconButton(
              onPressed: onViewChange,
              icon: const Icon(Icons.view_module),
              iconSize: Insets.gutter * 2,
            ),
    );
  }
}
