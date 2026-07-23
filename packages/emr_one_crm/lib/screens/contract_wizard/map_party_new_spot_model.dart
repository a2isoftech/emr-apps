import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/screens/contract_wizard/map_model_helper.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';

class MapPartyNewSpotViewModel {
  static Input$CreateSpotContractInput createRequestFromModel(
    PartyNewContractViewModel model,
  ) =>
      Input$CreateSpotContractInput(
        contractHeaderId: model.contract?.id,
        startDate: model.startDate,
        endDate: model.endDate,
        partyAccountNo: model.partyAccountNo,
        currencyCode: model.currencyCode ?? '',
        comments: model.externalNotes,
        internalComments: model.internalNotes,
        deliveryNotes: model.deliveryNotes,
        paymentNotes: model.paymentNotes,
        internalLME: model.internalLME,
        contractType: Enum$ContractType.values[
            model.contractType?.id != null ? (model.contractType!.id - 1) : 0],
        emailToCustomer: false,
        lines: mapLinesFromGrades<Input$CreateSpotContractLineInput>(
          model,
          isFixed: false,
        ),
        targetLoads: model.targetLoads,
        orderBookTypeId: model.orderBook?.id ??
            10, // Hardcoded to value provided by SW for now
        modifiedDate: model.contract?.modifiedDate,
        contractClassification: model.classification == null
            ? null
            : Enum$ContractClassification.values[model.classification ?? 0],
        deliveryPointId: model.selectedDeliveryPoint?.id,
        emailToTransportTeam: model.cToFAdjustment != null,
        cToFAdjustment: model.cToFAdjustment,
      );
}
