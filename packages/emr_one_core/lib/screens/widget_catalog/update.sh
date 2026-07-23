#/bin/bash
# This file downloads files from the FlexColorScheme repo and modifies them so they're compatible with EMR Apps.

# Download the files.
curl https://raw.githubusercontent.com/rydmike/flex_color_scheme/master/example/lib/shared/widgets/universal/showcase_material.dart > showcase_material.dart
curl https://raw.githubusercontent.com/rydmike/flex_color_scheme/master/example/lib/shared/widgets/app/show_color_scheme_colors.dart > show_color_scheme_colors.dart
curl https://raw.githubusercontent.com/rydmike/flex_color_scheme/master/example/lib/shared/widgets/app/show_theme_data_colors.dart > show_theme_data_colors.dart
curl https://raw.githubusercontent.com/rydmike/flex_color_scheme/master/example/lib/shared/widgets/app/show_sub_theme_colors.dart > show_sub_theme_colors.dart
curl https://raw.githubusercontent.com/rydmike/flex_color_scheme/master/example/lib/shared/widgets/app/color_card.dart > color_card.dart

# Remove relative import statements.
sed -i "" "s/import '\.\..*//g" color_card.dart
sed -i "" "s/import '\.\..*//g" show_color_scheme_colors.dart
sed -i "" "s/import '\.\..*//g" show_sub_theme_colors.dart
sed -i "" "s/import '\.\..*//g" show_theme_data_colors.dart

# Add import statements to make the widget catalog work with EMR Apps.
ex -sc "1i|
// GENERATED CODE - DO NOT MODIFY BY HAND
// Run 'update.sh' to update this file.

import 'package:emr_one_core/screens/widget_catalog/app.dart';
import 'package:emr_one_core/screens/widget_catalog/copy_color_to_clipboard.dart';
" -cx color_card.dart

ex -sc "1i|
// GENERATED CODE - DO NOT MODIFY BY HAND
// Run 'update.sh' to update this file.

import 'package:emr_one_core/screens/widget_catalog/app.dart';
" -cx show_color_scheme_colors.dart

ex -sc "1i|
// GENERATED CODE - DO NOT MODIFY BY HAND
// Run 'update.sh' to update this file.

import 'package:emr_one_core/screens/widget_catalog/app.dart';
" -cx show_sub_theme_colors.dart

ex -sc "1i|
// GENERATED CODE - DO NOT MODIFY BY HAND
// Run 'update.sh' to update this file.

import 'package:emr_one_core/screens/widget_catalog/app.dart';
" -cx show_theme_data_colors.dart
