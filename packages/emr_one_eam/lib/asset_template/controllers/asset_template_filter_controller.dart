import 'package:emr_one_core/widgets/filter/emr_filter_auto_complete.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_controller.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_model.dart';
import 'package:emr_one_eam/asset_template/services/asset_template_service.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:flutter/material.dart';

class AssetTemplateFilterController extends EmrFilterController {
  AssetTemplateFilterController({required this.service})
      : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kTemplateName:
                return EmrFilterAutoComplete<AssetTemplate, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final lists = await service.getAssetTemplates(
                      first: 50,
                      where: pattern.isEmpty
                          ? null
                          : Input$AssetTemplateFilterInput(
                              or: [
                                Input$AssetTemplateFilterInput(
                                  name: Input$StringOperationFilterInput(
                                    contains: pattern,
                                  ),
                                ),
                                Input$AssetTemplateFilterInput(
                                  codeFormat: Input$StringOperationFilterInput(
                                    contains: pattern,
                                  ),
                                ),
                              ],
                            ),
                    );
                    return lists.results;
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.name ?? '',
                  getValue: (p0) => p0.name ?? '',
                  multi: true,
                );
            }

            throw Exception(
              'filterContentBuild should return a widget for ${filter.key}',
            );
          },
        );
  static const kTemplateName = 'TemplateName';
  final IAssetTemplateService service;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kTemplateName))
        EmrFilterModel<List<String>>(key: kTemplateName, name: 'Template Name'),
    ];
  }
}
