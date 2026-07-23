import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:flutter/material.dart';

class PublicationMultiSelect extends StatefulWidget {
  const PublicationMultiSelect({
    required this.controller,
    required this.index,
    super.key,
  });

  final PartiesPriceListWizardController controller;
  final int index;
  @override
  State<PublicationMultiSelect> createState() => _PublicationMultiSelectState();
}

class _PublicationMultiSelectState extends State<PublicationMultiSelect> {
  @override
  Widget build(BuildContext context) {
    final publication = widget.controller.model!.publications[widget.index];
    return Column(
      children: [
        RadioGroup(
          groupValue: true,
          onChanged: (value) {
            setState(() {
              widget.controller.setPublication(publication);
            });
          },
          child: RadioListTile(
            title: Text(publication.publicationName),
            subtitle: Text('${context.l10n.issueDate}: '
                '${publication.issueDate}'),
            controlAffinity: ListTileControlAffinity.leading,
            value:
                widget.controller.model?.selectedPublication?.publicationName ==
                    publication.publicationName,
          ),
        ),
      ],
    );
  }
}
