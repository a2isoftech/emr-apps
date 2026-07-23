import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_yard_app/components/components.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/models/media/group_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signals/signals_flutter.dart';

class FullScreenMediaViewer extends StatefulWidget {
  const FullScreenMediaViewer({
    required this.initialIndex,
    required this.mediaItems,
    required this.yardCode,
    super.key,
    this.onEdit,
    this.onDelete,
    this.onAddNote,
    this.title,
    this.trailing,
  });

  final int initialIndex;
  final List<MediaItem> mediaItems;
  final Future<MediaItem?> Function(MediaItem)? onEdit;
  final Future<bool> Function(MediaItem)? onDelete;
  final Future<MediaItem?> Function(MediaItem)? onAddNote;
  final String? title;
  final Widget? trailing;
  final String yardCode;

  @override
  State<FullScreenMediaViewer> createState() => _FullScreenMediaViewerState();
}

class _FullScreenMediaViewerState extends State<FullScreenMediaViewer>
    with SingleTickerProviderStateMixin {
  late final PageController _pageController;
  late final ValueNotifier<int> _currentIndexNotifier;
  late final ValueNotifier<List<MediaItem>> _mediaItemsNotifier;
  final showLoader = signal(false);
  @override
  void initState() {
    super.initState();
    _currentIndexNotifier = ValueNotifier(widget.initialIndex);
    _mediaItemsNotifier = ValueNotifier(List.of(widget.mediaItems));
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentIndexNotifier.dispose();
    _mediaItemsNotifier.dispose();
    super.dispose();
  }

  Widget _buildActionButton({
    required IconData icon,
    required VoidCallback onPressed,
    Color? color,
  }) {
    return IconButton(
      icon: Icon(
        icon,
        size: LayoutConstants.iconSizeSmall,
      ),
      color: color,
      onPressed: onPressed,
    );
  }

  List<Widget> _buildBottomActions(
    BuildContext context,
    MediaItem item,
  ) {
    final actions = <Widget>[];
    final colors = Theme.of(context).colorScheme;

    if (item.mediaType == MediaType.image && widget.onEdit != null) {
      actions.add(
        _buildActionButton(
          icon: Icons.edit,
          onPressed: () async {
            showLoader.value = true;
            final edited = await widget.onEdit!.call(item);
            if (edited != null && context.mounted) {
              _updateItemAndAdjust(edited);
            }
            showLoader.value = false;
          },
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );
    }

    if (widget.onDelete != null) {
      actions.add(
        _buildActionButton(
          icon: Icons.delete_outline,
          onPressed: () async {
            showLoader.value = true;
            final deleted = await widget.onDelete!.call(item);
            if (deleted && context.mounted) {
              _removeItemAndAdjust(item);
            }
            showLoader.value = false;
          },
          color: colors.error,
        ),
      );
    }

    if (widget.onAddNote != null) {
      actions.add(
        _buildActionButton(
          icon: Icons.edit_note,
          onPressed: () async {
            final updated = await widget.onAddNote!(item);
            if (updated != null && context.mounted) {
              _updateItemAndAdjust(updated);
            }
          },
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );
    }

    return actions;
  }

  void _removeItemAndAdjust(MediaItem item) {
    final items = List<MediaItem>.from(_mediaItemsNotifier.value);
    final index = items.indexOf(item);
    if (index == -1) return;

    items.removeAt(index);

    if (items.isEmpty) {
      Navigator.of(context, rootNavigator: true).pop(item);
      return;
    }

    int newIndex;
    if (index >= items.length) {
      newIndex = items.length - 1;
    } else {
      newIndex = index;
    }

    _mediaItemsNotifier.value = items;
    _currentIndexNotifier.value = newIndex;
    _pageController.jumpToPage(newIndex);
  }

  void _updateItemAndAdjust(MediaItem updatedItem) {
    final items = List<MediaItem>.from(_mediaItemsNotifier.value);
    final index = _currentIndexNotifier.value;

    if (index < 0 || index >= items.length) return;

    final isSame = updatedItem == items[index];
    if (isSame) {
      items[index] = updatedItem;
    } else {
      items.insert(index + 1, updatedItem);
      _currentIndexNotifier.value = index + 1;
    }
    _mediaItemsNotifier.value = items;
    _pageController.jumpToPage(_currentIndexNotifier.value);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      child: LoaderWrapper(
        showLoader: showLoader,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: Text(widget.title ?? ''),
            leading: BackButton(
              color: Theme.of(context).colorScheme.surface,
            ),
            actions: widget.trailing != null ? [widget.trailing!] : null,
          ),
          bottomNavigationBar: ListenableBuilder(
            listenable: Listenable.merge([
              _mediaItemsNotifier,
              _currentIndexNotifier,
            ]),
            builder: (_, __) {
              final currentItem =
                  _mediaItemsNotifier.value[_currentIndexNotifier.value];
              return BottomAppBar(
                height: LayoutConstants.appSearchBarHeight,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _buildBottomActions(context, currentItem),
                ),
              );
            },
          ),
          body: SafeArea(
            child: ValueListenableBuilder<List<MediaItem>>(
              valueListenable: _mediaItemsNotifier,
              builder: (_, items, __) {
                return PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _currentIndexNotifier.value = index;
                  },
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    if (item.mediaType == MediaType.image) {
                      return EasyImageView.imageWidget(
                        ImageWidget(
                          imagePath: item.fullUrl,
                          localPath: item.localDir,
                          token: item.token,
                          yardCode: widget.yardCode,
                        ),
                        doubleTapZoomable: true,
                      );
                    } else {
                      return VideoPlayerWidget(
                        mediaItem: item,
                        yardCode: widget.yardCode,
                      );
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
