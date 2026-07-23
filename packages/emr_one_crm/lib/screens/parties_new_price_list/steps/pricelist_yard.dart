import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/flyout.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/pl_yard_multiselect.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/widgets/step_title.dart';
import 'package:emr_one_crm/temp/yard_provider.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

class PLYard extends StatelessWidget {
  const PLYard({required this.controller, super.key});

  final PartiesPriceListWizardController controller;

  @override
  Widget build(BuildContext context) {
    final selectedYardText =
        controller.getSelectedYards().map((e) => e).join(', ');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepTitle(title: context.l10n.yard, isWeb: false),
        TextFormField(
          maxLines: null,
          keyboardType: TextInputType.multiline,
          controller: TextEditingController(
            text: selectedYardText,
          ),
          style: const TextStyle(overflow: TextOverflow.ellipsis),
          mouseCursor: SystemMouseCursors.click,
          onTap: () async {
            await _selectYard(context);
          },
          readOnly: true,
          validator: Validators.required,
        ),
      ],
    );
  }

  Future<Yard?> _selectYard(BuildContext context) async {
    var query = '';
    var yardList = <Yard>[];

    return Flyout.show<Yard>(
      context: context,
      width: MediaQuery.sizeOf(context).width,
      builder: (context) {
        return Material(
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: StatefulBuilder(
                    builder: (context, setState) {
                      YardProvider(controller).getSuggestions(query).then(
                            (value) => setState(() => yardList = value),
                          );
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(Insets.gutter / 2),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(Icons.arrow_back),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    initialValue: query,
                                    onChanged: (value) =>
                                        setState(() => query = value),
                                    decoration: InputDecoration(
                                      hintText: context.l10n.search,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: yardList.length,
                              itemBuilder: (context, index) {
                                return YardMultiSelect(
                                  controller: controller,
                                  yards: yardList,
                                  index: index,
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(context.l10n.save),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
