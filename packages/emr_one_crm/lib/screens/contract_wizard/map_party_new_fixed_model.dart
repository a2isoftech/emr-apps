import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/screens/contract_wizard/map_model_helper.dart';
import 'package:emr_one_crm/screens/contract_wizard/party_new_spot_view_model.dart';

class MapPartyNewFixedViewModel {
  static Input$CreateFixedContractInput createRequestFromModel(
    PartyNewContractViewModel model,
  ) {
    return Input$CreateFixedContractInput(
      contractHeaderId: model.contract?.id,
      startDate: model.startDate,
      endDate: model.endDate,
      partyAccountNo: model.partyAccountNo,
      currencyCode: model.currencyCode!,
      comments: model.externalNotes,
      internalComments: model.internalNotes,
      deliveryNotes: model.deliveryNotes,
      paymentNotes: model.paymentNotes,
      internalLME: model.internalLME,
      customerContractRef: model.customerContractRef,
      cToFAdjustment: model.cToFAdjustment,
      contractType: Enum$ContractType.values[model.contractType!.id - 1],
      priceType: Enum$ContractHeaderPriceType.values[model.priceType!.id - 1],
      emailToCustomer: false,
      lines: mapLinesFromGrades<Input$CreateFixedContractLineInput>(
        model,
        isFixed: true,
      ),
      orderBookTypeId: model.orderBook!.id,
      modifiedDate: model.contract?.modifiedDate,
      contractClassification: model.classification == null
          ? null
          : Enum$ContractClassification.values[model.classification ?? 0],
      deliveryPointId: model.selectedDeliveryPoint?.id,
      emailToTransportTeam: model.cToFAdjustment != null,
    );
  }
}
