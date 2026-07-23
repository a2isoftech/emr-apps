import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

enum UpDownSortMode { down, up }

class EmrUpDownSort extends StatefulWidget {
  const EmrUpDownSort({
    required this.onSortChange,
    super.key,
    this.initialSortMode = UpDownSortMode.down,
  });

  final void Function(UpDownSortMode sortMode) onSortChange;
  final UpDownSortMode initialSortMode;

  @override
  State<EmrUpDownSort> createState() => EmrUpDownSortState();
}

class EmrUpDownSortState extends State<EmrUpDownSort> {
  var _sortMode = UpDownSortMode.down;

  @override
  void initState() {
    super.initState();
    _sortMode = widget.initialSortMode;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
      ),
      child: Container(
        constraints: const BoxConstraints.expand(
          width: Insets.gutter * 4,
          height: Insets.gutter * 4,
        ),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _sortMode = _sortMode == UpDownSortMode.down
                  ? UpDownSortMode.up
                  : UpDownSortMode.down;
            });

            widget.onSortChange(_sortMode);
          },
          style: ButtonStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: Transform.rotate(
            angle: _sortMode == UpDownSortMode.down ? 0.0 : pi,
            child: const Icon(
              Icons.filter_list,
              size: Insets.gutter * 2,
            ),
          ),
        ),
      ),
    );
  }
}
