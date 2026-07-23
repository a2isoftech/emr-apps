import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class UserDashboardItemlist<T> extends StatelessWidget {
  const UserDashboardItemlist({
    required this.items,
    required this.itemBuilder,
    super.key,
  });

  final List<T> items;

  final Widget Function(BuildContext, T item, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          itemBuilder(context, items[index], index),
      itemCount: items.length,
    );
  }
}
