import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/pl_publication_multiselect.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/step_title.dart';
import 'package:flutter/material.dart';

class PLPublication extends StatelessWidget {
  const PLPublication({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  Widget build(BuildContext context) {
    final myController = controller;
    final publications = myController.model!.publications;

    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StepTitle(
            title: context.l10n.publicationName,
            isWeb: false,
          ),
          const SizedBox(
            height: Insets.gutter / 2,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: publications.length,
            itemBuilder: (context, index) {
              return PublicationMultiSelect(
                controller: myController,
                index: index,
              );
            },
          ),
        ],
      ),
    );
  }
}
