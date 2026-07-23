import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/graphql/trader/queries/temp/get_publications.graphql.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class PartyNewPriceListModel {
  PartyNewPriceListModel({
    required this.partyAccountNo,
    required this.publications,
    this.collectedLessCharge = '',
    this.deliveryType,
    this.selectedPublication,
    this.isFullyCharged = false,
  });
  factory PartyNewPriceListModel.fromQuery(
    GraphQLResponse<Query$gplPublicationData> response,
    String partyAccountNo,
  ) {
    var publications = <Publication<PlGrade>>[];
    publications = response.data!.gplPublicationData
        .map(
          (e) => Publication<PlGrade>(
            id: e.id,
            issueDate: e.issueDate,
            publicationName: e.name,
            grades: e.grades.isEmpty
                ? []
                : e.grades
                    .map(
                      (e) => PlGrade(
                        e.gradeCode,
                        e.comment,
                        e.gradeGroup,
                        e.groupDesc,
                        e.gradeType,
                        basePrice: ValueUomPair(
                          isRate: true,
                          uom: Uom.values[e.basePrice.id],
                          value: e.basePrice.value,
                        ),
                        partyDelta: ValueUomPair(
                          isRate: true,
                          uom: Uom.values[e.basePrice.id],
                        ),
                        yardPrices: [
                          ...{
                            for (final yp in e.yardPrices)
                              yp.yard.yardCode: PlYardPrice(
                                yard: Yard(
                                  yardCode: yp.yard.yardCode,
                                  name: yp.yard.yardName,
                                  shortName: yp.yard.yardShortName,
                                ),
                                finalPrice: ValueUomPair(
                                  isRate: true,
                                  value: yp.finalPrice.value,
                                  uom: Uom.values[yp.finalPrice.id],
                                ),
                              ),
                          }.values,
                        ],
                      ),
                    )
                    .toList(),
            // All grades will have the same list of yards, so we use the first.
            yards: e.grades.isEmpty
                ? []
                : {
                    for (final yp in e.grades.first.yardPrices)
                      yp.yard.yardCode: Yard(
                        yardCode: yp.yard.yardCode,
                        name: yp.yard.yardName,
                        shortName: yp.yard.yardShortName,
                      ),
                  }.values.toList(),
          ),
        )
        .toList();

    publications.removeWhere((e) => e.yards.isEmpty || e.grades.isEmpty);

    final newModel = PartyNewPriceListModel(
      partyAccountNo: partyAccountNo,
      publications: publications,
    );

    return newModel;
  }
  final String partyAccountNo;
  final List<Publication<PlGrade>> publications;
  String collectedLessCharge;
  CrmDeliveryMethod? deliveryType;
  Publication<PlGrade>? selectedPublication;
  bool isFullyCharged;
}
