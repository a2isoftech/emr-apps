import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/party_new_price_list_model.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class MapPartyNewPriceListViewModel {
  static Input$CreateMaskLinesInput createRequestFromModel(
    PartyNewPriceListModel model,
    PartiesPriceListWizardController controller,
    String territoryCode,
  ) {
    return Input$CreateMaskLinesInput(
      publicationId: model.selectedPublication!.id,
      partyAccountNo: model.partyAccountNo,
      yardCodes: _mapYards(model.selectedPublication!, controller),
      haulageChargeAdjustmentRate: Input$UomValueInput(
        value: double.tryParse(model.collectedLessCharge) ?? 0,
        uom: Enum$Uom.values[model
            .selectedPublication!.grades.first.basePrice.uom.toApiEnumIndex],
      ),
      lines: _mapLines(model.selectedPublication!, controller),
      territoryPreferenceCode: territoryCode,
    );
  }

  static List<String> _mapYards(
    Publication<PlGrade> publication,
    PartiesPriceListWizardController controller,
  ) {
    final yardCodesList = <String>[];

    publication.yards.map((e) {
      if (controller.isYardsSelected(e.yardCode)) {
        yardCodesList.add(e.yardCode);
      }
    }).toList();

    return yardCodesList;
  }

  static List<Input$MaskLinePriceInput> _mapLines(
    Publication<PlGrade> publication,
    PartiesPriceListWizardController controller,
  ) {
    final selectedGradeCodes = <String>[];
    var grades = <PlGrade>[];
    publication.grades.map((e) {
      if (controller.isGradeSelected(e.gradeCode)) {
        selectedGradeCodes.add(e.gradeCode);
      }
    }).toList();
    grades = publication.grades
        .where((element) => selectedGradeCodes.contains(element.gradeCode))
        .toList();

    return grades.expand(
      (e) {
        return [
          Input$MaskLinePriceInput(
            gradeCode: e.gradeCode,
            deliveryMethod: Enum$ContractLineDeliveryMethod.DELIVERED,
            partyDelta: Input$UomValueInput(
              value: e.partyDelta.value,
              uom: Enum$Uom.values[e.partyDelta.uom.toApiEnumIndex],
            ),
          ),
        ];
      },
    ).toList();
  }
}
