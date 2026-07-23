import 'package:emr_one_yard_app/components/media/media_grid_view.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class GroupedMediaGrid extends StatefulWidget {
  const GroupedMediaGrid({
    required this.mediaGroups,
    required this.yardCode,
    super.key,
    this.onDelete,
    this.onEdit,
    this.onAddNote,
    this.onMediaButtonTap,
    this.maxCrossAxisExtent,
    this.selectedItems,
  });

  final List<MediaGroup> mediaGroups;
  final Future<bool> Function(MediaItem items, String key)? onDelete;
  final Future<MediaItem?> Function(MediaItem items, String key)? onEdit;
  final Future<MediaItem?> Function(MediaItem item, String key)? onAddNote;
  final Future<void> Function(MediaGroup group)? onMediaButtonTap;
  final ListSignal<MediaItem>? selectedItems;
  final double? maxCrossAxisExtent;
  final String yardCode;

  @override
  State<GroupedMediaGrid> createState() => _GroupedMediaGridState();
}

class _GroupedMediaGridState extends State<GroupedMediaGrid> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: widget.mediaGroups.map((group) {
        return SliverMainAxisGroup(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverStickyHeaderDelegate(
                header: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    Text(
                      group.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: MediaGridView(
                yardCode: widget.yardCode,
                items: group.items,
                onAddNote: widget.onAddNote,
                onDelete: widget.onDelete,
                onEdit: widget.onEdit,
                header: group.title,
                selectedItems: widget.selectedItems,
                maxCrossAxisExtent: widget.maxCrossAxisExtent,
                onMediaButtonTap: widget.onMediaButtonTap == null
                    ? null
                    : (key) {
                        widget.onMediaButtonTap?.call(group);
                        return Future.value();
                      },
                groupKey: group.key ?? '',
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

class _SliverStickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  _SliverStickyHeaderDelegate({required this.header});

  final Widget header;

  @override
  double get minExtent => 65;

  @override
  double get maxExtent => 65;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      height: maxExtent,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: header,
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
