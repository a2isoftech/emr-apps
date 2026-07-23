import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/widgets/card/emr_card.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/material.dart';

class MediaSelectBottomSheet extends StatefulWidget {
  const MediaSelectBottomSheet({
    required this.itemCount,
    required this.onDelete,
    required this.onClose,
    super.key,
  });

  final int itemCount;
  final void Function() onDelete;
  final void Function() onClose;

  @override
  State<MediaSelectBottomSheet> createState() => _MediaSelectBottomSheetState();
}

class _MediaSelectBottomSheetState extends State<MediaSelectBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(EmrCard.cardRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.itemCount} '
                  'item${widget.itemCount == 1 ? '' : 's'} selected',
                ),
                IconButton(
                  iconSize: LayoutConstants.iconSizeSmall,
                  onPressed: widget.itemCount > 0
                      ? () async => widget.onDelete.call()
                      : null,
                  icon: Icon(
                    Icons.delete,
                    color: widget.itemCount > 0
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).disabledColor,
                  ),
                ),
                IconButton(
                  iconSize: LayoutConstants.iconSizeSmall,
                  onPressed: widget.onClose,
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
