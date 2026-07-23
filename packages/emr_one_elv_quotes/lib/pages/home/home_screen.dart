import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_elv_quotes/extensions/extensions.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/routing/elv_named_routing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ElvQuotesHomeScreen extends StatelessWidget {
  const ElvQuotesHomeScreen({required this.appConfig, super.key});

  final AppConfig appConfig;

  @override
  Widget build(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    final canViewVinScrap = userInfoService.userInfo.hasPermission(
      ElvConstants.viewVINScrap,
    );
    final settingController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;
    final menu = <SimpleMenuItem>[
      if (!userInfoService.userInfo.hasPermission('elvReadOnly'))
        SimpleMenuItem(
          context.l10n.quickQuote,
          FontAwesomeIcons.boltLightning.data,
          () => context.go(
            context.namedLocation(
              NamedRoutes.elvQuickQuote,
              params: {'batchQuoteId': 'new'},
            ),
          ),
        ),
      if (userInfoService.userInfo.hasPermission(ElvConstants.viewElvRaven))
        SimpleMenuItem(
          context.l10n.quickQuote,
          FontAwesomeIcons.boltLightning.data,
          () => context.go(
            context.namedLocation(
              ElvNamedRouting.elvQuickQuoteNew,
              params: {'batchQuoteId': 'new'},
            ),
          ),
        ),
      SimpleMenuItem(
        context.l10n.quoteSearch,
        FontAwesomeIcons.envelopeOpen.data,
        () => context.go(context.namedLocation(NamedRoutes.elvQuoteSearch)),
      ),
      if (canViewVinScrap)
        SimpleMenuItem(
          settingController.territory.toElvTerritory().menuText(context),
          FontAwesomeIcons.weightScale.data,
          () => context.go(
            context.namedLocation(ElvQuotesNamedRoutes.elvVinScrapQuote),
          ),
        ),
    ];

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
            child: Text(
              context.l10n.quote,
              style: EmrOneConstants.kSmallestHeadingTextStyle,
            ),
          ),
          _menu(context, menu),
        ],
      ),
    );
  }

  Widget _menu(BuildContext context, List<SimpleMenuItem> menuItems) {
    return Expanded(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Wrap(
                spacing: Insets.gutter,
                runSpacing: Insets.gutter,
                children: menuItems.map((e) => _menuItem(context, e)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(BuildContext context, SimpleMenuItem item) {
    return EOHoverTile(
      onTap: item.function,
      child: EOHoverTileSimpleContent(
        icon: item.icon,
        label: item.name.toUpperCase(),
      ),
    );
  }
}
