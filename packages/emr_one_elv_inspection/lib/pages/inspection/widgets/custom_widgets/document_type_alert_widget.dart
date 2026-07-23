import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';

class DocumentTypeAlertWidget<TItem> extends StatefulWidget {
  const DocumentTypeAlertWidget({
    required this.title,
    required this.header,
    required this.onChanged,
    this.items = const [],
    this.selectedItem,
    super.key,
  });
  final void Function(TItem?) onChanged;
  final String title;
  final String header;
  final TItem? selectedItem;
  final List<DropdownMenuItem<TItem>>? items;

  @override
  State<DocumentTypeAlertWidget<TItem>> createState() =>
      _DocumentTypeAlertWidgetState<TItem>();
}

class _DocumentTypeAlertWidgetState<TItem>
    extends State<DocumentTypeAlertWidget<TItem>> {
  late GlobalKey<FormState> formKey;
  TItem? selected;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: Form(
        key: formKey,
        child: InspectionDropDownButton(
          onChanged: (val) {
            selected = val;
          },
          header: widget.header,
          items: widget.items,
          selectedItem: widget.selectedItem,
          validator: (value) {
            if (value == null) {
              return context.l10n.selectADocumentType;
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(context.l10n.cancel),
        ),
        const SizedBox(
          width: Insets.gutter,
        ),
        TextButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              widget.onChanged.call(selected);
              Navigator.of(context).pop(true);
            }
          },
          child: Text(context.l10n.ok),
        ),
      ],
    );
  }
}
