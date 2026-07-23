import 'dart:async';

import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_cashiersearch/screens/consignment_note/cards/cards.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/consignment/hazardous_waste_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsignmentNoteCreateNew extends StatefulWidget {
  const ConsignmentNoteCreateNew({required this.ticketId, super.key});

  final String ticketId;

  @override
  State<ConsignmentNoteCreateNew> createState() =>
      _ConsignmentNoteCreateNewState();
}

class _ConsignmentNoteCreateNewState extends State<ConsignmentNoteCreateNew>
    with TickerProviderStateMixin {
  late final bool isInwardTicket;

  late UserInfoService userInfoService;
  late ConsignmentNoteController controller;
  late MediaService mediaService;
  late Ticket ticket;
  late Future<ApiResponse<Ticket>> getTicketById;
  final consignmentForm = GlobalKey<FormState>();
  ValueNotifier<bool> noteCreated = ValueNotifier(false);

  @override
  void initState() {
    controller = Provider.of<ConsignmentNoteController>(context, listen: false);
    mediaService = Provider.of<MediaService>(context, listen: false);

    getTicketById = controller.getTicketById(widget.ticketId);
    controller.signatureImage.value = null;
    super.initState();
  }

  Future<void> fetchHazardousWasteData() async {
    if (mounted) {
      unawaited(
        EmrDialog.busy(context, titleText: context.l10n.fetchingHazardousData),
      );
    }
    await controller.populateHazardousWasteProducts(ticket);
    if (mounted) {
      context.pop();
    }
  }

  Future<void> fetchConsignmentNumber() async {
    if (mounted) {
      unawaited(
        EmrDialog.busy(
          context,
          titleText: context.l10n.generatingConsignmentNumber,
        ),
      );
    }
    final result = await controller.generateNewConsignmentNumber(
      ticket.account.name ?? '',
    );
    if (result.success && mounted) {
      final formData = controller.formData.value;
      formData.consignmentNumber.value = result.data ?? '';
      formData.premisesCode.value = formData.consignmentNumber.value
          .split('/')
          .first;
      controller.formData.value = formData;
    }

    if (mounted) {
      context.pop();
    }
  }

  Future<void> fetchYardDetails() async {
    final response = await controller.getYardDetails(ticket.yardCode);
    if (response.success) {
      controller.ticketYard.value = response.data;
    }
  }

  void initializeForm() {
    controller.populateForm(ticket, userInfoService.userInfo, context);
  }

  Future<void> _initializeData() async {
    if (mounted) {
      controller.formData.value = ConsignmentNoteData();
      await fetchYardDetails();
      initializeForm();
      await fetchConsignmentNumber();
      await fetchHazardousWasteData();
    }
  }

  @override
  Widget build(BuildContext context) {
    userInfoService = Provider.of<UserInfoService>(context);
    final textTheme = Theme.of(context).textTheme;

    return ValueListenableBuilder(
      valueListenable: noteCreated,
      builder: (context, consignmentCreated, child) {
        if (consignmentCreated) {
          return Center(
            child: Text(context.l10n.consignmentCreatedSuccessfully),
          );
        }
        return FutureBuilder(
          future: getTicketById,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(context.l10n.error, style: textTheme.titleLarge),
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
            ticket = snapshot.data!.data!;
            isInwardTicket = ticket.ticketType == TicketType.inwards;
            _initializeData();
            return Form(
              key: consignmentForm,
              child: ValueListenableBuilder(
                valueListenable: controller.formData,
                builder: (context, formData, child) {
                  return EmrTabBarVerticalView(
                    children: [
                      ConsigneeControlsCard(
                        title: context.l10n.consignmentInfo,
                        consignmentNoteData: formData,
                        controller: controller,
                        isInwardTicket: isInwardTicket,
                      ),
                      WasteControlsCard(
                        title: context.l10n.waste,
                        consignmentNoteData: formData,
                        controller: controller,
                        isInwardTicket: isInwardTicket,
                      ),
                      CarrierControlsCard(
                        title: context.l10n.carrier,
                        consignmentNoteData: formData,
                        controller: controller,
                      ),
                      HazardousWasteControlCard(
                        title: context.l10n.hazardousData,
                        controller: controller,
                        isInwardTicket: isInwardTicket,
                      ),
                      SignatureControlCard(
                        title: context.l10n.signatureFull.toTitleCase(),
                        controller: controller,
                        mediaService: mediaService,
                        ticketNumber: ticket.ticketNumber.toString(),
                        yardCode: ticket.yardCode,
                      ),
                    ],
                    onSave: () async {
                      await finalSubmit(ticket);
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  Future<void> finalSubmit(Ticket ticket) async {
    controller.firstInvalidNode = null;
    if (!consignmentForm.currentState!.validate()) {
      controller.firstInvalidNode?.requestFocus();
      return;
    }

    if (controller.signatureImage.value == null) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.addSignature,
      );
      return;
    }

    unawaited(
      EmrDialog.busy(context, titleText: context.l10n.createConsignmentNote),
    );
    final formData = ConsignmentNoteRequestData.fromConsignmentData(
      controller.formData.value,
      ticket,
      ticket.yardCode,
      getGradesFromRequestData(controller.hwRequestData.value),
    );
    final result = await controller.createNewConsignment(
      formData,
      controller.signatureImage.value!,
    );

    if (!result.success && mounted) {
      context.pop();
      EmrLogger.error(
        source: context.l10n.createConsignmentNote,
        result.message,
      );
      await TicketsUtility.errorDialogWidget(
        context,
        '${context.l10n.errSomethingWentWrong}, ${context.l10n.pleaseTryAgain}',
      );
      return;
    }

    if (mounted) {
      context.pop();
      noteCreated.value = true;
    }
  }

  List<HazardousWasteProduct> getGradesFromRequestData(
    List<HazardousRequestData>? data,
  ) {
    if (data == null) {
      return [];
    }
    if (data.isNotEmpty) {
      return data
          .map(
            (x) => HazardousWasteProduct(
              id: x.id,
              productCode: '',
              europeanWasteCode: '',
              component: x.component.value,
              concentration: x.concentration.value,
              physicalForm: '',
              hazardCodes: x.hazardCodes.value,
              containerType: x.containerType.value,
              description: x.description.value,
              wasteManagementOperationRDCode:
                  x.wasteManagementOperationRDCode.value ?? '',
              packingGroup: '',
              properShippingName: '',
              specialHandlingRequirements: '',
              uniDnumber: '',
              unClass: '',
              purchasesOrSales: '',
            ),
          )
          .toList();
    }
    return [];
  }
}
