import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/form_row.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:flutter/material.dart';

class EditTag extends StatefulWidget {
  const EditTag({
    required this.priceListId,
    required this.productCode,
    required this.tagId,
    required this.controller,
    required this.startDate,
    required this.endDate,
    super.key,
  });

  final GplScreenController controller;
  final String priceListId;
  final String productCode;
  final String tagId;
  final DateTime startDate;
  final DateTime endDate;
  @override
  State<EditTag> createState() => _EditTagState();
}

class _EditTagState extends State<EditTag> {
  final textStyle = const TextStyle(fontWeight: FontWeight.w900);
  final errorMsg = ValueNotifier<String?>(null);
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child:
            Text('${context.l10n.edit} ${context.l10n.tags.substring(0, 3)}'),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.sizeOf(context).width * 0.2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: FormRow(
                children: [
                  TextFormField(
                    readOnly: true,
                    controller: TextEditingController(
                      text: _selectedDate != null
                          ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                          : '',
                    ),
                    decoration: InputDecoration(
                      labelText: context.l10n.endDate,
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.calendar_today),
                        onPressed: () async {
                          final pickedDate = await showDatePicker(
                            context: context,
                            initialDate: _selectedDate ?? DateTime.now(),
                            firstDate: widget.startDate,
                            lastDate: widget.endDate.isAfter(DateTime.now())
                                ? DateTime.now()
                                : widget.endDate,
                          );
                          if (pickedDate != null &&
                              pickedDate != _selectedDate) {
                            setState(() {
                              _selectedDate = pickedDate;
                              widget.controller.adjustTag?.endDate = pickedDate;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ValueListenableBuilder<String?>(
              valueListenable: errorMsg,
              builder: (context, value, child) {
                if (value == null) {
                  return Container();
                } else {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter / 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              value,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: context.pop,
          child: Text(context.l10n.cancel),
        ),
        TextButton(
          child: Text(context.l10n.save),
          onPressed: () async {
            errorMsg.value = await widget.controller.updateTags(
              tagId: widget.tagId,
              priceListId: widget.priceListId,
              endDate: _selectedDate!,
              productCode: widget.productCode,
            );

            if (errorMsg.value == null && context.mounted) {
              context.pop();
            }
          },
        ),
      ],
    );
  }
}
