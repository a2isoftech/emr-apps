import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum MessageBarTypes { information, warning, error, success }

class EmrModal {
  /// Show a message bar at the bottom of the screen with appropriate colours
  /// and icon for the message type.
  /// The bar will appear within the closest parent Scaffold, such as in a
  /// flyout or modal bottom sheet, or within the main screen itself.
  /// We return a Future, so that we could perform an action after the SnackBar
  /// has been dismissed.
  static Future<void> showMessageBar(
    BuildContext context,
    String message, {
    MessageBarTypes messageType = MessageBarTypes.success,
  }) {
    final notificationController = context.read<EmrOneNotificationController>();
    late final EmrOneNotificationBase notification;

    switch (messageType) {
      case MessageBarTypes.success:
        notification = EmrOneSuccessNotification(
          title: context.l10n.success,
          description: message,
        );
      case MessageBarTypes.information:
        notification = EmrOneNotification(
          title: context.l10n.information,
          description: message,
        );
      case MessageBarTypes.warning:
        notification = EmrOneWarningNotification(
          title: context.l10n.warning,
          description: message,
        );
      case MessageBarTypes.error:
        notification = EmrOneErrorNotification(
          title: context.l10n.error,
          description: message,
        );
    }

    notificationController.showNotification(notification);

    // Return type kept the same to mitigate required changes
    return Future.delayed(Duration.zero);
  }

  /// An adaptive helper which will show a "modal bottom sheet" when
  /// `AppConfig.isWeb` is false, or a `Flyout` when it is `true`.
  static Future<T?> showModalBottomSheetOrFlyout<T>(
    BuildContext context, {
    required Widget child,
  }) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    if (appConfig.isWeb) {
      return Flyout.show<T>(
        context: context,
        builder: (context) => _nestedNavigator(child: child),
        padding: EdgeInsets.zero,
      );
    }

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          minChildSize: 0.5,
          maxChildSize:
              0.93, // The sheet should be below the notch on an iPhone.
          snap: true,
          expand: false,
          builder: (context, scrollController) {
            return ListenableProvider<ScrollController>.value(
              value: scrollController,
              child: SafeArea(
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          width: 60,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: _nestedNavigator(
                        child: child,
                        scrollController: scrollController,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  /// An adaptive helper which will show a modal search when `AppConfig.isWeb`
  /// is false, or an `EOPickerDialog` in a `Flyout` when it is `true`.
  static Future<T?> picker<T extends Object>(
    BuildContext context, {
    required Future<List<T>> Function(String) itemsFuture,
    required String Function(T) itemTitleText,
    required String Function(T) itemSubtitleText,
    String? titleText,
    String? filterText,
  }) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    if (appConfig.isWeb) {
      return Flyout.show<T>(
        context: context,
        builder: (context) => EOPickerDialog<T>(
          titleText: titleText ?? '',
          itemsFuture: itemsFuture,
          getItemTitleText: (item) => itemTitleText(item),
          getItemSubTitleText: (item) => itemSubtitleText(item),
          allowFilter: true,
          filterText: filterText,
          filterCallback: (item, filterTextLower) =>
              itemTitleText(item).contains(
                RegExp(filterTextLower.trim(), caseSensitive: false),
              ) ||
              itemSubtitleText(
                item,
              ).contains(RegExp(filterTextLower.trim(), caseSensitive: false)),
        ),
      );
    }

    return showSearch<T?>(
      context: context,
      delegate: EmrModalSearchDelegate<T>(
        (query) async {
          final items = await itemsFuture(query);

          return items
              .where(
                (item) =>
                    itemTitleText(
                      item,
                    ).contains(RegExp(query.trim(), caseSensitive: false)) ||
                    itemSubtitleText(
                      item,
                    ).contains(RegExp(query.trim(), caseSensitive: false)),
              )
              .toList();
        },
        (item) => ListTile(
          title: Text(itemTitleText(item)),
          subtitle: Text(itemSubtitleText(item)),
        ),
      ),
      query: filterText,
      useRootNavigator: true,
    );
  }

  static final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  /// Build a Navigator with a single scrollable child. [scrollController] is
  /// only needed when we're inside a modal bottom sheet, as that gives us the
  /// ability to swipe up to go full screen.
  static Widget _nestedNavigator({
    required Widget child,
    ScrollController? scrollController,
  }) {
    // Creating a ScaffoldMessenger with child Scaffold allows us to show
    // SnackBars within a modal bottom sheet or flyout.
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: Scaffold(
        body: Navigator(
          onGenerateRoute: (route) => MaterialPageRoute(
            settings: route,
            builder: (context) {
              return SingleChildScrollView(
                controller: scrollController,
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
