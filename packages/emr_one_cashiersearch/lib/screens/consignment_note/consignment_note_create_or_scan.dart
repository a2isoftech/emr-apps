import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ConsignmentNoteCreateOrScan extends StatefulWidget {
  const ConsignmentNoteCreateOrScan({
    required this.ticketId,
    super.key,
  });

  final String ticketId;

  @override
  State<ConsignmentNoteCreateOrScan> createState() =>
      _ConsignmentNoteCreateOrScanState();
}

class _ConsignmentNoteCreateOrScanState
    extends State<ConsignmentNoteCreateOrScan> {
  late final ConsignmentNoteController controller;
  late Future<ApiResponse<Ticket>> getTicketById;
  ValueNotifier<bool> consignmentCreated = ValueNotifier(false);
  late MediaService mediaService;
  @override
  void initState() {
    controller = Provider.of<ConsignmentNoteController>(context, listen: false);
    mediaService = Provider.of<MediaService>(context, listen: false);
    super.initState();
    getTicketById = controller.getTicketById(widget.ticketId);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: consignmentCreated,
        builder: (context, cconsignmentCreated, child) {
          if (cconsignmentCreated) {
            return Center(
              child: Text(
                context.l10n.consignmentCreatedSuccessfully,
                style: textTheme.titleLarge,
              ),
            );
          }
          return FutureBuilder(
            future: getTicketById,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    context.l10n.error,
                    style: textTheme.titleLarge,
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (!snapshot.data!.success) {
                return Center(
                  child: Text(
                    snapshot.data!.message,
                    style: textTheme.titleLarge,
                  ),
                );
              }
              final ticket = snapshot.data!.data!;
              controller.ticket = ticket;
              return Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  child: EmrCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${context.l10n.ticketNo}: ${ticket.ticketNumber}',
                          style: textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '''${context.l10n.account}: ${ticket.account.name} - ${ticket.account.accountNumber}''',
                          style: textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: Insets.gutter,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        const SizedBox(
                          height: Insets.gutter,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ticket.ticketType == TicketType.inwards
                                    ? TicketConstants.inwardOverviewText
                                    : TicketConstants.outwardOverviewText,
                                style: textTheme.titleMedium,
                              ),
                              const SizedBox(
                                height: Insets.gutter,
                              ),
                              _buildTicketItemsList(
                                context,
                                ticket.lines
                                        ?.where((x) => x.isActive)
                                        .toList() ??
                                    [],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FilledButton(
                              onPressed: () async {
                                await scanConsignmentNote(ticket);
                              },
                              child: Text(context.l10n.scan),
                            ),
                            const SizedBox(
                              width: Insets.gutter,
                            ),
                            FilledButton(
                              onPressed: () async {
                                await createConsignmentNote(ticket);
                              },
                              child: Text(context.l10n.create),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> createConsignmentNote(Ticket ticket) async {
    context.goNamed(
      RoutingPathName.createConsignmentNote,
      params: {
        'ticketNo': ticket.ticketNumber.toString(),
        'yard': ticket.yardCode,
      },
    );
  }

  Future<void> scanConsignmentNote(Ticket ticket) async {
    final consignmentNoteText = ValueNotifier<String>('');
    final scanFormKey = GlobalKey<FormState>();
    final scanFile = ValueNotifier<Uint8List?>(null);
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.addConsignmentNote,
      builder: (context) {
        return SizedBox(
          width: 500,
          child: Center(
            child: Column(
              children: [
                Form(
                  key: scanFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: EmrTextFormField(
                    binding: consignmentNoteText,
                    labelText: context.l10n.consignmentNoteNumber,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [
                      UpperCaseTextFormatter(),
                      MaskTextInputFormatter(
                        mask: '@@@@@@/@@@@@',
                        filter: {
                          '@': RegExp('[A-Z0-9]', caseSensitive: false),
                        },
                      ),
                    ],
                    validator: (consignmentNoteNumber) {
                      if (consignmentNoteNumber == null ||
                          consignmentNoteNumber == '') {
                        return context.l10n.consignmentValidationText;
                      } else if (consignmentNoteNumber.length < 12) {
                        return context.l10n.tooShort;
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: Insets.gutter,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilledButton(
                      onPressed: () async {
                        final file = await ImagePicker()
                            .pickImage(source: ImageSource.camera);
                        if (file != null) {
                          scanFile.value = await file.readAsBytes();
                        }
                      },
                      child: Text(context.l10n.uploadConsignmentNote),
                    ),
                    ValueListenableBuilder(
                      valueListenable: scanFile,
                      builder: (context, file, child) {
                        return Icon(
                          file == null ? Icons.warning : Icons.check,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      onAccept: () async {
        if (!scanFormKey.currentState!.validate() ||
            consignmentNoteText.value.isEmpty) {
          return Future.value();
        }

        if (scanFile.value == null) {
          await TicketsUtility.errorDialogWidget(
            context,
            context.l10n.addConsignmentNoteValidation,
          );
          return Future.value();
        }

        final scanResponse = await controller.scanConsignmentNote(
          ticket.id,
          consignmentNoteText.value,
          scanFile.value!,
        );
        if (!scanResponse.success && mounted) {
          await TicketsUtility.errorDialogWidget(
            context,
            scanResponse.message,
          );
          return;
        }
        consignmentCreated.value = true;
        if (mounted) {
          context.pop();
        }

        return Future.value();
      },
    );
  }

  Widget _buildTicketItemsList(
    BuildContext context,
    List<TicketLine> lines,
  ) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.6,
      child: SingleChildScrollView(
        child: Wrap(
          runSpacing: Insets.gutter / 2,
          spacing: Insets.gutter / 2,
          children: lines.mapIndexed(
            (index, element) {
              final line = lines[index];

              final textTheme = Theme.of(context).textTheme;
              return SizedBox(
                width: 350,
                child: EmrCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        line.product?.code ?? '',
                        style: textTheme.bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: Insets.gutter / 2,
                      ),
                      const Divider(
                        height: 1,
                      ),
                      const SizedBox(
                        height: Insets.gutter / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(context.l10n.product),
                          Text(
                            line.product?.code ?? '',
                            style: textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(context.l10n.description),
                          Text(
                            line.product?.description ?? '',
                            style: textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(context.l10n.netWeight),
                          Text(
                            line.netWeight?.toWeightString() ?? '',
                            style: textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
