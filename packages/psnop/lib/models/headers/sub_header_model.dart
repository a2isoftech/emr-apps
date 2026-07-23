import 'package:psnop/models/headers/sub_header_titles.dart';
import 'package:psnop/models/headers/sub_header_tooltips.dart';

class SubHeaderModel {
  SubHeaderModel({
    required this.id,
    required this.parentHeaderId,
    required this.subHeaderTitles,
    this.title,
    this.tooltip,
    this.subHeaderToolTips,
  });

  int id;
  String? title;
  String? tooltip;
  int parentHeaderId;
  SubHeaderTitles subHeaderTitles;
  SubHeaderToolTips? subHeaderToolTips;
}
