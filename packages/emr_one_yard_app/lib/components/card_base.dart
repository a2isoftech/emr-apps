import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/material.dart';

class CardBase extends StatelessWidget {
  const CardBase({
    required this.header,
    this.content,
    this.onTap,
    super.key,
  }) : _contentOnly = false;

  const CardBase.contentOnly({
    required Widget child,
    this.onTap,
    super.key,
  })  : header = const SizedBox.shrink(),
        content = child,
        _contentOnly = true;

  final Widget header;
  final Widget? content;
  final void Function()? onTap;
  final bool _contentOnly;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(EmrCard.cardRadius),
          side: const BorderSide(
            color: OppraBrandColors.triCornBlack, //TriCorn Black
          ),
        ),
        child: _contentOnly
            ? content
            : Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Insets.gutter / 2,
                  horizontal: Insets.gutter,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header,
                    const SizedBox(
                      height: Insets.gutter / 4,
                    ),
                    if (content != null) ...[
                      const Divider(),
                      content!,
                    ],
                  ],
                ),
              ),
      ),
    );
  }
}
