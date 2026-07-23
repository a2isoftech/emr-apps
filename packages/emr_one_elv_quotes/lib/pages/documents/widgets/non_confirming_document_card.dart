import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:emr_one_elv_quotes/pages/documents/controllers/controller.dart';
import 'package:emr_one_elv_quotes/pages/documents/dialogs/dialogs.dart';
import 'package:emr_one_elv_quotes/pages/documents/widgets/documents_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class NonConfirmingDocumentCard extends StatefulWidget {
  const NonConfirmingDocumentCard({required this.document, super.key});
  final NonConformingPartDocumentsModel document;

  @override
  State<NonConfirmingDocumentCard> createState() =>
      _NonConfirmingDocumentCardState();
}

class _NonConfirmingDocumentCardState extends State<NonConfirmingDocumentCard> {
  late DocumentsController controller;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<DocumentsController>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getImage(widget.document.path),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          controller.removeImageFromNonCorList(widget.document);
          return const SizedBox();
        }
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.data == null) {
          controller.removeImageFromNonCorList(widget.document);
          return const SizedBox();
        }
        return Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Insets.gutter / 2),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          child: InkWell(
            onTap: () async {
              await showDialog<void>(
                context: context,
                builder: (context) {
                  return ShowExpandedDialog(
                    title: widget.document.partName,
                    image: snapshot.data!,
                    bottomChildren: [
                      BottomTextWidget(
                        isInitialText: true,
                        title: context.l10n.lastUpdated,
                        text: DateFormat('dd/MMM/yy hh:mm a')
                            .format(widget.document.updatedAt),
                      ),

                      //NOTE: That need to be implemented,
                      //information is not available in
                      //the current context
                      // BottomTextWidget(
                      //   title: context.l10n.takenBy,
                      //   text: '',
                      // ),
                    ],
                  );
                },
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.gutter,
                    vertical: Insets.gutter / 2,
                  ),
                  child: Text(
                    widget.document.partName,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                  ),
                ),
                const SizedBox(
                  height: Insets.gutter / 4,
                ),
                SizedBox(
                  height: 200,
                  child: Image.memory(
                    snapshot.data!,
                    fit: BoxFit.fill,
                    width: double.maxFinite,
                  ),
                ),
                const SizedBox(
                  height: Insets.gutter / 2,
                ),
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
                      const SizedBox(
                        height: Insets.gutter / 4,
                      ),

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
        );
      },
    );
  }
}
