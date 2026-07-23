import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:flutter/material.dart';

class TagNameSelect extends StatefulWidget {
  const TagNameSelect({
    required this.labelText,
    required this.controller,
    super.key,
  });

  final String labelText;
  final GplScreenController controller;
  @override
  State<TagNameSelect> createState() => _TagNameSelectState();
}

class _TagNameSelectState extends State<TagNameSelect> {
  String? selectedValue;
  late Future<List<String>> _futureTags;
  @override
  void initState() {
    super.initState();
    _futureTags = widget.controller.getTagNames();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: _futureTags,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: Insets.gutter * 2,
                  height: Insets.gutter * 2,
                  child: CircularProgressIndicator(),
                ),
                const SizedBox(height: Insets.gutter),
                Text(context.l10n.loading),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${context.l10n.error}: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text(context.l10n.noResults);
        }
        final dropdownItems =
            snapshot.data!.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList();
        return DropdownButtonFormField<String>(
          decoration: InputDecoration(
            label: Text(widget.labelText),
          ),
          initialValue: widget.controller.adjustTag?.tagName != ''
              ? widget.controller.adjustTag?.tagName
              : selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
              widget.controller.adjustTag?.tagName = newValue!;
            });
          },
          items: dropdownItems,
        );
      },
    );
  }
}
