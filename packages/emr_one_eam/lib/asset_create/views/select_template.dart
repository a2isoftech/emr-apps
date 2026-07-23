import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_controller.dart';
import 'package:emr_one_eam/asset_template/models/asset_template_suggestion.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/widgets/type_ahead_search_generic.dart';
import 'package:flutter/material.dart';

class SelectTemplate extends BasePage {
  SelectTemplate({
    required this.assetController,
    required this.assetTemplateController,
    this.onNextPressed,
    super.key,
  });
  final IAssetTemplateController assetTemplateController;
  final IAssetCreateController assetController;
  final VoidCallback? onNextPressed;

  @override
  State<StatefulWidget> createState() => SelectTemplateState();
}

class SelectTemplateState
    extends BasePageState<SelectTemplate, IAssetTemplateController> {
  @override
  void initState() {
    super.initState();
    widget.assetTemplateController.freeTextController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            context.l10n.selectTemplate,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _addTemplateSearchBar(),
      ],
    );
  }

  Widget _addTemplateSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TypeAheadSearchGeneric<AssetTemplateSuggestion>(
            controller: widget.assetTemplateController.freeTextController,
            onEnterKeyPressed: (text) {
              if (text.isNotEmpty) {
                widget.assetTemplateController.search();
              }
            },
            key: GlobalKey(),
            onCleared: () {
              widget.assetTemplateController.freeTextController.text = '';
              widget.assetTemplateController.search();
            },
            suggestionsCallback: (searchText) async {
              final list = await widget.assetTemplateController
                  .getTemplateSuggestion(searchText);
              return list;
            },
            itemBuilder: (context, option) {
              return ListTile(
                title: Text('${option.name}(${option.codeFormat})'),
              );
            },
            valueSelector: (object) => controller.freeTextController.text,
            onSuggestionSelected: (template) async {
              final selectedTemplate =
                  await controller.getTemplateById(template.id!);
              if (selectedTemplate != null) {
                final result = await widget.assetController
                    .templateSelected(selectedTemplate);

                if (result) {
                  widget.onNextPressed?.call();
                }
              }
            },
            hint: context.l10n.search,
            label: context.l10n.search,
          ),
        ],
      ),
    );
  }
}
