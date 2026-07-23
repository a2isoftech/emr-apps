import 'package:emr_one_tickets/models/beam.dart';
import 'package:http/http.dart';

class BeamsService {
  BeamsService({
    required this.httpClient,
    required this.apiUrl,
    this.cacheTtl = const Duration(minutes: 1),
  });

  final BaseClient httpClient;
  final Duration cacheTtl;
  final String apiUrl;

  Future<void> saveBeam(BeamModel model) async {
    // Note: The createBeam mutation has changed,
    // so this code is not valid anymore.

    // await documentNodeMutationCreateBeam.execute(
    //   httpClient,
    //   Mutation$CreateBeam.fromJson,
    //   variables: Variables$Mutation$CreateBeam(
    //     input: Input$BeamInput(
    //       assessedBy: model.approvedBy,
    //       rejectSection: false,
    //       hasShearStuds: model.hasShearStuds,
    //       hasBoltHoles: model.hasBoltHoles,
    //       hasWebStiffeners: model.hasWebStiffeners,
    //       countWebStiffeners: model.countWebStiffeners ?? 0,
    //       hasAnyStructuralPenetrations: model.hasStructuralPenetrations,
    //       countStructuralPenetrations: model.countStructuralPenetrations ??0,
    //       hasOtherFabricationItems: model.hasFabricationItems,
    //       otherFabrications: model.fabricatedMembers ?? '',
    //       measurements: Input$MeasurementsInput(
    //         grossWeightMt: model.grossWeight,
    //         grossWeight: Input$UomValueInput(
    //           uom: Enum$Uom.MT,
    //           value: model.grossWeight!,
    //         ),
    //         heightOfSection: model.heightOfSection,
    //         widthOfSection: model.widthOfSection,
    //         webThickness: model.webThickness,
    //         flangeThickness: model.flangeThickness,
    //         l1: model.l1,
    //         l2: model.l2,
    //         flangeWidthF_B1: 0,
    //         flangeWidthB_B2: model.flangeWidth,
    //         straightnessQxx: model.straightnessQxx,
    //         straightnessQyy: model.straightnessQyy,
    //         outOfSquareK: 0,
    //         outOfSquareK2: 0,
    //         inSituHardnessResult: 0,
    //       ),
    //       blueBookId: '',
    //       mediaUrls: [],
    //       dataChecked: false,
    //       beamType: Enum$SectionType.UB,
    //       locationId: '',
    //       sku: '',
    //       weight: Input$UomValueInput(uom: Enum$Uom.MT, value: 0),
    //       status: Enum$ItemStatus.$unknown,
    //     ),
    //   ),
    //   url: Uri.tryParse(apiUrl),
    // );
  }
}
