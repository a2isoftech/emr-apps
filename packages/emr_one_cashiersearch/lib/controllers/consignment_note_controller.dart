import 'dart:typed_data';

import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_one_cashiersearch/common/common.dart';
import 'package:emr_one_cashiersearch/constants/ticket_constants.dart';
import 'package:emr_one_cashiersearch/extensions/party_name_extension.dart';
import 'package:emr_one_cashiersearch/extensions/yard_address_extension.dart';
import 'package:emr_one_cashiersearch/models/models.dart';
import 'package:emr_one_cashiersearch/services/consignment_note_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/consignment/hazardous_waste_product.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';

class ConsignmentNoteController {
  ConsignmentNoteController({required this.service});
  final IConsignmentNoteService service;

  ValueNotifier<Uint8List?> signatureImage = ValueNotifier(null);
  ValueNotifier<List<HazardousWasteProduct>> hwGrades = ValueNotifier([]);
  ValueNotifier<List<HazardousRequestData>> hwRequestData = ValueNotifier([]);
  ValueNotifier<Map<String, String>> originalWasteManagementOperations =
      ValueNotifier({});

  ValueNotifier<Yard?> ticketYard = ValueNotifier(null);

  Ticket? ticket;

  ValueNotifier<ConsignmentNoteData> formData =
      ValueNotifier(ConsignmentNoteData());

  FocusNode? firstInvalidNode;
  Future<ApiResponse<Ticket>> getTicketById(String ticketId) {
    return service.getTicketById(ticketId);
  }

  Address? getYardAddress() {
    if (ticketYard.value != null) {
      return Address(
        address1: ticketYard.value!.addressLine1,
        address2: ticketYard.value!.addressLine2,
        address3: ticketYard.value!.addressLine3,
        address4: ticketYard.value!.addressLine4,
        address5: ticketYard.value!.addressLine5,
        address6: ticketYard.value!.addressLine6,
        postCode: ticketYard.value!.postCode,
      );
    }
    return null;
  }

  Future<void> populateHazardousWasteProducts(Ticket ticket) async {
    hwGrades.value = [];
    hwRequestData.value = [];
    originalWasteManagementOperations.value = {};
    final products = ticket.lines
        ?.where((x) => x.ewcCode?.endsWith('*') ?? false)
        .map((x) => x.product?.code ?? '')
        .toList();

    final grades = await service.getHazardousWasteProducts(products ?? []);
    if (grades.isNotEmpty) {
      final existingProds =
          ticket.lines?.where((x) => x.ewcCode?.endsWith('*') ?? false);
      existingProds?.forEach((el) {
        final hwg = HazardousWasteProduct.fromJson(
          grades.firstWhere((x) => x.productCode == el.product?.code).toJson(),
        );
        hwGrades.value.add(hwg);
        hwRequestData.value
            .add(HazardousRequestData.fromHwGrades(hwg, el.netWeight));
      });
      hwGrades.value = [...hwGrades.value];
      hwRequestData.value = [...hwRequestData.value];
      for (final e in hwGrades.value) {
        originalWasteManagementOperations.value.addAll(
          {e.productCode: e.wasteManagementOperationRDCode},
        );
      }
      originalWasteManagementOperations.value =
          Map.from(originalWasteManagementOperations.value);
    }
  }

