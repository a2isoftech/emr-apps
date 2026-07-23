import 'package:collection/collection.dart';
import 'package:emr_one_crm/models/grade_line.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';

class GradesListProvider with ChangeNotifier {
  GradesListProvider(List<ContractLine> grades, {bool isGpl = false}) {
    loadGrades(grades, isGpl: isGpl);
  }
  final ValueNotifier<List<ContractLineGrade>> gradeLines =
      ValueNotifier<List<ContractLineGrade>>([]);

  final ValueNotifier<List<GradeLine>> grades =
      ValueNotifier<List<GradeLine>>([]);

  int _currentPage = 1;
  final int _itemsPerPage = 5;
  bool _isGpl = false;

  List<dynamic> get paginatedItems {
    final list = _isGpl ? gradeLines.value : grades.value;
    final start = (_currentPage - 1) * _itemsPerPage;
    final end = start + _itemsPerPage;
    return list.sublist(start, end > list.length ? list.length : end);
  }

  int get totalRows => _isGpl ? gradeLines.value.length : grades.value.length;
  int get totalPages => _isGpl
      ? (gradeLines.value.length / _itemsPerPage).ceil()
      : (grades.value.length / _itemsPerPage).ceil();

  bool get previousDisabled => _currentPage == 1;
  bool get nextDisabled => _currentPage == totalRows;

  void loadGrades(
    List<ContractLine> lines, {
    bool resetPaging = false,
    bool isGpl = false,
  }) {
    _isGpl = isGpl;

    if (isGpl) {
      final grouped = _groupByGrade(lines);
      grades.value = _buildGradeLines(grouped);
      gradeLines.value = _buildContractLineGradeItems(grouped);
    } else {
      final groupedLines =
          groupBy(lines, (e) => '${e.grade}_${e.brokerReference}');
      grades.value = groupedLines.entries.map((value) {
        return GradeLine(
          value.value,
          value.value.first.grade,
          value.value.first.brokerReference ?? '',
        );
      }).toList();
    }

    if (resetPaging) _currentPage = 1;
    notifyListeners();
  }

  Map<String, List<ContractLine>> _groupByGrade(List<ContractLine> lines) {
    return groupBy(lines, (ContractLine e) => e.grade);
  }

  List<GradeLine> _buildGradeLines(
    Map<String, List<ContractLine>> groupedLines,
  ) {
    return groupedLines.entries.map<GradeLine>((entry) {
      return GradeLine(
        entry.value,
        entry.key,
        entry.value.first.brokerReference ?? '',
      );
    }).toList();
  }

  List<ContractLineGrade> _buildContractLineGradeItems(
    Map<String, List<ContractLine>> groupedLines,
  ) {
    final result = <ContractLineGrade>[];

    groupedLines.forEach((grade, gradeLines) {
      for (final contractLine in gradeLines) {
        final premiums = contractLine.depotPremiums;
        if (premiums.isNotEmpty) {
          for (final premium in premiums) {
            result.add(
              ContractLineGrade(
                grade: grade,
                product: contractLine.grade,
                yard: premium.depot.code.isEmpty ? 'ANY' : premium.depot.code,
                contractLine: contractLine,
                tags: premium.tags,
                currentPrice: premium.currentPrice,
              ),
            );
          }
        }
      }
    });

    return result;
  }

  String getRangeValuesText() {
    var to = _currentPage * _itemsPerPage;
    final from = to - (_itemsPerPage - 1);
    if (to > totalRows) {
      to = totalRows;
    }
    return '$from-$to';
  }

  void nextPage() {
    if (_currentPage < totalPages) {
      _currentPage++;
      notifyListeners();
    }
  }

  void previousPage() {
    if (_currentPage > 1) {
      _currentPage--;
      notifyListeners();
    }
  }

  void firstPage() {
    _currentPage = 1;
    notifyListeners();
  }

  void lastPage() {
    _currentPage = totalPages;
    notifyListeners();
  }
}
