import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CWGplSelect extends StatelessWidget {
  const CWGplSelect({
    required this.formKey,
    required this.controller,
    required this.required, 
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormHeadingRow(
          key: controller.gplIssueReferenceKey,
          headings: ['${context.l10n.gplIssueReference.toUpperCase()}:'],
          isLeading: true,
        ),
        EmrPicker<Publication<GplGrade>>(
          items: (query) async => PublicationProvider(
            controller,
          ).getSuggestions(query),
          initialValue: controller.selectedPublication?.publicationName,
          itemTitleText: (item) => item.publicationName,
          itemSubtitleText: (item) => item.issueDate != null
              ? DateFormat.yMd(Localizations.localeOf(context).toString())
                  .format(item.issueDate!)
              : '',
          onItemSelected: (item) {
            controller.selectPublication(item);

            controller.model!.gplGrades.clear();
            controller.model!.gplGrades.addAll(
              controller.selectedPublication!.grades,
            );

            controller.initSelectedGrades(
              controller.model!.gplGrades
                  .map((e) => '${e.gradeCode}_${e.brokerReference}')
                  .toList(),
            );
          },
          mode: EmrPickerMode.inline,
          validator: required ? Validators.required : null,
        ),
      ],
    );
  }
}

class PublicationProvider
    extends EmrUtilSuggestionProvider<Publication<GplGrade>> {
  PublicationProvider(this.controller);
  final ContractController controller;

  @override
  Future<List<Publication<GplGrade>>> getSuggestions(String query) {
    final publications = <Publication<GplGrade>>[...controller.publications];
    return Future.value(
      publications.where((element) {
        if (query != '') {
          return element.publicationName.toLowerCase().contains(
                query.toLowerCase(),
              );
        } else {
          return true;
        }
      }).toList(),
    );
  }
}
