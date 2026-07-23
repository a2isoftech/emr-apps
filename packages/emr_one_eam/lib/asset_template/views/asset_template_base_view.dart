import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_eam/asset_template/controllers/asset_template_controller.dart';
import 'package:emr_one_eam/asset_template/views/asset_template_search_view.dart';
import 'package:emr_one_eam/asset_template/views/asset_template_view.dart';
import 'package:emr_one_eam/graphql/queries/asset_template.graphql.dart';
import 'package:flutter/material.dart';

class AssetTemplateBaseView extends StatefulWidget {
  const AssetTemplateBaseView({
    required this.queryLayoutController,
    required this.controller,
    super.key,
  });

  final EmrQueryLayoutController<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes>
      queryLayoutController;
  final IAssetTemplateController controller;

  @override
  State<AssetTemplateBaseView> createState() => _AssetTemplateBaseViewState();
}

class _AssetTemplateBaseViewState extends State<AssetTemplateBaseView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.selectedAssetTemplate,
              builder: (context, value, child) {
                if (value != null) {
                  return AssetTemplateView(
                    controller: widget.controller,
                  );
                }
                return AssetTemplateSearchView(
                  queryLayoutController: widget.queryLayoutController,
                  onAssetTemplateSelected: (p0) {
                    widget.controller.setSelectedTemplate(p0);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
