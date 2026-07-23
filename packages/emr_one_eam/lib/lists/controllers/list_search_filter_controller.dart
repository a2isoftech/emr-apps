import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/lists/services/list_service.dart';
import 'package:emr_one_eam/models/list_search_result.dart';
import 'package:flutter/material.dart';

class ListSearchFilterController extends EmrFilterController {
  ListSearchFilterController({required this.service})
      : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kListName:
                return EmrFilterAutoComplete<ListSearchResult, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final lists = await service.getLists(
                      first: 50,
                      where: pattern.isEmpty
                          ? null
                          : Input$AssetManagementListSearchResultFilterInput(
                              listName: Input$StringOperationFilterInput(
                                contains: pattern,
                              ),
                            ),
                    );
                    return lists.results;
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.listName ?? '',
                  getValue: (p0) => p0.listName ?? '',
                  multi: true,
                );
            }
            throw Exception(
              'filterContentBuild should return a widget for ${filter.key}',
            );
          },
        );

  final IListService service;
  static const kListName = 'ListName';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kListName))
        EmrFilterModel<List<String>>(key: kListName, name: 'List Name'),
    ];
  }
}
