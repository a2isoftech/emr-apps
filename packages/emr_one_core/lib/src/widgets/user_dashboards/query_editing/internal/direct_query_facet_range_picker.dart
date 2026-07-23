import 'package:emr_one_core/models/user_dashboards/internal/direct_query_facet_result_value.dart';
import 'package:emr_one_core/models/user_dashboards/internal/direct_query_result.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class DirectQueryFacetRangePicker extends StatefulWidget {
  const DirectQueryFacetRangePicker({
    required this.item,
    required this.directQueryService,
    required this.binding,
    super.key,
  });

  final DirectQueryInstance item;
  final DirectQueryService directQueryService;
  final ValueNotifier<String> binding;

  @override
  State<DirectQueryFacetRangePicker> createState() =>
      _DirectQueryFacetRangePickerState();
}

class _DirectQueryFacetRangePickerState
    extends State<DirectQueryFacetRangePicker> {
  late Future<DirectQueryResult> getDataFuture;

  List<DirectQueryFacetResultValue> facetRangeValues = [];

  @override
  void initState() {
    super.initState();

    getDataFuture = widget.directQueryService.executeDirectQuery(
      widget.item.queryDefinitionId,
      widget.item.parameterValues.value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DirectQueryResult>(
      future: getDataFuture,
      builder: (context, snapshot) {
        if (mounted && snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          );
        }

        facetRangeValues = snapshot.data!.results[0].values;

        return SizedBox(
          width: 300,
          child: RadioGroup(
            groupValue: widget.binding.value,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  widget.binding.value = value;
                });
              }
            },
            child: ListView.builder(
              itemBuilder: (context, index) {
                final range = facetRangeValues[index];
                return RadioListTile<String>(
                  title: Text(range.range),
                  value: range.range,
                );
              },
              itemCount: facetRangeValues.length,
              shrinkWrap: true,
            ),
          ),
        );
      },
    );
  }
}
