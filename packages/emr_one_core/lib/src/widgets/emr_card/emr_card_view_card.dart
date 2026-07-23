import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

@internal
class EmrCardViewCard extends StatelessWidget {
  const EmrCardViewCard({
    required this.child,
    this.controller,
    this.leading,
    this.trailing,
    this.title,
    this.subtitle,
    this.cardWidth,
    this.cardHeight,
    this.padding = const EdgeInsets.all(Insets.gutter),
    this.onSelected,
    super.key,
  });

  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final double? cardWidth;
  final double? cardHeight;
  final EmrCardController? controller;
  final EdgeInsets padding;
  final String? title;
  final String? subtitle;
  final void Function({bool selected})? onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      height: cardHeight,
      child: EmrCard(
        controller: controller,
        onSelected: onSelected,
        padding: padding,
        title: title,
        subtitle: subtitle,
        leading: leading,
        trailing: trailing,
        child: child,
      ),
    );
  }
}
