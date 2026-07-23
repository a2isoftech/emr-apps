import 'dart:io';

import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/screens/media/models/media_item.dart';
import 'package:emr_one_stock_take/services/services.dart';
import 'package:emr_one_stock_take/widgets/loader_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signals/signals_flutter.dart';

class FullScreenMediaViewer extends StatefulWidget {
  const FullScreenMediaViewer({
    required this.initialIndex,
    required this.mediaItems,
    required this.yardCode,
    super.key,
    this.onDelete,
    this.title,
    this.trailing,
  });

  final int initialIndex;
  final List<MediaItem> mediaItems;
  final Future<bool> Function(MediaItem)? onDelete;
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
      icon: Icon(icon, size: 30),
      color: color,
      onPressed: onPressed,
    );
  }

  List<Widget> _buildBottomActions(BuildContext context, MediaItem item) {
    final actions = <Widget>[];
    final colors = Theme.of(context).colorScheme;

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: theme.appBarTheme.backgroundColor,
      ),
      child: LoaderWrapper(
        showLoader: showLoader,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: theme.appBarTheme.backgroundColor,
            title: Text(widget.title ?? ''),
            leading: BackButton(color: theme.colorScheme.surface),
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
                height: AppConstants.appSearchBarHeight,
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
                    final localImagePath = MediaUtility.getLocalPath(
                      item.mediaUrl,
                      item.localDir,
                    );

                    return localImagePath != null
                        ? Image.file(File(localImagePath), fit: BoxFit.cover)
                        : Image.network(
                            item.remoteUrl,
                            headers: {'Authorization': 'Bearer ${item.token}'},
                            fit: BoxFit.fitWidth,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator(
                                    value:
                                        loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                  .cumulativeBytesLoaded /
                                              loadingProgress
                                                  .expectedTotalBytes!
                                        : null,
                                  ),
                                ),
                              );
                            },
                          );
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
