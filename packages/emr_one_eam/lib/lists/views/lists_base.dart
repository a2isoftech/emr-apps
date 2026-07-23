import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/graphql/queries/lists_search.graphql.dart';
import 'package:emr_one_eam/lists/controllers/lists_controller.dart';
import 'package:emr_one_eam/lists/list_edit/views/list_edit_view.dart';
import 'package:emr_one_eam/lists/list_search/views/list_search_view.dart';
import 'package:flutter/material.dart';

class ListsBase extends BasePage {
  ListsBase({
    required super.controller,
    required this.queryLayoutController,
    super.key,
  });
  final EmrQueryLayoutController<Query$getLists$lists$nodes>
      queryLayoutController;
  @override
  State<StatefulWidget> createState() => _ListsBase();
}

class _ListsBase extends BasePageState<ListsBase, IListsController> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: controller.isEditVisible,
              builder: (context, value, child) {
                if (value) {
                  return ListEditView(
                    controller: controller,
                  );
                }
                return ListSearchView(
                  queryLayoutController: widget.queryLayoutController,
                  onListSelected: (p0) {
                    controller.setSelectedList(p0);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller.isEditVisible.value = false;
  }
}
