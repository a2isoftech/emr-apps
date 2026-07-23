import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/controllers/ticket_gallery_controller.dart';
import 'package:emr_one_tickets/widgets/ticketgallery/ticket_gallery_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TicketGalleryWidget extends StatefulWidget {
  const TicketGalleryWidget({required this.controller, super.key});

  final TicketGalleryController controller;

  @override
  State<TicketGalleryWidget> createState() => _TicketGalleryWidgetState();
}

class _TicketGalleryWidgetState extends State<TicketGalleryWidget> {
  bool isSaving = false;

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Navigator.of(context).canPop()
                  ? const BackButton()
                  : BackButton(
                      onPressed: () {
                        context.go('/tickets');
                      },
                    ),
            ),
            // show a hyperlink for publicUrl if it is not null
            if (widget.controller.gallery.publicUrl != null) ...[
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: InkWell(
                  onTap: () async {
                    // navigate to the publicUrl
                    await launchUrl(
                      Uri.parse(widget.controller.gallery.publicUrl!),
                    );
                  },
                  child: Row(
                    children: [
                      const Text(
                        'Public Image Gallery',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const SizedBox(width: Insets.gutter),
                      const Icon(
                        Icons.open_in_new,
                        size: 16,
                        color: Colors.blue,
                      ),
                      // copy to clipboard
                      const SizedBox(width: Insets.gutter),
                      Tooltip(
                        message: 'Copy to clipboard',
                        child: InkWell(
                          onTap: () async {
                            await Clipboard.setData(
                              ClipboardData(
                                text: widget.controller.gallery.publicUrl!,
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.copy,
                            size: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            if (widget.controller.gallery.publicUrl == null) const Spacer(),
            Visibility(
              visible: widget.controller.gallery.publicUrl == null,
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: SizedBox(
                  width: 200,
                  child: OutlinedButton(
                    onPressed: isSaving
                        ? null
                        : () async {
                            setState(() => isSaving = true);

                            try {
                              final albumResult = await widget
                                  .controller
                                  .ticketsService
                                  .createPublicAlbumFromTicketGallery(
                                    widget.controller.gallery.id,
                                  );
                              if (albumResult.$1 == true) {
                                setState(
                                  () => widget.controller.gallery.publicUrl =
                                      albumResult.$2,
                                );

                                final saveGalleryResult = await widget
                                    .controller
                                    .ticketsService
                                    .saveTicketGallery(
                                      widget.controller.gallery,
                                      changeVector:
                                          widget.controller.currentChangeVector,
                                    );

                                setState(
                                  () => widget.controller.currentChangeVector =
                                      saveGalleryResult.data!.$2,
                                );
                              } else {
                                if (context.mounted) {
                                  unawaited(
                                    EmrModal.showMessageBar(
                                      context,
                                      context.l10n.anErrorOccurredTryAgain,
                                      messageType: MessageBarTypes.error,
                                    ),
                                  );
                                }
                              }
                            } catch (e) {
                              if (context.mounted) {
                                unawaited(
                                  EmrModal.showMessageBar(
                                    context,
                                    'An error occurred.',
                                    messageType: MessageBarTypes.error,
                                  ),
                                );
                              }
                            }

                            setState(() => isSaving = false);
                          },
                    child: isSaving
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(),
                          )
                        : const Text('Get public link'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: OutlinedButton(
                onPressed: () async => _downloadZip(appConfig),
                child: const Text('Download Zip'),
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: widget.controller.gallery.tickets!
                  .map(
                    (e) => TicketGalleryImages(
                      images: groupBy(
                        e.mediaAssets,
                        (media) => media.url,
                      ).values.map((media) => media.first).toList(),
                      ticket: e,
                      getInitialSate: (url) => !widget
                          .controller
                          .gallery
                          .excludedImageUrls
                          .contains(url),
                      onImageSelected:
                          (String url, {bool selected = false}) async {
                            if (widget.controller.gallery.excludedImageUrls
                                .contains(url)) {
                              widget.controller.gallery.excludedImageUrls
                                  .remove(url);
                            } else {
                              widget.controller.gallery.excludedImageUrls.add(
                                url,
                              );
                            }

                            setState(() {
                              isSaving = true;
                            });

                            final result = await widget
                                .controller
                                .ticketsService
                                .saveTicketGallery(
                                  widget.controller.gallery,
                                  changeVector:
                                      widget.controller.currentChangeVector,
                                );

                            setState(() {
                              widget.controller.currentChangeVector =
                                  result.data!.$2;

                              isSaving = false;
                            });
                          },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  /// Downloads a zip file containing all the images in the gallery.
  /// This code determines which images to download based on the selected
  /// and deselected (excludedImageUrls) images in the gallery.
  Future<void> _downloadZip(AppConfig config) async {
    final completer = signal<bool>(false);

    final completeUrls = widget.controller.gallery.tickets!.map(
      (t) => groupBy(
        t.mediaAssets,
        (media) => media.url,
      ).values.map((media) => media.first).map((a) => (a.url, a.sasUrl!)),
    );

    final finalUrls = [for (final sublist in completeUrls) ...sublist];

    final filteredUrls = finalUrls.toSet()
      ..removeWhere(
        (element) =>
            widget.controller.gallery.excludedImageUrls.contains(element.$1) ||
            element.$1.startsWith(
              'v/',
            ), //excluding videos as compress service dont support
      );

    final filename = widget.controller.gallery.id.split('/').last;

    unawaited(_showDownloadingZipDlg(completer));

    final result = await widget.controller.createZipArchive(
      config.endpoint('ticketGalleryZipUrl'),
      widget.controller.gallery.id,
      filteredUrls.map((e) => e.$2).toList(),
      filename,
    );

    completer.value = true;

    if (result == false && mounted) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          'An error occurred while downloading the zip file.',
          messageType: MessageBarTypes.error,
        ),
      );
    }
  }

  Future<void> _showDownloadingZipDlg(Signal<bool> completer) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        effect(() {
          if (completer.value == true) {
            if (context.mounted && Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          }
        });
        return AlertDialog(
          title: const Text('Downloading Zip'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  children: [
                    Icon(
                      Icons.downloading,
                      size: 64,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(Insets.gutter),
                            child: Text(
                              'This message will '
                              'automatically close when the download '
                              'is complete.\n\nOr you can press OK '
                              'and continue to use the app, the download '
                              'will continue.',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(Insets.gutter),
                            child: LinearProgressIndicator(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(context.l10n.ok),
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
