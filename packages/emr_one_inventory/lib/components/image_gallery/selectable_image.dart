import 'package:flutter/material.dart';

class SelectableImage extends StatefulWidget {
  const SelectableImage({
    required this.child,
    super.key,
    this.onSelectionChanged,
    this.initialState = true,
  });

  final Widget child;
  final ValueChanged<bool>? onSelectionChanged;
  final bool initialState;

  @override
  State<SelectableImage> createState() => _SelectableImageState();
}

class _SelectableImageState extends State<SelectableImage> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.initialState;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: ColoredBox(
        color: isSelected ? Colors.green.withAlpha(80) : Colors.transparent,
        child: Stack(
          children: [
            Positioned.fill(child: widget.child),
            Positioned(
              top: 2,
              right: 2,
              child: Checkbox(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = value!;

                    if (widget.onSelectionChanged != null) {
                      widget.onSelectionChanged!.call(isSelected);
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
