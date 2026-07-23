import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/queries/queries.dart';
import 'package:emr_one_crm/models/models.dart';
import 'package:http/http.dart';

class ArisingPointProvider
    extends EmrUtilSuggestionBaseApiProvider<ArisingPoint> {
  ArisingPointProvider(
    this.client,
    this.partyAccountNo,
    this.tradeRUrl,
  );
  final BaseClient client;
  final Uri tradeRUrl;
  final String partyAccountNo;
  List<ArisingPoint> _arisingPoints = [];

  @override
  Future<List<ArisingPoint>> getSuggestions(String query) async {
    final pattern = RegExp(query, caseSensitive: false);

    if (_arisingPoints.isEmpty) {
      final result = await getArisingPoints(partyAccountNo);

      _arisingPoints = result.data!.partyArisingPoints!.nodes!
          .map(
            (e) => ArisingPoint(
              e.locationId,
              e.locationAliasDescription!,
              e.locationAliasCode!,
            ),
          )
          .toList();
    }

    return Future.value(
      _arisingPoints
          .where((element) => element.shortName.contains(pattern))
          .toList(),
    );
  }

  Future<GraphQLResponse<Query$getArisingPoints>> getArisingPoints(
    String partyAccountNo,
  ) {
    return documentNodeQuerygetArisingPoints.execute(
      client,
      Query$getArisingPoints.fromJson,
      variables:
          Variables$Query$getArisingPoints(partyAccountNo: partyAccountNo),
      url: tradeRUrl,
    );
  }
}
