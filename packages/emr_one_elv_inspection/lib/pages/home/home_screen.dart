import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/models/simple_menu_item.dart';
import 'package:emr_one_core/services/user_info/user_info_service.dart';
import 'package:emr_one_core/widgets/tile/hover_tile.dart';
import 'package:emr_one_core/widgets/tile/hover_tile_simplecontent.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_inspection/routing/named_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ElvInspectionHomeScreen extends StatelessWidget {
  const ElvInspectionHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    final menu = <SimpleMenuItem>[
      if (userInfoService.userInfo.hasPermission(
        ElvConstants.viewElvInspection,
      ))
        SimpleMenuItem(
          context.l10n.inspection,
          FontAwesomeIcons.magnifyingGlass.data,
          () => context.go(
            context.namedLocation(NamedRoutesElv.elvInspectionSearch),
          ),
        ),
      if (userInfoService.userInfo.hasPermission(ElvConstants.viewElvRaven))
        SimpleMenuItem(
          '${context.l10n.inspection} ${context.l10n.new_}',
          FontAwesomeIcons.magnifyingGlass.data,
          () => context.go(
            context.namedLocation(NamedRoutesElv.elvInspectionSearchRaven),
          ),
        ),
    ];
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_menu(context, menu)],
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
