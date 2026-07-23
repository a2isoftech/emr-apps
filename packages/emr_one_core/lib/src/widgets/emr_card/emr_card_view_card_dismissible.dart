import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/emr_card/emr_card_view_card.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class EmrCardViewCardDismissible<T> extends StatelessWidget {
  const EmrCardViewCardDismissible({
    required this.item,
    required this.child,
    required this.controller,
    required this.onSelected,
    this.leading,
    this.trailing,
    this.cardWidth,
    this.cardHeight,
    this.padding = const EdgeInsets.all(Insets.gutter),
    this.title,
    this.subtitle,
    this.onDismissed,
    this.confirmDismiss,
    super.key,
  });

  final Widget child;
  final T item;
  final void Function(DismissDirection direction)? onDismissed;
  final Future<bool?> Function(DismissDirection direction)? confirmDismiss;
  final Widget? leading;
  final Widget? trailing;
  final double? cardWidth;
  final double? cardHeight;
  final EmrCardController controller;
  final EdgeInsets padding;
  final String? title;
  final String? subtitle;
  final void Function({bool selected})? onSelected;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(item),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: Insets.gutter * 2),
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.error,
            child: const Icon(Icons.delete_outline, color: Colors.white),
          ),
        ),
      ),
      onDismissed: onDismissed,
      confirmDismiss: confirmDismiss,
      child: EmrCardViewCard(
        controller: controller,
        onSelected: onSelected,
        padding: padding,
        title: title,
        subtitle: subtitle,
        leading: leading,
        trailing: trailing,
        cardWidth: cardWidth,
        cardHeight: cardHeight,
        child: child,
      ),
    );
  }
}
