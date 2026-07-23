import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/extensions/extensions.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_summary.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class PartyScreen extends StatefulWidget {
  const PartyScreen({
    required this.partyAccountNo,
    super.key,
  });

  final String partyAccountNo;

  @override
  State<PartyScreen> createState() => _PartyScreenState();
}

class _PartyScreenState extends State<PartyScreen> {
  late PartyController partyController;
  late AppConfig appConfig;
  int index = 0;

  @override
  void initState() {
    super.initState();
    partyController = Provider.of<PartyController>(context, listen: false);
    appConfig = Provider.of<AppConfig>(context, listen: false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;
    final actionItems = <SimpleMenuItem>[
      SimpleMenuItem(
        context.l10n.spotContract,
        FontAwesomeIcons.circleDot.data,
        () => context.go(
          context.namedLocation(
            NamedRoutes.traderPartyPricesNewSpot,
            params: {
              'partyAccountNo': widget.partyAccountNo,
            },
          ),
        ),
      ),
      if (appConfig.ffExperiments
          .contains(EmrOneFFExperiments.kCreateFixedContract))
        SimpleMenuItem(
          context.l10n.fixedContract,
          FontAwesomeIcons.crosshairs.data,
          () => context.go(
            context.namedLocation(
              NamedRoutes.traderPartyPricesNewFixed,
              params: {
                'partyAccountNo': widget.partyAccountNo,
              },
            ),
          ),
        ),
      SimpleMenuItem(
        context.l10n.priceList,
        FontAwesomeIcons.borderNone.data,
        () => context.go(
          context.namedLocation(
            NamedRoutes.traderPartyPricesNewPricelist,
            params: {
              'partyAccountNo': widget.partyAccountNo,
            },
          ),
        ),
      ),
    ];

    final menuItems = <SimpleMenuItem>[
      SimpleMenuItem(
        context.l10n.prices,
        context.l10n.faCurrencySymbolName.parseIconName().data,
        () => context.go(
          context.namedLocation(
            NamedRoutes.traderPartyPrices,
            params: {
              'partyAccountNo': widget.partyAccountNo,
            },
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: brandColours.brandColour,
        title: Text(
          '${partyController.partyInfo.code} - '
          '${partyController.partyInfo.name}',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: brandColours.onBrandColour),
        ),
        leading: IconButton(
          icon: BackButton(color: Theme.of(context).colorScheme.surface),
          onPressed: () =>
              context.go(context.namedLocation(NamedRoutes.trader)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Insets.gutter),
        child: PartySummary(
          actionItems: actionItems,
          menuItems: menuItems,
          appConfig: appConfig,
          partyController: partyController,
        ),
      ),
    );
  }
}
