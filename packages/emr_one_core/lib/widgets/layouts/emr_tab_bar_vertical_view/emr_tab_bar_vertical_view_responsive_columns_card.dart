import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrTabBarVerticalViewResponsiveColumnsCard
    extends EmrTabBarVerticalViewCard {
  EmrTabBarVerticalViewResponsiveColumnsCard({
    required super.title,
    super.key,
    super.height,
    super.minHeight,
    super.maxHeight,
    super.actions,
    super.allowedPermissions = const [],
    List<Widget> children = const <Widget>[],
  }) : super(
         child: LayoutBuilder(
           builder: (context, constraints) {
             final numberOfColumns = switch (constraints.maxWidth) {
               <= _smallScreenMaxWidth => 1,
               <= _mediumScreenMaxWidth => 2,
               <= _largeScreenMaxWidth => 3,
               _ => 4,
             };

             final maxWidth =
                 (constraints.maxWidth / numberOfColumns) -
                 (Insets.gutter * (numberOfColumns - 1) / numberOfColumns);

             // Calculate how many children to add to fill the last row.
             final remainder = children.length % numberOfColumns;

             return Column(
               children: [
                 Wrap(
                   spacing: Insets.gutter,
                   children: [
                     for (final child in children)
                       ConstrainedBox(
                         constraints: BoxConstraints(maxWidth: maxWidth),
                         child: child,
                       ),

                     // Fill the last row.
                     for (var i = 0; i < numberOfColumns - remainder; i++)
                       ConstrainedBox(
                         constraints: BoxConstraints(
                           maxWidth: maxWidth,
                           maxHeight: 0,
                         ),
                         child: const SizedBox.expand(),
                       ),
                   ],
                 ),
               ],
             );
           },
         ),
       );

  static const int _smallScreenMaxWidth = 480;

  static const int _mediumScreenMaxWidth = 960;

  static const int _largeScreenMaxWidth = 1440;
}