  void populateForm(Ticket ticket, UserInfo userInfo, BuildContext context) {
    final yardAddress = getYardAddress();
    final isInwardTicket = ticket.ticketType == TicketType.inwards;
    final account = ticket.account;
    final carrier = ticket.haulier ?? ticket.account;
    final frmData = formData.value;
    frmData.carrierAddress.value =
        carrier.address?.asString(includePostCode: true) ?? '';
    final accountPreference =
        carrier.details?.accountContacts.first.value?.contactPreferences;
    final carierEmail = accountPreference?.email;
    final carierPhone = accountPreference?.phone;
    frmData.carrierEmail.value = carierEmail != null
        ? carierEmail.enabled
            ? carierEmail.value
            : ''
        : '';
    frmData.carrierPhone.value = carierPhone != null
        ? carierPhone.enabled
            ? carierPhone.value
            : ''
        : '';
    frmData.carrierRegistrationNumber.value = carrier
            .details?.businessDetail?.licenseExemption?.wasteRegCarrierNumber ??
        '';

    frmData.consigneeOnBehalfOf.value = TicketConstants.emrName;
    frmData.carrierVehicleReg.value = ticket.transportDetails.vehicleReg ?? '';
    frmData.consigneePartyName.value = userInfo.name;

    if (isInwardTicket) {
      frmData.wasteReceiverAddress.value = yardAddress?.asString() ?? '';
      frmData.wasteReceiverPostCode.value = yardAddress?.postCode ?? '';

      frmData.wasteProducerAddress.value = account.address?.asString() ?? '';
      frmData.wasteProducerPostCode.value = account.address?.postCode ?? '';
      frmData.consigneePartyAddress.value = yardAddress?.asString() ?? '';
      frmData.consigneePostcode.value = yardAddress?.postCode ?? '';
      frmData.consigneeWmlExeNo.value = ticketYard.value?.wmlExemptionNo ?? '';
      frmData.consignorName.value = getContactName(ticket);
      frmData.wasteRejectionReason.value =
          TicketsUtility.getWasteRejectedReasonTypeString(
        WasteRejectedReason.noNoteSupplied,
        context,
      );
      if (account.accountNumber?.isEMR() ?? false) {
        frmData.onBehalfOf.value = TicketConstants.emrName;
        frmData.processGivingRiseToWaste.value =
            TicketConstants.emrIndustryType;
        frmData.sicCode.value = TicketConstants.emrSIC;
      } else {
        frmData.sicCode.value = account.details?.sicCode ?? '';
        //todo process giving rise to waste values update here from
      }

      frmData.onBehalfOf.value = account.name ?? '';

      final accountPreference =
          account.details?.accountContacts.first.value?.contactPreferences;
      final accountEmail = accountPreference?.email;
      final accountPhone = accountPreference?.phone;
      frmData.premisesEmail.value = accountEmail != null
          ? accountEmail.enabled
              ? accountEmail.value
              : ''
          : '';
      frmData.premisesPhone.value = accountPhone != null
          ? accountPhone.enabled
              ? accountPhone.value
              : ''
          : '';
    } else {
      frmData.wasteProducerAddress.value = yardAddress?.asString() ?? '';
      frmData.wasteProducerPostCode.value = yardAddress?.postCode ?? '';

      frmData.wasteReceiverAddress.value = account.address?.asString() ?? '';
      frmData.wasteReceiverPostCode.value = account.address?.postCode ?? '';
      frmData.onBehalfOf.value = TicketConstants.emrName;
      frmData.sicCode.value = TicketConstants.emrSIC;

      frmData.processGivingRiseToWaste.value = TicketConstants.emrIndustryType;
      frmData.wasteReceivedBy.value = (account.accountNumber?.isEMR() ?? false)
          ? TicketConstants.emrName
          : (account.name ?? '');
    }
    frmData.carrierOnBehalfOf.value = (account.accountNumber?.isEMR() ?? false)
        ? TicketConstants.emrName
        : (account.name ?? '');

    formData.value = frmData;
  }

  String getContactName(Ticket ticket) {
    final partyContacts = ticket.account.details?.accountContacts;
    try {
      final hsComplianceContact = partyContacts?.where(
        (element) => element.value?.contactTypes.contains('SALES') ?? false,
      );
      final envComplianceContact = partyContacts?.where(
        (element) => element.value?.contactTypes.contains('DELIVERY') ?? false,
      );
      final mainContact = partyContacts?.where(
        (element) => element.value?.contactTypes.contains('MAIN') ?? false,
      );

      if (!(ticket.account.accountNumber?.isEMR() ?? true)) {
        final hFirstName =
            hsComplianceContact?.firstOrNull?.value?.firstName ?? '';
        final hSecondName =
            hsComplianceContact?.firstOrNull?.value?.lastName ?? '';
        final eFirstName =
            envComplianceContact?.firstOrNull?.value?.firstName ?? '';
        final eSecondName =
            envComplianceContact?.firstOrNull?.value?.lastName ?? '';
        if (hFirstName.isNotEmpty && hSecondName.isNotEmpty) {
          return '$hFirstName $hSecondName';
        } else if (eFirstName.isNotEmpty && eSecondName.isNotEmpty) {
          return '$eFirstName $eSecondName';
        }
      }
      final mFirstName = mainContact?.firstOrNull?.value?.firstName ?? '';
      final mSecondName = mainContact?.firstOrNull?.value?.lastName ?? '';
      if (mFirstName.isNotEmpty && mSecondName.isNotEmpty) {
        return '$mFirstName $mSecondName';
      }
      return '';
    } catch (exception) {
      return '<FAILED_TO_GET_CONTACT>';
    }
  }

  Future<ApiResponse<String>> generateNewConsignmentNumber(String partyName) {
    return service.generateNewConsignmentNumber(partyName);
  }

  Future<ApiResponse<Yard>> getYardDetails(String yardCode) {
    return service.getYardById(yardCode);
  }

  Future<ApiResponse<bool>> createNewConsignment(
    ConsignmentNoteRequestData data,
    Uint8List signature,
  ) async {
    return service.createNewConsignment(data, signature);
  }

  Future<ApiResponse<bool>> scanConsignmentNote(
    String ticketId,
    String consignmentNoteCode,
    Uint8List consignmentImage,
  ) async {
    return service.scanConsignmentNote(
      ticketId,
      consignmentNoteCode,
      consignmentImage,
    );
  }
}
