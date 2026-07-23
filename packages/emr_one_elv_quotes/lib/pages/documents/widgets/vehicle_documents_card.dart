import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:emr_one_elv_quotes/pages/documents/controllers/controller.dart';
import 'package:emr_one_elv_quotes/pages/documents/dialogs/dialogs.dart';
import 'package:emr_one_elv_quotes/pages/documents/widgets/documents_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class VehicleDocumentsCard extends StatefulWidget {
  const VehicleDocumentsCard({required this.document, super.key});
  final VehicleDocumentsResponseModel document;

  @override
  State<VehicleDocumentsCard> createState() => _VehicleDocumentsCardState();
}

class _VehicleDocumentsCardState extends State<VehicleDocumentsCard> {
  late DocumentsController controller;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<DocumentsController>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: controller.getImage(widget.document.path),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError || snapshot.data == null) {
          // Safe state update after frame
          WidgetsBinding.instance.addPostFrameCallback((_) {
            controller.removeImageFromDocumentList(widget.document);
          });
          return const SizedBox();
        }

        final image = snapshot.data;
        final title = VehicleDocumentEnums.fromString(widget.document.imageType)
            .vehicleDocumentEnumToString();

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Insets.gutter / 2),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              child: InkWell(
                onTap: () => _showFullDialog(
                  context,
                  title,
                  image,
                  widget.document.updatedAt,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Insets.gutter,
                        vertical: Insets.gutter / 2,
                      ),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                      ),
                    ),
                    const SizedBox(height: Insets.gutter / 4),
                    SizedBox(
                      height: 200,
                      child: Image.memory(image!, fit: BoxFit.fill),
                    ),
                    const SizedBox(height: Insets.gutter / 2),
                    Padding(
                      padding: const EdgeInsets.all(Insets.gutter / 2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DocumentInfoDetail(
                            title: context.l10n.lastUpdated,
                            info: DateFormat('dd/MMM/yy hh:mm a')
                                .format(widget.document.updatedAt),
                          ),
                          const SizedBox(height: Insets.gutter / 4),
                          if (widget.document.imageType == context.l10n.vin ||
                              widget.document.imageType ==
                                  context.l10n.vrn) ...{
                            DocumentInfoDetail(
                              title: context.l10n.fourDigitsEntered,
                              info: _lastFourDigitFromString(
                                controller.state.documents?.vin,
                              ),
                            ),
                          },
                          const SizedBox(height: Insets.gutter / 4),

                          //NOTE: That need to be implemented,
                          //information is not available in
                          //the current context

                          // DocumentInfoDetail(
                          //   title: context.l10n.takenBy,
                          //   info: '',
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: Insets.gutter / 2),
          ],
        );
      },
    );
  }

  void _showFullDialog(
    BuildContext context,
    String title,
    Uint8List image,
    DateTime lastUpdated,
  ) {
    showDialog<void>(
      context: context,
      builder: (_) => ShowExpandedDialog(
        title: title,
        image: image,
        bottomChildren: [
          BottomTextWidget(
            isInitialText: true,
            title: context.l10n.lastUpdated,
            text: DateFormat('dd/MMM/yy hh:mm a')
                .format(widget.document.updatedAt),
          ),
          if (widget.document.imageType == context.l10n.vin ||
              widget.document.imageType == context.l10n.vrn) ...{
            BottomTextWidget(
              title: context.l10n.fourDigitsEntered,
              text: _lastFourDigitFromString(
                controller.state.documents?.vin,
              ),
            ),
          },
          //NOTE: That need to be implemented,
          //information is not available in
          //the current context
          // BottomTextWidget(
          //   title: context.l10n.takenBy,
          //   text: '',
          // ),
        ],
      ),
    );
  }

  String _lastFourDigitFromString(String? val) {
    return val != null
        ? val.substring(val.length >= 4 ? val.length - 4 : 0)
        : '';
  }
}
