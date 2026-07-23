import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@internal
class UomFieldDropdown extends StatefulWidget {
  const UomFieldDropdown({
    required this.uoms,
    required this.onSelected,
    required this.backgroundColour,
    super.key,
  });

  final List<Uom> uoms;
  final void Function(Uom) onSelected;
  final Color backgroundColour;

  @override
  State<UomFieldDropdown> createState() => _UomFieldDropdownState();
}

class _UomFieldDropdownState extends State<UomFieldDropdown> {
  final FocusScopeNode _overlayFocusScope = FocusScopeNode();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _overlayFocusScope.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _overlayFocusScope.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: _overlayFocusScope,
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColour,
          borderRadius: const .vertical(bottom: .circular(6)),
        ),
        padding: const .all(Insets.gutter / 2),
        child: FocusTraversalGroup(
          child: Column(
            mainAxisSize: .min,
            children: widget.uoms.map((uom) {
              return Padding(
                padding: const .symmetric(vertical: Insets.gutter / 4),
                child: _UomOption(uom: uom, onSelected: widget.onSelected),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _UomOption extends StatelessWidget {
  const _UomOption({required this.uom, required this.onSelected});

  final Uom uom;
  final void Function(Uom) onSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: .circular(6),
      child: InkWell(
        onTap: () => onSelected(uom),
        borderRadius: .circular(6),
        hoverColor: Colors.grey.shade300,
        focusColor: Colors.grey.shade400,
        child: SizedBox(
          width: 50,
          child: Padding(
            padding: const .symmetric(vertical: Insets.gutter / 2),
            child: Center(
              child: Text(
                uom.uomCode,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black,
                  fontWeight: .bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
