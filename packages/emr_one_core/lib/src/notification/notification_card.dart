import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/models/notification/emr_one_notification.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:emr_one_core/utilities/adaptive_breakpoints.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

@internal
class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.notification,
    required this.dismiss,
    super.key,
  });

  final EmrOneNotificationBase notification;
  final void Function() dismiss;

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final windowType = getWindowType(context);
        final width =
            windowType >= EmrOneConstants.appDefaultSmallSizeBreakpoint
            ? appConfig.notificationWidthWeb.toDouble()
            : MediaQuery.sizeOf(context).width * 0.9;

        final notificationLocal = notification;

        if (notificationLocal is EmrOneProgressNotification) {
          return ValueListenableBuilder<double>(
            valueListenable: notificationLocal.progress,
            builder: (context, value, _) {
              final clampedValue = value.clamp(0.0, 1.0);

              return _notificationContent(
                    width: width,
                    backgroundColour: notification.backgroundColour,
                    context: context,
                    clampedValue: clampedValue,
                    inProgressText:
                        notificationLocal.inProgressText ??
                        context.l10n.inProgress,
                  )
                  .animate(
                    target: clampedValue >= 1 ? 1 : 0,
                    onPlay: (c) => c.repeat(),
                  )
                  .shimmer(
                    duration: const Duration(milliseconds: 900),
                    color: Colors.white.withAlpha(60),
                  );
            },
          );
        }

        return _notificationContent(
          width: width,
          backgroundColour: notification.backgroundColour,
          context: context,
        );
      },
    );
  }

  ConstrainedBox _notificationContent({
    required double width,
    required Color backgroundColour,
    required BuildContext context,
    double? clampedValue,
    String? inProgressText,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: width, maxWidth: width),
      child: Material(
        elevation: 4,
        type: .card,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            border: .all(color: backgroundColour),
            borderRadius: .circular(5),
            color: backgroundColour,
            boxShadow: [
              BoxShadow(
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.16),
                blurRadius: Insets.gutter / 4,
                spreadRadius: Insets.gutter / 8,
              ),
            ],
          ),
          child: Padding(
            padding: const .symmetric(
              horizontal: Insets.gutter / 2,
              vertical: Insets.gutter / 2,
            ),
            child: Column(
              crossAxisAlignment: .start,
              spacing: Insets.gutter / 3,
              children: [
                Row(
                  spacing: Insets.gutter / 2,
                  children: [
                    Padding(
                      padding: const .only(left: Insets.gutter / 3),
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: EmrIcon(
                          notification.icon,
                          color: backgroundColour,
                          size: 14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        notification.title.toUpperCase(),
                        maxLines: 2,
                        overflow: .ellipsis,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: .centerRight,
                      child: GestureDetector(
                        onTap: dismiss,
                        child: const Icon(Icons.close, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const .symmetric(horizontal: Insets.gutter / 2),
                  child: Text(
                    notification.description,
                    maxLines: 3,
                    overflow: .ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white),
                  ),
                ),
                if (clampedValue != null)
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const .symmetric(
                            vertical: Insets.gutter / 3,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      inProgressText ?? context.l10n.inProgress,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    '${clampedValue * 100}%',
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const .only(top: Insets.gutter / 3),
                                child: LinearProgressIndicator(
                                  value: clampedValue,
                                  color: clampedValue >= 1
                                      ? EmrColours.primaryGreen
                                      : Theme.of(context).colorScheme.primary,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ).animate().fadeIn(),
    );
  }
}
