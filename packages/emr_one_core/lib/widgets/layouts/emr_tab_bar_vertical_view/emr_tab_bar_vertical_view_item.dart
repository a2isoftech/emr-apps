import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/material.dart';

/// This is a base class for children of [EmrTabBarVerticalView].
/// One implementation of this class is [EmrTabBarVerticalViewCard].
abstract class EmrTabBarVerticalViewItem extends StatelessWidget {
  const EmrTabBarVerticalViewItem({
    required this.title,
    required this.allowedPermissions,
    this.actions = const <Type, EmrAction<Intent>>{},
    super.key,
  });

  final String title;

  final Map<Type, EmrAction<Intent>> actions;

  final List<String> allowedPermissions;
}
