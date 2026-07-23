import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_one_crm/screens/party/party_screen.dart';
import 'package:emr_one_crm/screens/screens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

/// The [PartyScreenWrapper] is a jumping off point for various Party Specific
/// features. It presents a tile menu with links to party sub-routes.
class PartyScreenWrapper extends StatelessWidget with AppBarExtender {
  const PartyScreenWrapper({
    required this.partyAccountNo,
    required this.client,
    required this.settingsController,
    super.key,
  });

  final String partyAccountNo;
  final BaseClient client;
  final SettingsController settingsController;

  @override
  List<Widget> getActions(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return [
      if (!kIsWeb)
        PopupMenuButton<String>(
          icon: const Icon(Icons.add_circle),
          // This has been left as context.go()
          // because value comes from a namedLocation
          onSelected: (String value) => context.go(value),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: context.namedLocation(
                NamedRoutes.traderPartyPricesNewSpot,
                params: {
                  'partyAccountNo': partyAccountNo,
                },
              ),
              child: Text(context.l10n.spotContract),
            ),
            if (appConfig.ffExperiments
                .contains(EmrOneFFExperiments.kCreateFixedContract))
              PopupMenuItem<String>(
                value: context.namedLocation(
                  NamedRoutes.traderPartyPricesNewFixed,
                  params: {
                    'partyAccountNo': partyAccountNo,
                  },
                ),
                child: Text(context.l10n.fixedContract),
              ),
            PopupMenuItem<String>(
              value: context.namedLocation(
                NamedRoutes.traderPartyPricesNewPricelist,
                params: {
                  'partyAccountNo': partyAccountNo,
                },
              ),
              child: Text(context.l10n.priceList),
            ),
          ],
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final partyController =
        Provider.of<PartyController>(context, listen: false);
    final partyAccountId = 'accounts/${settingsController.territory}/$partyAccountNo';
    return FutureBuilder(
      future: partyController.getPartyPageInfo(
        partyAccountId,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return PartyScreen( 
              partyAccountNo: partyAccountNo,
            );
          } else {
            return const GenericMessage(
              title: 'This Party could not be retrieved',
              subTitle: 'An error occured whilst loading this Party',
            );
          }
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
