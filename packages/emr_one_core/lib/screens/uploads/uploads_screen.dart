import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/emr_one_core_theme.dart';
import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:flutter/material.dart';

extension BackgroundTransferStatusExtensions on BackgroundTransferStatus {
  String displayName(BuildContext context) {
    switch (this) {
      case BackgroundTransferStatus.pending:
        return context.l10n.pending;
      case BackgroundTransferStatus.completed:
        return context.l10n.completed;
      case BackgroundTransferStatus.failed:
        return context.l10n.failed;
      case BackgroundTransferStatus.abandoned:
        return context.l10n.abandoned;
    }
  }
}

class UploadsScreen extends StatefulWidget {
  const UploadsScreen({super.key});

  @override
  State<UploadsScreen> createState() => _UploadsScreenState();

  static const kStatus = 'status';
}

class _UploadsScreenState extends State<UploadsScreen> {
  final _uploads = ValueNotifier<List<BackgroundUpload>>([]);

  final _filterController = UploadsFilterController();

  @override
  void initState() {
    super.initState();

    _filterController.filters.addListener(refreshData);

    EmrBackgroundService.instance.uploads.addListener(refreshData);
    refreshData();
  }

  @override
  void dispose() {
    _filterController.filters.removeListener(refreshData);

    EmrBackgroundService.instance.uploads.removeListener(refreshData);

    super.dispose();
  }

  void refreshData() {
    final selectedStatus = _filterController.filters.value
        .firstWhere((element) => element.key == UploadsScreen.kStatus)
        .value as BackgroundTransferStatus;

    final data = EmrBackgroundService.instance.uploads.value
        .where((upload) => upload.status == selectedStatus)
        .toList();

    // Sort the pending list so the next upload is at the top,
    // and the rest by most recently finished first.
    data.sort((a, b) {
      if (selectedStatus == BackgroundTransferStatus.pending) {
        // Sort ascending
        return a.timestamp.compareTo(b.timestamp);
      }

      // Sort descending.
      return b.timestamp.compareTo(a.timestamp);
    });

    _uploads.value = [...data];
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: EmrFilter(
                controller: _filterController,
                padding: const EdgeInsets.only(
                  top: Insets.gutter,
                  right: Insets.gutter,
                ),
                innerPadding: const EdgeInsets.only(
                  left: Insets.gutter,
                ),
                showAddFilter: false,
              ),
            ),
          ],
        ),
        Expanded(
          child: ValueListenableBuilder<List<BackgroundUpload>>(
            valueListenable: _uploads,
            builder: (context, list, _) {
              if (list.isEmpty) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.upload_file,
                      size: 120,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(height: Insets.gutter),
                    Text(
                      context.l10n.noUploads,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                );
              }

              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final item = list[index];

                  return Dismissible(
                    key: Key(item.id),
                    // Don't allow pending uploads to be deleted.
                    direction: item.status == BackgroundTransferStatus.pending
                        ? DismissDirection.none
                        : DismissDirection.endToStart,
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding:
                          const EdgeInsets.symmetric(horizontal: Insets.gutter),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    onDismissed: (direction) {
                      setState(() => list.remove(item));

                      EmrBackgroundService.instance.deleteUpload(item);
                    },
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(Insets.gutter),
                      leading: ColoredBox(
                        color: Theme.of(context).colorScheme.onInverseSurface,
                        child: Image.file(
                          width: 100,
                          File(item.source),
                        ),
                      ),
                      title: Text(
                        File(item.source).path.split('/').last,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: (item.status ==
                              BackgroundTransferStatus.pending)
                          ? LinearProgressIndicator(
                              value: item.progress / 100.0,
                              minHeight: 5,
                              backgroundColor: Colors.grey[300],
                              borderRadius: BorderRadius.circular(5),
                            )
                          : Text(item.timestamp.toLocal().asyMMdtime(locale)),
                      trailing: switch (item.status) {
                        BackgroundTransferStatus.completed => const Icon(
                            Icons.check_circle_rounded,
                            color: Colors.green,
                          ),
                        BackgroundTransferStatus.failed => const Icon(
                            Icons.error,
                            color: EmrOneCoreTheme.kError,
                          ),
                        BackgroundTransferStatus.abandoned => const Icon(
                            Icons.cancel,
                            color: EmrOneCoreTheme.kError,
                          ),
                        _ => const SizedBox(),
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class UploadsFilterController extends EmrFilterController {
  UploadsFilterController()
      : super(
          filterContentBuilder: (context, filter, controller) {
            return EmrFilterDropdown<BackgroundTransferStatus,
                BackgroundTransferStatus>(
              Key(filter.key),
              filter,
              controller,
              (pattern, filterController) => Future.value(
                BackgroundTransferStatus.values.where(
                  (element) => element
                      .displayName(context)
                      .contains(RegExp(pattern, caseSensitive: false)),
                ),
              ),
              close: Navigator.of(context).pop,
              getTitle: (suggestion) => suggestion.displayName(context),
              getValue: (suggestion) => suggestion,
            );
          },
          filters: [
            EmrFilterModel<BackgroundTransferStatus>(
              key: UploadsScreen.kStatus,
              name: 'Status',
              enableDelete: false,
              value: BackgroundTransferStatus.pending,
              textBuilder: (context, filterModel) => Text(
                ((filterModel as EmrFilterModel<BackgroundTransferStatus>)
                        .value!)
                    .displayName(context),
              ),
            ),
          ],
        );
}
