import 'package:flutter/material.dart';
import 'package:psnop/components/depot_position/depot_position_table.dart';
import 'package:psnop/components/depot_position/filter/depot_position_filters_section.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';

class DepotPositionView extends StatelessWidget {
  const DepotPositionView({
    required this.mainHeaders,
    required this.subHeaders,
    required this.refreshDepotPositionTable,
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;
  final Iterable<MainHeaderModel> mainHeaders;
  final Iterable<SubHeaderModel> subHeaders;
  final ValueNotifier<int> refreshDepotPositionTable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DepotPositionFiltersSection(apiHelper: apiHelper),
        ValueListenableBuilder(
          valueListenable: refreshDepotPositionTable,
          builder: (BuildContext context, dynamic value, Widget? child) {
            return DepotPositionTable(
              mainHeaders: mainHeaders,
              subHeaders: subHeaders,
            );
          },
        ),
      ],
    );
  }
}
