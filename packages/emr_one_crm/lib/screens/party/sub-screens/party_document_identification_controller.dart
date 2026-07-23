// ignore_for_file: lines_longer_than_80_chars

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/party_document_identification.dart';
import 'package:emr_one_crm/services/party_info_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PartyDocumentController extends ChangeNotifier {
  PartyDocumentController({
    required this.partyInfoService,
    required this.coreApiService,
  });

  late String partyAccountNo;
  final PartyInfoService partyInfoService;
  final CoreApiService coreApiService;

  final ValueNotifier<bool> isBusy = ValueNotifier(true);

  List<PartyDocumentIdentificationModel> _activeDocuments =
      List<PartyDocumentIdentificationModel>.empty(growable: true);

  List<PartyDocumentIdentificationModel> _expiredDocuments =
      List<PartyDocumentIdentificationModel>.empty(growable: true);

  List<PartyDocumentIdentificationModel> get activeDocuments {
    return _activeDocuments;
  }

  set activeDocuments(List<PartyDocumentIdentificationModel> documents) {
    _activeDocuments = documents.toList();
  }

  List<PartyDocumentIdentificationModel> get expiredDocuments {
    return _expiredDocuments;
  }

  set expiredDocuments(List<PartyDocumentIdentificationModel> documents) {
    _expiredDocuments = documents.toList();
  }

  Future<void> getImageList(
    Locale activeLocale,
    String partyAccountNo,
    BuildContext context,
  ) async {
    isBusy.value = true;
    final documentList = await coreApiService.accountService
        .getAccountDocumentList(partyAccountNo);

    activeDocuments = documentList
        .where(
      (element) =>
          (element.media?.sasUrl ?? '').isNotEmpty &&
          (element.validTo ?? DateTime.now()).isAfter(DateTime.now()),
    )
        .map((e) {
      final diffDays =
          (e.validTo ?? DateTime.now()).difference(DateTime.now()).inDays;
      if (diffDays <= 7) {
        return PartyDocumentIdentificationModel(
          documentName: e.subType ?? '',
          imageUrl: e.media?.sasUrl ?? '',
          isTagRequired: true,
          tagMessage: '${context.l10n.expiring} $diffDays '
              '${diffDays == 1 ? context.l10n.dayOnly : context.l10n.day}',
        );
      }
      return PartyDocumentIdentificationModel(
        documentName: e.subType ?? '',
        imageUrl: e.media?.sasUrl ?? '',
        isTagRequired: false,
      );
    }).toList();

    expiredDocuments = documentList
        .where(
          (element) =>
              (element.media?.sasUrl ?? '').isNotEmpty &&
              (element.validTo ?? DateTime.now()).isBefore(DateTime.now()),
        )
        .map(
          (e) => PartyDocumentIdentificationModel(
            documentName: e.subType ?? '',
            imageUrl: e.media?.sasUrl ?? '',
            isTagRequired: true,
            isExpired: true,
            tagMessage: '${context.l10n.expired} '
                '${DateFormat.yMd(activeLocale.toString()).format((e.validTo ?? DateTime.now()).toLocal())}',
          ),
        )
        .toList();
    isBusy.value = false;
  }
}
