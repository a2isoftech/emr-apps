// The Widget Catalog is a copy of the FlexColorScheme playground found at:
// https://github.com/rydmike/flex_color_scheme/tree/master/example/lib/example5_themes_playground
// with some minor modifications to make it work within EMR Apps Core.
// To update this to the latest version run "update.sh".

import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/screens/widget_catalog/show_color_scheme_colors.dart';
import 'package:emr_one_core/screens/widget_catalog/show_sub_theme_colors.dart';
import 'package:emr_one_core/screens/widget_catalog/show_theme_data_colors.dart';
import 'package:emr_one_core/screens/widget_catalog/showcase_material.dart';
import '../../src/widgets/modals/showcase/emr_modal_showcase.dart';
import '../../src/widgets/modals/showcase/emr_card_showcase.dart';
import 'package:flutter/material.dart';

class WidgetCatalog extends StatelessWidget {
  const WidgetCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headlineMedium = theme.textTheme.headlineMedium!;

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: ListView(
        children: <Widget>[
          Text('Modal Showcase', style: headlineMedium),
          const EmrModalShowcase(),
          const Divider(),
          Text('Widget Catalog', style: headlineMedium),
          const Text(
            'This screen shows the main widgets used by the app using '
            'our theme.',
          ),
          const SizedBox(height: 8),

          const Divider(),
          // Show all key active theme colors.
          Text('Theme Colors', style: headlineMedium),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: ShowColorSchemeColors(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: ShowThemeDataColors(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: ShowSubThemeColors(),
          ),
          const Divider(),
          Text('Theme Showcase', style: headlineMedium),
          const ShowcaseMaterial(),
          const Divider(),
          Text('Card Showcase', style: headlineMedium),
          const SizedBox(height: Insets.gutter),
          const EmrCardShowcase(),
        ],
      ),
    );
  }
}
