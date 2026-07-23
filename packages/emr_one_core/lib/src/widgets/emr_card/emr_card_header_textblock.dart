import 'package:emr_one_core/widgets/card/emr_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class EmrCardHeaderTextblock extends StatelessWidget {
  const EmrCardHeaderTextblock({
    required this.controller,
    super.key,
    this.title,
    this.subtitle,
  });

  final String? title;
  final String? subtitle;
  final EmrCardController controller;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Flexible(
                child: Text(
                  softWrap: true,
                  maxLines: 2,
                  title ?? '',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                        color: controller.isSelected.value
                            ? Theme.of(
                                context,
                              ).colorScheme.onTertiary
                            : null,
                      ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: subtitle != null,
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    softWrap: true,
                    subtitle ?? '',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          overflow: TextOverflow.ellipsis,
                          color: controller.isSelected.value
                              ? Theme.of(
                                  context,
                                ).colorScheme.onTertiary
                              : null,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
