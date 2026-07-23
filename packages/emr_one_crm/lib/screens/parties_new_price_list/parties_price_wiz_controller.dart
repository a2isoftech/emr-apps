import 'dart:collection';

import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/party_new_price_list_model.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/price_list_service.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class PartiesPriceListWizardController extends EOWizardController {
  PartiesPriceListWizardController(
    super.steps, {
    required this.client,
    required this.tradeRUrl,
    required this.partyAccountNo,
    this.gradeCount = 0,
    this.model,
    this.gradeFilter,
    this.isSuccessful = false,
    this.isMaskLineCreated = false,
  });
  PartyNewPriceListModel? model;
  final BaseClient? client;
  final Uri tradeRUrl;
  final String partyAccountNo;

  int gradeCount;
  String? gradeFilter;
  bool isSuccessful;
  bool isMaskLineCreated;

  final kPublicationSelect = 1;
  final kYardSelect = 2;
  final kGradesSelect = 3;
  final kPartyDelta = 4;
  final kSummary = 5;
  final kConfirmation = 6;

  final HashSet<String> _selectedYards = HashSet<String>.identity();
  final HashSet<String> _selectedGrades = HashSet<String>.identity();
  HashSet<String> get selectedYards => _selectedYards;

  void delayedNextStep() {
    Future<void>.delayed(
      const Duration(milliseconds: 350),
    ).then(
      (value) => nextStep(),
    );
  }

  void updateGradeCount() {
    final hasPublication = model?.selectedPublication != null;
    if (hasPublication) {
      gradeCount = _selectedGrades.length;
    } else {
      gradeCount = 0;
    }
    notifyListeners();
  }

  Future<PartyNewPriceListModel?> createPriceListModel() {
    final priceListService = PriceListService(
      client: client!,
      partyAccountNo: partyAccountNo,
      tradeRUrl: tradeRUrl,
    );
    return priceListService.loadPublications();
  }

  List<PlGrade> getSortedGrades(
    Publication<PlGrade> publication,
    String filterText,
  ) {
    final filtered = publication.grades.where((grade) {
      return filterText.isEmpty ||
          grade.description.toLowerCase().contains(filterText.toLowerCase()) ||
          grade.gradeCode.toLowerCase().contains(filterText.toLowerCase());
    }).toList();

    filtered.sort((a, b) {
      final codeCompare = a.gradeCode.compareTo(b.gradeCode);
      return codeCompare != 0
          ? codeCompare
          : a.description.compareTo(b.description);
    });

    return filtered;
  }

  List<String> getGroupNames(
    Publication<PlGrade> publication,
  ) {
    final groupNames = <String>['ANY'];
    final data = publication;
    final grades = data.grades;

    for (final grade in grades) {
      if (!groupNames.contains(grade.gradeGroup) &&
          _selectedGrades.contains(grade.gradeCode)) {
        groupNames.add(grade.gradeGroup);
      }
    }

    groupNames.sort();

    return groupNames;
  }

  bool isYardsSelected(String yardCode) {
    return _selectedYards.contains(yardCode);
  }

  void setYardSelected(String yardCode, {bool selected = true}) {
    if (_selectedYards.contains(yardCode) && selected) return;

    if (selected) {
      _selectedYards.add(yardCode);
      notifyListeners();
    } else {
      _selectedYards.remove(yardCode);
      notifyListeners();
    }
  }

  void setYardsSelected(List<String> yardCodes, {bool selected = true}) {
    selected
        ? _selectedYards.addAll(yardCodes)
        : _selectedYards.removeAll(yardCodes);

    notifyListeners();
  }

  void initSelectedYards(List<String> yardCodes) {
    _selectedYards.clear();

    _selectedYards.addAll(yardCodes);

    notifyListeners();
  }

  void clearYards() {
    _selectedYards.clear();
    notifyListeners();
  }

  bool allYardsSelected(List<Yard> yards) {
    final yardCodes = <String>[];
    for (final yard in yards) {
      yardCodes.add(yard.yardCode);
    }
    return _selectedYards.containsAll(yardCodes);
  }

  bool anyYardsSelected() {
    return _selectedYards.isNotEmpty;
  }

  HashSet<String> getSelectedYards() {
    return _selectedYards;
  }

  void setPublication(Publication<PlGrade> publication) {
    model?.selectedPublication = publication;
    notifyListeners();
  }

  void setFullyCharged({required bool isFullyCharged}) {
    model!.isFullyCharged = isFullyCharged;
    notifyListeners();
  }

  void setDeliveryType(CrmDeliveryMethod? deliveryType) {
    if (model?.deliveryType == CrmDeliveryMethod.both) {
      // Toggle between collected and delivered if current type is both
      model?.deliveryType = (deliveryType
              .toString()
              .contains(CrmDeliveryMethod.collected.toString()))
          ? CrmDeliveryMethod.delivered
          : CrmDeliveryMethod.collected;
    } else if (model?.deliveryType == deliveryType) {
      model?.deliveryType = null; // Reset if the same deliveryType is selected
    } else {
      switch (deliveryType) {
        case CrmDeliveryMethod.collected:
          if (model!.deliveryType != null &&
              model!.deliveryType == CrmDeliveryMethod.collected) {
            model?.deliveryType = null;
          } else {
            model?.deliveryType = CrmDeliveryMethod.collected;
          }
        case CrmDeliveryMethod.delivered:
          if (model!.deliveryType != null &&
              model!.deliveryType == CrmDeliveryMethod.delivered) {
            model?.deliveryType = null;
          } else {
            model?.deliveryType = CrmDeliveryMethod.delivered;
          }
        case null:
          model?.deliveryType = null;
        // ignore: no_default_cases
        default:
          model?.deliveryType = null;
      }
    }
    notifyListeners(); // Notify about the state change
  }

  bool isGradeSelected(String gradeCode) {
    return _selectedGrades.contains(gradeCode);
  }

  void setGradeSelected(String gradeCode, {bool selected = true}) {
    if (_selectedGrades.contains(gradeCode) && selected) return;

    if (selected) {
      _selectedGrades.add(gradeCode);
      notifyListeners();
    } else {
      _selectedGrades.remove(gradeCode);
      notifyListeners();
    }
  }

  void setGradesSelected(List<String> gradeCodes, {bool selected = true}) {
    selected
        ? _selectedGrades.addAll(gradeCodes)
        : _selectedGrades.removeAll(gradeCodes);

    notifyListeners();
  }

  void initSelectedGrades(List<String> gradeCodes) {
    _selectedGrades.clear();

    _selectedGrades.addAll(gradeCodes);

    notifyListeners();
  }

  bool allGradesSelected(List<PlGrade> grades) {
    final gradeCodes = <String>[];
    for (final plGrade in grades) {
      gradeCodes.add(plGrade.gradeCode);
    }
    return _selectedGrades.containsAll(gradeCodes);
  }

  HashSet<String> getGradesSelected() {
    return _selectedGrades;
  }

  bool anyGradesSelected() {
    return _selectedGrades.isNotEmpty;
  }

  void clearGrades() {
    _selectedGrades.clear();
    notifyListeners();
  }

  Future<void> createMaskedLines(
    BuildContext context,
  ) async {
    nextStep();

    final priceListService =
        Provider.of<PriceListService>(context, listen: false);
    final settingsController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;
    context.trackEvent(
      EmrOneCrmTelemetry.kCreateMaskedLines,
      params: {
        'party': model!.selectedPublication!.id.toString(),
      },
    );

    final result = await priceListService.createMaskLines(
      model!,
      this,
      settingsController.territory,
    );

    if (result.hasErrors()) {
      _trackContractFailure(result);

      nextStep();
    } else {
      if (result.data!.createMaskLines.isNotEmpty) {
        isMaskLineCreated = true;
      }
      isSuccessful = true;

      _trackContractSuccess();

      nextStep();
    }
  }

  void _trackContractFailure(
    GraphQLResponse<dynamic> apiResponse,
  ) {
    EmrLogger.event(
      EmrOneCrmTelemetry.kCreateMaskedLines,
      type: EmrOneCoreTelemetry.kTypeResult,
      params: {
        'party': partyAccountNo,
        EmrOneCoreTelemetry.kSuccessParamName: 'false',
        'apiErrors': apiResponse.hasErrors()
            ? apiResponse.errors!.map((err) => err.toString()).join('\n')
            : EmrOneCoreTelemetry.kUnknown,
      },
    );
  }

  void _trackContractSuccess() {
    EmrLogger.event(
      EmrOneCrmTelemetry.kCreateMaskedLines,
      type: EmrOneCoreTelemetry.kTypeResult,
      params: {
        'party': partyAccountNo,
        EmrOneCoreTelemetry.kSuccessParamName: 'true',
      },
    );
  }

  @override
  String? getCustomStepNumber() {
    if (getStepNumber == kPublicationSelect) return '1';
    if (getStepNumber == kYardSelect) {
      return '2';
    }
    if (getStepNumber == kGradesSelect) {
      return '3';
    }
    if (getStepNumber == kPartyDelta) {
      return '4';
    }
    if (getStepNumber == kSummary) {
      return '5';
    }
    if (getStepNumber == kConfirmation) {
      return '6';
    }
    return '-';
  }

  @override
  String? getCustomStepNumberHeading() {
    return 'STEP ${getCustomStepNumber()!} OF 6';
  }

  String getDefaultTerritoryCode(BuildContext context) {
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;
    return settingsController.territory;
  }
}
