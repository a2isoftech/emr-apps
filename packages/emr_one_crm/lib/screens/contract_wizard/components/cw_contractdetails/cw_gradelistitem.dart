import 'package:emr_one_crm/models/gpl_grade.dart';

class CWGradeListItem {
  CWGradeListItem({
    this.isGroupHeader = false,
    this.groupTitle = '',
    this.grade,
  });

  final bool isGroupHeader;
  final String groupTitle;
  final GplGrade? grade;
}
