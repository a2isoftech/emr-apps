import 'dart:async';
import 'dart:typed_data';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/extensions/identification_subtype_extension.dart';
import 'package:emr_core_api/extensions/identification_type_extension.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ManageDocumentsController extends AccountManagementBaseController {
  ManageDocumentsController({
    required this.coreApiService,
    required this.mediaService,
  }) {
    selectedContactType.addListener(_onContactTypeChanged);
    selectedDocumentType.addListener(onDocumentTypeChanged);
    selectedDocumentSubType.addListener(onDocumentSubTypeChanged);
    pickedFile.addListener(_onPickedFileChanged);
  }

  final CoreApiService coreApiService;
  final MediaService mediaService;

  Account? account;
  bool _isEditMode = false;
  bool _isPrefillingDocument = false;
  DocumentGridItem? _editingDocument;

  bool get isEditMode => _isEditMode;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final EmrGridController<DocumentGridItem> gridController =
      EmrGridController<DocumentGridItem>(data: ValueNotifier([]));

  final ValueNotifier<Enum$ContactType?> selectedContactType =
      ValueNotifier<Enum$ContactType?>(null);
  final ValueNotifier<Contact?> selectedContact = ValueNotifier<Contact?>(null);
  final ValueNotifier<KeyValuePair<Enum$IdentificationType, String>?>
      selectedDocumentType =
          ValueNotifier<KeyValuePair<Enum$IdentificationType, String>?>(null);
  final ValueNotifier<KeyValuePair<Enum$IdentificationSubType, String>?>
  selectedDocumentSubType =
      ValueNotifier<KeyValuePair<Enum$IdentificationSubType, String>?>(null);
  final ValueNotifier<XFile?> pickedFile = ValueNotifier<XFile?>(null);

  final ValueNotifier<bool> isReadingDocument = ValueNotifier(false);
  final ValueNotifier<UploadedDocumentDetailsModel?> extracted =
      ValueNotifier<UploadedDocumentDetailsModel?>(null);
  final ValueNotifier<DateTime?> extractedValidFrom = ValueNotifier<DateTime?>(
    null,
  );
  final ValueNotifier<DateTime?> extractedValidTo = ValueNotifier<DateTime?>(
    null,
  );
  final ValueNotifier<String?> extractedIdentificationNumber =
      ValueNotifier<String?>(null);
  final ValueNotifier<String?> readError = ValueNotifier<String?>(null);
  final ValueNotifier<String?> existingDocumentSasUrl = ValueNotifier<String?>(
    null,
  );

  bool get shouldShowDocumentSubType {
    final selectedType = selectedDocumentType.value?.key;
    return selectedType != null &&
        selectedType != Enum$IdentificationType.SIGNATURE;
  }

  @override
  void setAccount(Account? a) {
    account = a;
    refreshGrid();
  }

  Future<void> reloadAccount() async {
    final accountId = account?.id;
    if (accountId == null || accountId.isEmpty) return;
    final (freshAccount, _, _) = await coreApiService.accountService
        .getAccountInfo(accountId, forceLoad: true);
    if (freshAccount != null) {
      account = freshAccount;
      refreshGrid();
    }
  }

  void refreshGrid() {
    gridController.data.value = _buildDocumentItems();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  List<DocumentGridItem> _buildDocumentItems() {
    final currentAccount = account;
    if (currentAccount == null) {
      return <DocumentGridItem>[];
    }

    final items = <DocumentGridItem>[];
    final contacts = currentAccount.contacts ?? [];
    for (final contact in contacts) {
      final contactName = '${contact.firstName ?? ''} ${contact.lastName ?? ''}'
          .trim();
      final contactId = contact.id ?? '';

      for (final identification in contact.proofOfIdentification ?? []) {
        items.add(
          DocumentGridItem(
            contactName: contactName,
            contactId: contactId,
            identification: identification as Identification,
          ),
        );
      }

      for (final identification in contact.proofOfAddress ?? []) {
        items.add(
          DocumentGridItem(
            contactName: contactName,
            contactId: contactId,
            identification: identification as Identification,
          ),
        );
      }

      final signature = contact.signature;
      if (signature != null && signature.url.isNotEmpty) {
        items.add(
          DocumentGridItem(
            contactName: contactName,
            contactId: contactId,
            identification: Identification(
              Enum$IdentificationType.SIGNATURE.toJson(),
              Enum$IdentificationSubType.NONE.toJson(),
              null,
              null,
              signature,
              null,
              '',
            ),
          ),
        );
      }
    }
    return items;
  }

  double getDocumentsMaxHeight() {
    final currentAccount = account;
    if (currentAccount == null) {
      return getMaxHeight(const []);
    }

    var count = 0;
    for (final contact in currentAccount.contacts ?? <Contact>[]) {
      count += (contact.proofOfIdentification as List?)?.length ?? 0;
      count += (contact.proofOfAddress as List?)?.length ?? 0;
      if ((contact.signature?.url ?? '').isNotEmpty) count++;
    }
    return getMaxHeight(List.filled(count, null));
  }

  void prepareForAddDocument() {
    processing = false;
    _isEditMode = false;
    _editingDocument = null;
    isFormValid.value = true;
    selectedContactType.value = null;
    selectedContact.value = null;
    selectedDocumentType.value = null;
    selectedDocumentSubType.value = null;
    pickedFile.value = null;
    existingDocumentSasUrl.value = null;
    isReadingDocument.value = false;
    readError.value = null;
    _clearExtracted();
  }

  void prepareForEditDocument(DocumentGridItem item, BuildContext context) {
    processing = false;
    _isEditMode = true;
    _editingDocument = item;
    isFormValid.value = true;
    isReadingDocument.value = false;
    readError.value = null;
    pickedFile.value = null;
    final sasUrl = item.identification.media?.sasUrl?.trim();
    final url = item.identification.media?.url.trim();
    existingDocumentSasUrl.value = (sasUrl?.isNotEmpty ?? false)
        ? sasUrl
        : (url?.isNotEmpty ?? false)
        ? url
        : null;

    Contact? contact;
    for (final c in account?.contacts ?? <Contact>[]) {
      if (c.id == item.contactId) {
        contact = c;
        break;
      }
    }

    _isPrefillingDocument = true;
    selectedContact.value = contact;

    final type = _tryMapIdentificationType(item.identification.type);
    selectedDocumentType.value = type == null
      ? null
      : (key: type, value: type.displayString(context));

    final subType = _tryMapIdentificationSubType(item.identification.subType);
    selectedDocumentSubType.value = subType == null
      ? null
      : (
        key: subType,
        value: subType.displayString(context),
        );

    extractedValidFrom.value = item.identification.validFrom;
    extractedValidTo.value = item.identification.validTo;
    extractedIdentificationNumber.value =
        item.identification.identificationNumber;
    _isPrefillingDocument = false;
  }

  Future<List<Enum$ContactType>> contactTypeItems(String _) async {
    return Enum$ContactType.values
        .where(
          (type) =>
              type != Enum$ContactType.$unknown &&
              type != Enum$ContactType.NONE,
        )
        .toList(growable: false);
  }

  Future<List<Contact>> contactItems(String _) async {
    final selectedType = selectedContactType.value;
    return (account?.contacts ?? [])
        .where((contact) => (contact.id ?? '').isNotEmpty)
        .where(
          (contact) =>
              selectedType == null || _contactHasType(contact, selectedType),
        )
        .toList(growable: false);
  }

  String contactDisplayName(Contact contact) =>
      '${contact.firstName ?? ''} ${contact.lastName ?? ''}'.trim();

  void _onContactTypeChanged() {
    final selectedType = selectedContactType.value;
    if (selectedType == null) {
      return;
    }

    final currentContact = selectedContact.value;
    if (currentContact != null &&
        !_contactHasType(currentContact, selectedType)) {
      selectedContact.value = null;
    }
  }

  bool _contactHasType(Contact contact, Enum$ContactType selectedType) {
    final selectedTypeJson = selectedType.toJson().toUpperCase();
    final selectedTypeName = selectedType
        .toString()
        .split('.')
        .last
        .toUpperCase();

    return (contact.contactTypes ?? []).any((type) {
      final normalized = type.trim().toUpperCase();
      return normalized == selectedTypeJson || normalized == selectedTypeName;
    });
  }

  Future<List<KeyValuePair<Enum$IdentificationType, String>>> documentTypes(
    String _, BuildContext context,
  ) async {
    return [
          Enum$IdentificationType.PHOTO_ID,
          Enum$IdentificationType.ADDRESS_ID,
          Enum$IdentificationType.SIGNATURE,
        ]
        .map(
          (v) => (key: v, value: v.displayString(context)),
        )
        .toList();
  }

  Future<List<KeyValuePair<Enum$IdentificationSubType, String>>>
  documentSubTypes(String _, BuildContext context) async {
    final type = selectedDocumentType.value?.key;

    var subTypes = <Enum$IdentificationSubType>[];
    if (type == Enum$IdentificationType.PHOTO_ID) {
      subTypes = [
        Enum$IdentificationSubType.UK_DRIVING_LICENSE,
        Enum$IdentificationSubType.USA_DRIVER_LICENCE,
        Enum$IdentificationSubType.EU_DRIVING_LICENSE,
        Enum$IdentificationSubType.EU_NATIONAL_ID_CARD,
        Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT,
        Enum$IdentificationSubType.UKEUEEA_PASSPORT,
        Enum$IdentificationSubType.UK_FIREARM_LICENSE,
      ];
    } else if (type == Enum$IdentificationType.ADDRESS_ID) {
      subTypes = [
        Enum$IdentificationSubType.UK_DRIVING_LICENSE,
        Enum$IdentificationSubType.UTILITY_BILL,
        Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT,
        Enum$IdentificationSubType.MORTGAGE_STATEMENT,
        Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER,
        Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT,
        Enum$IdentificationSubType.HMRC_CORRESPONDANCE,
        Enum$IdentificationSubType.UK_FIREARM_LICENSE,
      ];
    } else if (type == Enum$IdentificationType.SIGNATURE) {
      subTypes = [Enum$IdentificationSubType.NONE];
    }

    return subTypes
        .map(
          (v) => (key: v, value: v.displayString(context)),
        )
        .toList();
  }

  void onDocumentTypeChanged() {
    if (_isPrefillingDocument) {
      return;
    }

    final type = selectedDocumentType.value?.key;
    pickedFile.value = null;
    existingDocumentSasUrl.value = null;
    isReadingDocument.value = false;
    readError.value = null;

    if (type == null) {
      selectedDocumentSubType.value = null;
      _clearExtracted();
      return;
    }

    if (type == Enum$IdentificationType.SIGNATURE) {
      selectedDocumentSubType.value = (
        key: Enum$IdentificationSubType.NONE,
        value: Enum$IdentificationSubType.NONE.toJson(),
      );
    } else {
      selectedDocumentSubType.value = null;
    }

    _clearExtracted();
  }

  void onDocumentSubTypeChanged() {
    if (_isPrefillingDocument) {
      return;
    }

    _clearExtracted();
    unawaited(_tryExtract());
  }

  void removePickedDocument() {
    pickedFile.value = null;
    existingDocumentSasUrl.value = null;
    _clearExtracted();
  }

  void _onPickedFileChanged() {
    if (_isPrefillingDocument) {
      return;
    }

    if (pickedFile.value != null) {
      existingDocumentSasUrl.value = null;
    }

    _clearExtracted();
    unawaited(_tryExtract());
  }

  Enum$IdentificationType? _tryMapIdentificationType(String? type) {
    if (type == null || type.isEmpty) {
      return null;
    }

    final normalizedType = _normalizeEnumLikeValue(type);
    for (final candidate in [
      Enum$IdentificationType.PHOTO_ID,
      Enum$IdentificationType.ADDRESS_ID,
      Enum$IdentificationType.SIGNATURE,
    ]) {
      final enumName = _normalizeEnumLikeValue(candidate.name);
      if (normalizedType == enumName) {
        return candidate;
      }
    }

    try {
      return AccountService.mapToIdentificationType(type);
    } catch (_) {
      return null;
    }
  }

  Enum$IdentificationSubType? _tryMapIdentificationSubType(String? subType) {
    if (subType == null || subType.isEmpty) {
      return null;
    }

    final normalizedSubType = _normalizeEnumLikeValue(subType);
    for (final candidate in Enum$IdentificationSubType.values) {
      if (candidate == Enum$IdentificationSubType.$unknown) {
        continue;
      }

      final enumName = _normalizeEnumLikeValue(candidate.name);

      if (normalizedSubType == enumName) {
        return candidate;
      }
    }

    try {
      return AccountService.mapToIdentificationSubType(subType);
    } catch (_) {
      return null;
    }
  }

  String _normalizeEnumLikeValue(String value) {
    return value
        .trim()
        .toLowerCase()
        .replaceAll('_', '')
        .replaceAll('-', '')
        .replaceAll(' ', '');
  }

  Future<void> _tryExtract() async {
    final file = pickedFile.value;
    final docType = selectedDocumentType.value?.key;
    final existingUrl = existingDocumentSasUrl.value;

    if (file == null && existingUrl == null) {
      return;
    }

    if (docType == null) {
      return;
    }

    if (docType == Enum$IdentificationType.SIGNATURE) {
      return;
    }

    final docSubType = selectedDocumentSubType.value?.key;
    if (docSubType == null) {
      return;
    }

    isReadingDocument.value = true;
    readError.value = null;

    try {
      final token = await FirebaseLogin.getToken();
      final Uint8List bytes;
      if (file != null) {
        bytes = await file.readAsBytes();
      } else {
        final response = await http
            .get(Uri.parse(existingUrl!))
            .timeout(
              const Duration(seconds: 10),
              onTimeout: () => throw Exception('Fetch timeout'),
            );
        if (response.statusCode != 200) {
          _clearExtracted();
          readError.value = 'invalid';
          return;
        }
        bytes = response.bodyBytes;
      }

      final afrData = await coreApiService.azureFormRecogniserService
          .readDocument(token, docType, docSubType, bytes);

      if (!_hasValidData(afrData)) {
        _clearExtracted();
        readError.value = 'invalid';
        return;
      }

      extracted.value = afrData;
      final validTo =
          afrData!.dateOfExpiration ??
          DateTime.now().add(const Duration(days: 365));
      extractedValidTo.value = validTo;
      extractedValidFrom.value = validTo.subtract(const Duration(days: 3650));
      extractedIdentificationNumber.value = afrData.documentNumber;
    } catch (_) {
      _clearExtracted();
      readError.value = 'invalid';
    } finally {
      isReadingDocument.value = false;
    }
  }

  bool _hasValidData(UploadedDocumentDetailsModel? afrData) {
    if (afrData == null) {
      return false;
    }

    final expiration = afrData.dateOfExpiration;
    if (expiration != null &&
        expiration.year > 2000 &&
        expiration.year < 2100) {
      return true;
    }

    final firstName = afrData.firstName;
    final lastName = afrData.lastName;
    final documentNumber = afrData.documentNumber;
    final address = afrData.address;

    var fieldCount = 0;
    if (firstName?.isNotEmpty ?? false) fieldCount++;
    if (lastName?.isNotEmpty ?? false) fieldCount++;
    if (documentNumber?.isNotEmpty ?? false) fieldCount++;
    if (address != null && address.length > 3) fieldCount++;

    return fieldCount >= 2;
  }

  void _clearExtracted() {
    extracted.value = null;
    extractedValidFrom.value = null;
    extractedValidTo.value = null;
    extractedIdentificationNumber.value = null;
    readError.value = null;
  }

  Future<(bool success, String error)> save(BuildContext context) async {
    final l10n = context.l10n;
    final currentAccount = account;
    final contact = selectedContact.value;
    final type = selectedDocumentType.value?.key;
    final subType = selectedDocumentSubType.value?.key;
    final file = pickedFile.value;
    final editingDocument = _editingDocument;
    final isEditing = _isEditMode && editingDocument != null;

    if (contact == null) {
      return (false, l10n.noRecordsMessage);
    }
    if (type == null) {
      return (false, l10n.selectADocumentType);
    }
    if (type != Enum$IdentificationType.SIGNATURE && subType == null) {
      return (false, l10n.documentSubTypeHint);
    }
    if (!isEditing && file == null) {
      return (false, l10n.chooseaFileToUploadHint);
    }
    if (file != null &&
        type != Enum$IdentificationType.SIGNATURE &&
        extracted.value == null) {
      return (false, l10n.invalidDocumentUpload);
    }
    if (currentAccount == null ||
        currentAccount.id == null ||
        currentAccount.id!.isEmpty ||
        contact.id == null) {
      return (false, l10n.accountNotFound);
    }

    toggleProcessing(value: true);

    try {
      String? uploadedFilePath;
      if (file != null) {
        final fileExtension = file.name.split('.').last.toLowerCase();
        final fileId =
            '${MediaService.getRandomFileIdentifier()}.$fileExtension';

        final mediaApiUrlWithToken = await coreApiService.accountService
            .getMediaApiUrlWithToken(
              fileId: fileId,
              partyAccountNo: currentAccount.code ?? '',
            );

        if (mediaApiUrlWithToken == null || mediaApiUrlWithToken.isEmpty) {
          return (false, l10n.errMsgDocumentCouldNotBeUploaded);
        }

        final parsedUri = Uri.parse(mediaApiUrlWithToken);
        uploadedFilePath =
            '${parsedUri.pathSegments[1]}/${parsedUri.pathSegments[2]}/$fileId';

        final uploaded = await mediaService.uploadDocument(
          mediaApiUrlWithToken: mediaApiUrlWithToken,
          fileName: file.name,
          fileBytes: await file.readAsBytes(),
        );

        if (!uploaded) {
          return (false, l10n.errUploadDocumentFailed);
        }
      }

      final now = DateTime.now();
      final originalIdentification = editingDocument?.identification;
      final identification = Identification(
        type.toJson(),
        (subType ?? Enum$IdentificationSubType.NONE).toJson(),
        extractedValidFrom.value ?? originalIdentification?.validFrom ?? now,
        extractedValidTo.value ??
            originalIdentification?.validTo ??
            now.add(const Duration(days: 365)),
        MediaAsset(
          uploadedFilePath ?? originalIdentification?.media?.url ?? '',
        ),
        extractedIdentificationNumber.value ??
            originalIdentification?.identificationNumber,
        file?.name ?? originalIdentification?.name ?? '',
      );

      contact.proofOfIdentification ??= <Identification>[];
      contact.proofOfAddress ??= <Identification>[];

      if (isEditing && originalIdentification != null) {
        contact.proofOfIdentification!.removeWhere(
          (x) =>
              identical(x, originalIdentification) ||
              _isSameIdentification(x, originalIdentification),
        );
        contact.proofOfAddress!.removeWhere(
          (x) =>
              identical(x, originalIdentification) ||
              _isSameIdentification(x, originalIdentification),
        );
      }

      if (type == Enum$IdentificationType.ADDRESS_ID) {
        contact.proofOfAddress!.clear();
      }

      if (type == Enum$IdentificationType.PHOTO_ID) {
        contact.proofOfIdentification!.removeWhere(
          (x) =>
              _isIdentificationType(x.type, Enum$IdentificationType.PHOTO_ID),
        );
      }

      if (type == Enum$IdentificationType.SIGNATURE) {
        contact.proofOfIdentification!.removeWhere(
          (x) =>
              _isIdentificationType(x.type, Enum$IdentificationType.SIGNATURE),
        );
      }

      if (type == Enum$IdentificationType.ADDRESS_ID) {
        contact.proofOfAddress!.add(identification);
      } else if (type == Enum$IdentificationType.SIGNATURE) {
        // Store signature separately, do not add to proofOfIdentification
        contact.signature = MediaAsset(
          uploadedFilePath ?? originalIdentification?.media?.url ?? '',
        );
      } else {
        contact.proofOfIdentification!.add(identification);
      }

      List<Input$UpdateIdentificationInput>? proofOfIdentification;
      List<Input$UpdateIdentificationInput>? proofOfAddress;
      Input$MediaAssetInput? signature;
      final user = UserService.instance!.user;
      final userInfoId = user.id;
      final userName =
          user.name.isNotEmpty ? user.name : user.emailAddress;

      // Preserve existing signature when saving non-signature documents.
      if (contact.signature != null) {
        signature = coreApiService.accountService.toMediaAssetInput(
          contact.signature!,
          userInfoId: userInfoId,
          userName: userName,
        );
      }

      if (type == Enum$IdentificationType.SIGNATURE) {
        signature = contact.signature != null
            ? coreApiService.accountService.toMediaAssetInput(
                    contact.signature!,
                    userInfoId: userInfoId,
                    userName: userName,
                  )
            : null;
      } else if (type == Enum$IdentificationType.ADDRESS_ID) {
        proofOfAddress = (contact.proofOfAddress ?? [])
            .map(coreApiService.accountService.toIdentificationInput)
            .toList();
      } else {
        proofOfIdentification = (contact.proofOfIdentification ?? [])
            .map(coreApiService.accountService.toIdentificationInput)
            .toList();
      }

      final (success, error) = await coreApiService.accountService
          .updateAccountContact(
            Input$UpdateAccountContactInput(
              accountId: currentAccount.id!,
              id: contact.id!,
              proofOfAddress: proofOfAddress,
              proofOfIdentification: proofOfIdentification,
              signature: signature,
            ),
          );

      if (success) {
        unawaited(reloadAccount());
      }

      return (success, error ?? '');
    } finally {
      toggleProcessing();
    }
  }

  bool _isSameIdentification(Identification a, Identification b) {
    return a.type == b.type &&
        a.subType == b.subType &&
        a.identificationNumber == b.identificationNumber &&
        a.name == b.name &&
        a.media?.url == b.media?.url;
  }

  bool _isIdentificationType(String? value, Enum$IdentificationType expected) {
    if (value == null || value.isEmpty) {
      return false;
    }

    final normalizedValue = _normalizeEnumLikeValue(value);
    final normalizedEnum = _normalizeEnumLikeValue(expected.name);

    return normalizedValue == normalizedEnum;
  }

  @override
  Future<(bool success, String error)> update() {
    return Future.value((false, 'Not implemented'));
  }

  @override
  Future<(bool success, String error)> add() {
    return Future.value((false, 'Not implemented'));
  }

  DocumentGridItem? _deletingDocument;

  DocumentGridItem? get document => _deletingDocument;

  set document(DocumentGridItem item) {
    _deletingDocument = item;
  }

  @override
  Future<(bool success, String error)> delete() async {
    final currentAccount = account;
    final deletingDocument = _deletingDocument;

    if (currentAccount?.id == null || currentAccount!.id!.isEmpty) {
      return (false, 'Account not found');
    }
    if (deletingDocument == null || deletingDocument.contactId.isEmpty) {
      return (false, 'Document not found');
    }

    final identificationType = _tryMapIdentificationType(
      deletingDocument.identification.type,
    );
    if (identificationType == null) {
      return (false, 'Invalid identification type');
    }

    final identificationSubType =
        _tryMapIdentificationSubType(deletingDocument.identification.subType) ??
        Enum$IdentificationSubType.NONE;

    toggleProcessing(value: true);
    try {
      final (success, error) = await coreApiService.accountService
          .deleteContactDocument(
            Input$DeleteContactDocumentInput(
              accountId: currentAccount.id!,
              contactId: deletingDocument.contactId,
              identificationType: identificationType,
              identificationSubType: identificationSubType,
            ),
          );

      if (!success) {
        return (false, error ?? 'Failed to delete document');
      }

      final contact = (currentAccount.contacts ?? <Contact>[])
          .cast<Contact?>()
          .firstWhere(
            (c) => c?.id == deletingDocument.contactId,
            orElse: () => null,
          );

      if (contact != null && (contact.id ?? '').isNotEmpty) {
        if (identificationType == Enum$IdentificationType.SIGNATURE) {
          contact.signature = null;
        } else {
          contact.proofOfIdentification?.removeWhere(
            (x) =>
                identical(x, deletingDocument.identification) ||
                _isSameIdentification(x, deletingDocument.identification),
          );
          contact.proofOfAddress?.removeWhere(
            (x) =>
                identical(x, deletingDocument.identification) ||
                _isSameIdentification(x, deletingDocument.identification),
          );
        }
      }

      _deletingDocument = null;
      refreshGrid();
      unawaited(reloadAccount());
      return (true, '');
    } finally {
      toggleProcessing();
    }
  }

  @override
  void reset() {
    prepareForAddDocument();
  }

  @override
  void dispose() {
    selectedContactType.removeListener(_onContactTypeChanged);
    selectedDocumentType.removeListener(onDocumentTypeChanged);
    selectedDocumentSubType.removeListener(onDocumentSubTypeChanged);
    pickedFile.removeListener(_onPickedFileChanged);

    selectedContactType.dispose();
    selectedContact.dispose();
    selectedDocumentType.dispose();
    selectedDocumentSubType.dispose();
    pickedFile.dispose();

    isReadingDocument.dispose();
    extracted.dispose();
    extractedValidFrom.dispose();
    extractedValidTo.dispose();
    extractedIdentificationNumber.dispose();
    readError.dispose();
    existingDocumentSasUrl.dispose();

    //gridController.dispose();
    super.dispose();
  }
}
