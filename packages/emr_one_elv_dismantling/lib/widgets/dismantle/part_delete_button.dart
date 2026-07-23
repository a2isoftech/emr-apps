import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class PartDeleteButton extends StatefulWidget {
  const PartDeleteButton({
    required this.partName,
    required this.onDeletePressed,
    super.key,
  });

  final String partName;
  final void Function() onDeletePressed;

  @override
  State<PartDeleteButton> createState() => _PartDeleteButtonState();
}

class _PartDeleteButtonState extends State<PartDeleteButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {
        EmrDialog.noYes(
          context,
          titleText: context.l10n.confirmation,
          contentText:
              '${context.l10n.areYouSureYouWantToDelete} ${widget.partName}?',
          onYes: widget.onDeletePressed,
        );
      },
      backgroundColor: Colors.red,
      child: const Icon(Icons.delete),
    );
  }
}
