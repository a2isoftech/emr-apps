import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/components/table/table_utils.dart';
import 'package:psnop/enums/info_text_type.dart';
import 'package:psnop/models/depot_position_table/sales_grade_model.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/networking/uri_utils.dart';
import 'package:psnop/providers/depot_position_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class SalesGradeRowComponent extends StatelessWidget {
  SalesGradeRowComponent({
    required this.salesGrade,
    required this.subHeaders,
    required this.headers,
    super.key,
  });

  final SalesGradeModel salesGrade;
  final Iterable<SubHeaderModel> subHeaders;
  final Iterable<MainHeaderModel> headers;

  final ValueNotifier<bool> expanded = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context);
    final depotPositionController = Provider.of<DepotPositionController>(
      context,
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return _getSalesGradeRow(
          appConfig,
          constraints,
          context,
          salesGrade,
          controller: depotPositionController,
        );
      },
    );
  }

  Container _getSalesGradeRow(
    AppConfig appConfig,
    BoxConstraints constraints,
    BuildContext context,
    SalesGradeModel salesGrade, {
    required DepotPositionController controller,
  }) {
    final width = constraints.maxWidth / subHeaders.length;

    return Container(
      height: TableConstraints.rowHeight,
      decoration: Theme.of(context)
          .extension<EOBrandTheme>()!
          .psnopSalesGradeBoxContainerDecoration,
      child: Row(
        children: [
          CellWidget(
            column: 1,
            containerIfZero: true,
            context: context,
            flex: 2,
            headers: headers,
            message: salesGrade.salesGrade,
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width * 2,
            infoText: true,
            infoTextType: InfoTextType.salesGradeTotal,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            flex: 5,
            headers: headers,
            message: '',
            width: width * 5,
          ),
          CellWidget(
            column: 3,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: '',
            width: width,
          ),
          CellWidget(
            column: 4,
            containerIfZero: true,
            context: context,
            flex: 3,
            headers: headers,
            message: '',
            width: width * 3,
          ),
          CellWidget(
            column: 5,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: '',
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: salesGrade.directSalesTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (salesGrade.directSalesTotalWeight <= 0) {
                return;
              }
              final now = DateTime.now();
              launchUrl(
                UriUtils.yardManagementAllocationsLink(
                  appConfig,
                  depot: salesGrade.depotNo,
                  endDate: TableUtils.endDate(
                    date: now,
                    weeks: controller.weeks,
                  ),
                  startDate: TableUtils.startDate(
                    date: now,
                  ),
                  salesGrade: salesGrade.salesGrade,
                ),
                webOnlyWindowName: '_blank',
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            flex: 4,
            headers: headers,
            message: '',
            width: width * 4,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            flex: 5,
            headers: headers,
            message: '',
            width: width * 5,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            flex: 4,
            headers: headers,
            message: '',
            width: width * 4,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: salesGrade.directSalesTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (salesGrade.directSalesTotalWeight <= 0) {
                return;
              }
              final now = DateTime.now();
              launchUrl(
                UriUtils.yardManagementAllocationsLink(
                  appConfig,
                  depot: salesGrade.depotNo,
                  endDate: TableUtils.endDate(
                    date: now,
                    weeks: controller.weeks,
                  ),
                  salesGrade: salesGrade.salesGrade,
                  startDate: TableUtils.startDate(
                    date: now,
                  ),
                ),
                webOnlyWindowName: '_blank',
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            flex: 4,
            headers: headers,
            message: '',
            width: width * 4,
          ),
          CellWidget(
            column: 10,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: '',
            width: width,
          ),
        ],
      ),
    );
  }
}
