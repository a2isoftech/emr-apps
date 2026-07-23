import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/mutations/create_mask_lines.graphql.dart';
import 'package:emr_one_crm/graphql/trader/queries/temp/get_publications.graphql.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/map_party_new_price_list_model.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/parties_price_wiz_controller.dart';
import 'package:emr_one_crm/screens/parties_new_price_list/party_new_price_list_model.dart';
import 'package:http/http.dart';

class PriceListService {
  PriceListService({
    required this.client,
    required this.tradeRUrl,
    this.partyAccountNo,
    this.controller,
  });
  final BaseClient client;
  final String? partyAccountNo;
  final Uri tradeRUrl;
  final PartiesPriceListWizardController? controller;

  Future<PartyNewPriceListModel?> loadPublications() async {
    final res = await _getPublications();

    if (res.hasErrors() || res.data!.gplPublicationData.isEmpty) {
      return null;
    }
    return PartyNewPriceListModel.fromQuery(
      res,
      partyAccountNo!,
    );
  }

  Future<GraphQLResponse<Query$gplPublicationData>> _getPublications() {
    return documentNodeQuerygplPublicationData.execute(
      client,
      Query$gplPublicationData.fromJson,
      variables: Variables$Query$gplPublicationData(
        partyAccountNo: partyAccountNo!,
      ),
      url: tradeRUrl,
    );
  }

  Future<GraphQLResponse<Mutation$CreateMaskLines>> createMaskLines(
    PartyNewPriceListModel model,
    PartiesPriceListWizardController controller,
    String territoryCode,
  ) {
    return documentNodeMutationCreateMaskLines.execute(
      client,
      Mutation$CreateMaskLines.fromJson,
      variables: Variables$Mutation$CreateMaskLines(
        input: MapPartyNewPriceListViewModel.createRequestFromModel(
          model,
          controller,
          territoryCode,
        ),
      ),
      url: tradeRUrl,
    );
  }
}
