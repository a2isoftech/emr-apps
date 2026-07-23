import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class MediaGridView extends StatelessWidget {
  const MediaGridView({
    required this.items,
    required this.header,
    required this.groupKey,
    required this.yardCode,
    super.key,
    this.onAddNote,
    this.maxCrossAxisExtent,
    this.onDelete,
    this.onEdit,
    this.onMediaButtonTap,
    this.selectedItems,
  });

  final List<MediaItem> items;
  final Future<MediaItem?> Function(MediaItem item, String key)? onAddNote;
  final Future<bool> Function(MediaItem items, String key)? onDelete;
  final Future<MediaItem?> Function(MediaItem item, String key)? onEdit;
  final double? maxCrossAxisExtent;
  final String header;
  final Future<void> Function(String? key)? onMediaButtonTap;
  final String groupKey;
  final String yardCode;
  final ListSignal<MediaItem>? selectedItems;

  @override
  Widget build(BuildContext context) {
    final addMoreSelected = signal(false);
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: onMediaButtonTap != null ? items.length + 1 : items.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: maxCrossAxisExtent ?? 150,
        mainAxisSpacing: Insets.gutter / 2,
        crossAxisSpacing: Insets.gutter / 2,
      ),
      itemBuilder: (context, index) {
        if (onMediaButtonTap != null && index == 0) {
          return AddMoreButton(
            height: maxCrossAxisExtent,
            width: maxCrossAxisExtent,
            onTap: (selectedItems?.watch(context).isNotEmpty ?? false)
                ? null
                : () async {
                    addMoreSelected.value = true;
                    await onMediaButtonTap!.call(groupKey);
                    addMoreSelected.value = false;
                  },
            isActive: addMoreSelected.watch(context),
          );
        } else {
          final item =
              onMediaButtonTap != null ? items[index - 1] : items[index];
          return Watch(
            (context) => MediaGridItem(
              onLongPress: selectedItems != null
                  ? (item) {
                      selectedItems!.add(item);
                    }
                  : null,
              onTap: (item) async {
                if (selectedItems?.isEmpty ?? false) {
                  await showDialog<void>(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (context) => FullScreenMediaViewer(
                      yardCode: yardCode,
                      initialIndex: index - 1,
                      mediaItems: items,
                      onAddNote: onAddNote == null
                          ? null
                          : (item) async {
                              final updatedItem =
                                  await onAddNote?.call(item, groupKey);
                              if (updatedItem != null) {
                                items[index - 1] = updatedItem;
                              }
                              return updatedItem;
                            },
                      onDelete: (item) async {
                        return onDelete?.call(item, groupKey) ?? false;
                      },
                      onEdit: (item) async {
                        return await onEdit?.call(item, groupKey);
                      },
                      title: header,
                    ),
                  );
                } else {
                  if (selectedItems!.contains(item)) {
                    selectedItems!.remove(item);
                  } else {
                    selectedItems!.add(item);
                  }
                }
              },
              item: item,
              selected: selectedItems?.watch(context).contains(item) ?? false,
              yardCode: yardCode,
            ),
          );
        }
      },
    );
  }
}
