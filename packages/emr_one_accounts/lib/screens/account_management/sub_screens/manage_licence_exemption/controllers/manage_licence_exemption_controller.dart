import 'dart:async';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/screens/account_management/account_management_base_controller.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_contact/models/uploaded_file.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_licence_exemption/constants/licence_exemption_constants.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_licence_exemption/models/edit_licence_exemption_form_data.dart'
    as exemption_data;
import 'package:emr_one_accounts/services/media_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class _PreviewLoadResult {
  const _PreviewLoadResult({required this.sasUrl});
  final String? sasUrl;
}

class ManageLicenceExemptionController extends AccountManagementBaseController {
  ManageLicenceExemptionController({
    required this.coreApiService,
    required this.mediaService,
    required this.mediaApiBase,
  }) : _formData = exemption_data.EditLicenceExemptionFormData();

  Account? account;
  final CoreApiService coreApiService;
  final MediaService mediaService;
  final String mediaApiBase;

  late final exemption_data.EditLicenceExemptionFormData _formData;

  exemption_data.EditLicenceExemptionFormData get data => _formData;

  ValueNotifier<UploadedFile?> wasteTransferLicense = ValueNotifier(null);
  ValueNotifier<String?> existingWasteTransferLicenseUrl = ValueNotifier(null);

  String? wasteTransferLicenseSasUrl;
  String? selectedDocumentSasUrl;
  bool isDocumentDeleted = false;
  bool isDocumentRead = false;
  bool isReadingDocument = false;
  bool isLoadingPreview = false;
  bool _hasAttemptedDocumentRead = false;

  final Map<String, String> _sasUrlCache = {};
  int _documentTypeFocusRequestCount = 0;
  bool _requireDocumentTypeForUpload = false;

  CancelableOperation<_PreviewLoadResult>? _previewLoadOperation;

  int get documentTypeFocusRequestCount => _documentTypeFocusRequestCount;

  List<String> get availableDocumentSubtypes => [
    LicenceExemptionConstants.wasteTransferNoteSubtype,
  ];

  void ensureWasteTransferNoteDocumentSubtype({bool notify = true}) {
    if (_formData.documentType.value ==
        LicenceExemptionConstants.wasteTransferNoteSubtype) {
      return;
    }

    _formData.documentType.value =
        LicenceExemptionConstants.wasteTransferNoteSubtype;
    _requireDocumentTypeForUpload = false;
    if (notify) {
      notifyListeners();
    }
  }

  bool get shouldShowDocumentTypeRequired =>
      _requireDocumentTypeForUpload ||
      (wasteTransferLicense.value != null &&
          (_formData.documentType.value == null ||
              _formData.documentType.value!.isEmpty));

  void requireDocumentTypeForUpload() {
    final subtype = normalizeDocumentSubtype(_formData.documentType.value);
    if (subtype != null && subtype.isNotEmpty) {
      return;
    }

    _requireDocumentTypeForUpload = true;
    _documentTypeFocusRequestCount++;
    notifyListeners();
  }

  void clearDocumentTypeUploadValidation() {
    if (!_requireDocumentTypeForUpload) {
      return;
    }

    _requireDocumentTypeForUpload = false;
    notifyListeners();
  }

  bool get shouldShowDocumentReadError =>
      _hasAttemptedDocumentRead && !isDocumentRead && !isReadingDocument;

  bool get hasDocument =>
      wasteTransferLicense.value != null ||
      existingWasteTransferLicenseUrl.value != null ||
      (selectedDocumentSasUrl?.isNotEmpty ?? false);

  Future<void> setWasteTransferLicense(UploadedFile? file) async {
    await _previewLoadOperation?.cancel();
    _previewLoadOperation = null;
    wasteTransferLicense.value = file;
    existingWasteTransferLicenseUrl.value = null;
    selectedDocumentSasUrl = null;
    isDocumentDeleted = false;
    isLoadingPreview = false;

    if (file == null) {
      _formData.documentType.value = null;
      _formData.validFrom.value = null;
      _formData.validTo.value = null;
      _hasAttemptedDocumentRead = false;
      isDocumentRead = false;
      _requireDocumentTypeForUpload = false;
      notifyListeners();
      return;
    }

    _requireDocumentTypeForUpload = false;
    ensureWasteTransferNoteDocumentSubtype();
    notifyListeners();
    await selectDocumentSubtype(
      LicenceExemptionConstants.wasteTransferNoteSubtype,
    );
  }

  Future<void> selectDocumentSubtype(String? documentSubtype) async {
    const normalizedSubtype =
        LicenceExemptionConstants.wasteTransferNoteSubtype;
    _requireDocumentTypeForUpload = false;
    _formData.documentType.value = normalizedSubtype;
    _formData.validFrom.value = null;
    _formData.validTo.value = null;
    _hasAttemptedDocumentRead = true;
    isDocumentRead = false;
    notifyListeners();

    final result = await _readDocumentForSelectedSubtype(normalizedSubtype);
    final document = result.$3;

    if (document == null) {
      notifyListeners();
      return;
    }

    _formData.documentType.value = normalizedSubtype;
    _formData.validFrom.value = document.validFrom;
    _formData.validTo.value = document.validTo;
    isDocumentRead = document.documentType != 'Unknown Document Type';
    notifyListeners();
  }

  String? normalizeDocumentSubtype(String? rawValue) {
    if (rawValue == null || rawValue.trim().isEmpty) {
      return null;
    }

    if (_findWasteTransferDocumentType(rawValue) != null) {
      return LicenceExemptionConstants.wasteTransferNoteSubtype;
    }

    return null;
  }

  /// Call this when external code needs to trigger a UI refresh.
  void refresh() => notifyListeners();

  void clearWasteTransferLicense() {
    unawaited(_previewLoadOperation?.cancel());
    _previewLoadOperation = null;
    wasteTransferLicense.value = null;
    existingWasteTransferLicenseUrl.value = null;
    selectedDocumentSasUrl = null;
    isDocumentDeleted = true;
    isLoadingPreview = false;

    _formData.documentType.value = null;
    _formData.validFrom.value = null;
    _formData.validTo.value = null;
    _hasAttemptedDocumentRead = false;
    isDocumentRead = false;
    _requireDocumentTypeForUpload = false;
    notifyListeners();
  }

  @override
  void reset() {
    unawaited(_previewLoadOperation?.cancel());
    _previewLoadOperation = null;
    processing = false;
    _documentTypeFocusRequestCount = 0;
    _requireDocumentTypeForUpload = false;
    wasteTransferLicense.value = null;
    existingWasteTransferLicenseUrl.value = null;
    selectedDocumentSasUrl = null;
    isDocumentDeleted = false;
    _hasAttemptedDocumentRead = false;
    isDocumentRead = false;
    isReadingDocument = false;
    isLoadingPreview = false;
    notifyListeners();
  }

  @override
  void dispose() {
    unawaited(_previewLoadOperation?.cancel());
    _previewLoadOperation = null;
    wasteTransferLicense.dispose();
    existingWasteTransferLicenseUrl.dispose();
    _formData.dispose();
    super.dispose();
  }

  void _loadPreviewUrlImmediate(String rawUrl, {bool forceRefresh = false}) {
    unawaited(_previewLoadOperation?.cancel());
    _previewLoadOperation = null;

    _previewLoadOperation = CancelableOperation.fromFuture(
      _fetchAndSetSasUrl(rawUrl, forceRefresh: forceRefresh),
    );
    _previewLoadOperation!.then(
      _applyPreviewResult,
      onError: (_, __) {
        isLoadingPreview = false;
        notifyListeners();
      },
    );
  }

  void _applyPreviewResult(_PreviewLoadResult result) {
    selectedDocumentSasUrl = result.sasUrl;
    isLoadingPreview = false;
    notifyListeners();
  }

  Future<void> retryPreviewUrl() async {
    final rawUrl = existingWasteTransferLicenseUrl.value;
    if (rawUrl == null || rawUrl.isEmpty) {
      return;
    }

    isLoadingPreview = true;
    selectedDocumentSasUrl = null;
    notifyListeners();
    _loadPreviewUrlImmediate(rawUrl, forceRefresh: true);
  }

  String buildPreviewUrl(String rawUrl) {
    if (rawUrl.startsWith('http://') || rawUrl.startsWith('https://')) {
      return rawUrl;
    }

    final normalizedBase = mediaApiBase.endsWith('/')
        ? mediaApiBase.substring(0, mediaApiBase.length - 1)
        : mediaApiBase;
    final normalizedPath = rawUrl.startsWith('/')
        ? rawUrl.substring(1)
        : rawUrl;
    return '$normalizedBase/i/$normalizedPath';
  }

  Map<String, String> buildPreviewHeaders(String token) => {
    'Authorization': 'Bearer $token',
  };

  Future<_PreviewLoadResult> _fetchAndSetSasUrl(
    String rawUrl, {
    bool forceRefresh = false,
  }) async {
    try {
      final sasUrl = await _getSasUrlFromMediaUrl(
        rawUrl,
        forceRefresh: forceRefresh,
      ).timeout(const Duration(seconds: 5), onTimeout: () => null);

      if (sasUrl != null && sasUrl.isNotEmpty) {
        return _PreviewLoadResult(sasUrl: sasUrl);
      }
      return const _PreviewLoadResult(sasUrl: null);
    } catch (e) {
      return const _PreviewLoadResult(sasUrl: null);
    }
  }

  Future<String?> _getSasUrlFromMediaUrl(
    String url, {
    bool forceRefresh = false,
  }) async {
    if (!forceRefresh && _sasUrlCache.containsKey(url)) {
      return _sasUrlCache[url];
    }

    if (forceRefresh) {
      _sasUrlCache.remove(url);
    }

    try {
      var formattedUrl = url;
      if (!url.startsWith('http://') && !url.startsWith('https://')) {
        formattedUrl = 'https://$url';
      }

      final uri = Uri.parse(formattedUrl);
      final pathSegments = uri.pathSegments;

      if (pathSegments.length >= 2) {
        final partyAccountNo = pathSegments[pathSegments.length - 2];
        final fileId = pathSegments.last;

        String? sasUrl;
        for (var attempt = 0; attempt < 2; attempt++) {
          sasUrl = await coreApiService.accountService.getMediaApiUrlWithToken(
            fileId: fileId,
            partyAccountNo: partyAccountNo,
          );
          if (sasUrl != null && sasUrl.isNotEmpty) {
            break;
          }
        }

        if (sasUrl != null && sasUrl.isNotEmpty) {
          _sasUrlCache[url] = sasUrl;
        }
        return sasUrl;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  LicenceDocumentSubtypeOption? _findWasteTransferDocumentType(
    String? rawValue,
  ) {
    if (rawValue == null || rawValue.trim().isEmpty) {
      return null;
    }

    final normalizedValue = rawValue.trim();
    const wasteTransferOption =
        LicenceExemptionConstants.wasteTransferNoteDocumentType;
    if (wasteTransferOption.value == normalizedValue ||
        wasteTransferOption.legacyValues.any(
          (legacyValue) =>
              legacyValue.toLowerCase() == normalizedValue.toLowerCase(),
        )) {
      return wasteTransferOption;
    }

    if (AccountService.mapToIdentificationSubType(normalizedValue) ==
        Enum$IdentificationSubType.WASTE_TRANSFER_NOTE) {
      return wasteTransferOption;
    }

    return null;
  }

  Future<(bool success, String error, AccountDocument?)>
  _readDocumentForSelectedSubtype(String documentSubtype) async {
    final documentBytes = await _loadDocumentBytesForSelectedSubtype();
    if (documentBytes == null || documentBytes.isEmpty) {
      return (false, 'No document supplied', null);
    }

    try {
      isReadingDocument = true;
      notifyListeners();

      final token = await FirebaseLogin.getToken();
      final result = await _tryReadDocumentType(
        token,
        LicenceExemptionConstants.wasteTransferNoteSubtype,
        documentBytes,
      );

      return result;
    } catch (e) {
      return (false, 'Error reading document: $e', null);
    } finally {
      isReadingDocument = false;
      notifyListeners();
    }
  }

  Future<(bool success, String error, AccountDocument?)> _tryReadDocumentType(
    String token,
    String displayName,
    Uint8List? imageBytes,
  ) async {
    final bytes = imageBytes ?? wasteTransferLicense.value?.bytes;
    if (bytes == null || bytes.isEmpty) {
      return (false, 'No image bytes', null);
    }

    const identificationType = Enum$IdentificationType.ADDRESS_ID;
    const identificationSubType =
        Enum$IdentificationSubType.WASTE_TRANSFER_NOTE;

    try {
      final afrData = await coreApiService.azureFormRecogniserService
          .readDocument(
            token,
            identificationType,
            identificationSubType,
            bytes,
          );

      if (afrData != null && _hasValidData(afrData)) {
        return _createDocumentFromResponse(afrData, displayName);
      }
      return (false, 'No valid data', null);
    } catch (e) {
      return (false, 'Error: $e', null);
    }
  }

  Future<Uint8List?> _loadDocumentBytesForSelectedSubtype() async {
    final uploadedBytes = wasteTransferLicense.value?.bytes;
    if (uploadedBytes != null && uploadedBytes.isNotEmpty) {
      return uploadedBytes;
    }

    final sasUrl = selectedDocumentSasUrl;
    if (sasUrl == null || sasUrl.isEmpty) {
      return null;
    }

    return _loadDocumentBytesFromUrl(sasUrl);
  }

  Future<Uint8List> _loadDocumentBytesFromUrl(String sasUrl) async {
    final response = await http
        .get(Uri.parse(sasUrl))
        .timeout(
          const Duration(seconds: 10),
          onTimeout: () => throw Exception('Fetch timeout'),
        );

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch document.');
    }

    return response.bodyBytes;
  }

  bool _hasValidData(UploadedDocumentDetailsModel? afrData) {
    if (afrData == null) return false;

    try {
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
    } catch (e) {
      return false;
    }
  }

  (bool success, String error, AccountDocument document)
  _createDocumentFromResponse(
    UploadedDocumentDetailsModel afrData,
    String documentType,
  ) {
    try {
      final expiration = afrData.dateOfExpiration;

      final DateTime validTo;
      final DateTime validFrom;
      final bool hasValidExpiration;

      if (expiration != null && expiration.year > 2000) {
        validTo = expiration;
        validFrom = validTo.subtract(
          const Duration(
            days:
                LicenceExemptionConstants.maxLicenceValidityYearsForBackfill *
                365,
          ),
        );
        hasValidExpiration = true;
      } else {
        validTo = DateTime.now().add(
          const Duration(
            days: LicenceExemptionConstants.defaultLicenceValidityDays,
          ),
        );
        validFrom = DateTime.now();
        hasValidExpiration = false;
      }

      final document = AccountDocument(null, documentType, validFrom, validTo);

      if (!hasValidExpiration) {
        return (
          false,
          'Document uploaded but dates could not be extracted.',
          document,
        );
      }
      return (true, '', document);
    } catch (e) {
      final document = AccountDocument(
        null,
        documentType,
        DateTime.now(),
        DateTime.now().add(const Duration(days: 365)),
      );
      return (false, 'Error processing document data.', document);
    }
  }

  @override
  void setAccount(Account? a) {
    account = a;
    final licenseExemption = account?.businessDetail?.licenseExemption;
    final wasteTransferLicenseDoc = licenseExemption?.wasteTransferLicense;
    _formData.isWasteRegisteredCarrier.value =
        licenseExemption?.wasteRegCarrier ?? false;
    _formData.wasteCarrierRegNo.value = licenseExemption?.wasteRegCarrierNumber;
    _formData.isWasteImporter.value = licenseExemption?.wasteImporter ?? false;
    _formData.isWasteProducer.value = licenseExemption?.wasteProducer ?? false;
    _formData.isWasteTransporter.value =
        licenseExemption?.wasteTransporter ?? false;
    _formData.annualWasteTransferNote.value =
        licenseExemption?.annualWasteTransferNote ?? false;
    _formData.documentType.value =
        (_formData.annualWasteTransferNote.value ||
            wasteTransferLicenseDoc != null)
        ? LicenceExemptionConstants.wasteTransferNoteSubtype
        : null;
    _formData.validFrom.value = wasteTransferLicenseDoc?.validFrom;
    _formData.validTo.value = wasteTransferLicenseDoc?.validTo;
    _hasAttemptedDocumentRead = false;

    isDocumentDeleted = false;

    isDocumentRead = wasteTransferLicenseDoc != null;

    final rawUrl = wasteTransferLicenseDoc?.media?.url;
    if (rawUrl != null && rawUrl.isNotEmpty) {
      existingWasteTransferLicenseUrl.value = rawUrl;
      selectedDocumentSasUrl = _sasUrlCache[rawUrl];
      isLoadingPreview = selectedDocumentSasUrl == null;
      _loadPreviewUrlImmediate(rawUrl);
    } else {
      existingWasteTransferLicenseUrl.value = null;
      selectedDocumentSasUrl = null;
      isLoadingPreview = false;
    }
    notifyListeners();
  }

  @override
  Future<(bool success, String error)> update() async {
    toggleProcessing(value: true);

    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    if (!isDocumentDeleted &&
        (wasteTransferLicense.value != null ||
            existingWasteTransferLicenseUrl.value != null)) {
      ensureWasteTransferNoteDocumentSubtype();
    }

    if (wasteTransferLicense.value != null &&
        existingWasteTransferLicenseUrl.value == null) {
      final fileId =
          '${MediaService.getRandomFileIdentifier()}.'
          '${wasteTransferLicense.value?.extension}';

      final mediaApiUrlWithToken = await coreApiService.accountService
          .getMediaApiUrlWithToken(
            fileId: fileId,
            partyAccountNo: account?.code ?? '',
          );

      if (mediaApiUrlWithToken != null && mediaApiUrlWithToken.isNotEmpty) {
        final parsedUri = Uri.parse(mediaApiUrlWithToken);

        wasteTransferLicenseSasUrl =
            '${parsedUri.pathSegments[1]}/'
            '${parsedUri.pathSegments[2]}/$fileId';

        final documentUploaded = await mediaService.uploadDocument(
          mediaApiUrlWithToken: mediaApiUrlWithToken,
          fileName: wasteTransferLicense.value?.name ?? '',
          fileBytes: wasteTransferLicense.value!.bytes!,
        );

        if (!documentUploaded) {
          toggleProcessing();
          return (false, 'Document could not be uploaded.');
        }
      }
    }

    final user = UserService.instance!.user;
    final userInfoId = user.id;
    final userName = user.name.isNotEmpty ? user.name : user.emailAddress;

    if (userInfoId.isEmpty || userName.isEmpty) {
      toggleProcessing();
      return (false, 'User information not available');
    }

    final licenseExemptionInput = Input$AccountLicenseExemptionInput(
      wasteTransferLicense: Input$AccountDocumentInput(
        media: _buildMediaInput(userInfoId, userName),
        documentType: isDocumentDeleted
            ? ''
            : LicenceExemptionConstants.wasteTransferNoteSubtype,
        validFrom: _buildValidFrom(),
        validTo: isDocumentDeleted
            ? DateTime.now()
            : (data.validTo.value ??
                  DateTime.now().add(
                    const Duration(
                      days:
                          LicenceExemptionConstants.defaultLicenceValidityDays,
                    ),
                  )),
      ),
      annualWasteTransferNote: data.annualWasteTransferNote.value,
      wasteProducer: data.isWasteProducer.value,
      wasteImporter: data.isWasteImporter.value,
      wasteTransporter: data.isWasteTransporter.value,
      wasteRegCarrier: data.isWasteRegisteredCarrier.value,
      wasteRegCarrierNumber: data.wasteCarrierRegNo.value,
    );

    final inputData = Input$UpdateAccountLicenseExemptionInput(
      accountId: account?.id ?? '',
      licenseExemption: licenseExemptionInput,
    );

    final (success, error) = await coreApiService.accountService
        .updateAccountLicenseExemption(inputData);

    toggleProcessing();

    return (success, error ?? '');
  }

  Input$MediaAssetInput? _buildMediaInput(String userInfoId, String userName) {
    if (wasteTransferLicense.value != null &&
        wasteTransferLicenseSasUrl != null) {
      return Input$MediaAssetInput(
        url: wasteTransferLicenseSasUrl ?? '',
        created: Input$CreatedInput(
          userInfoId: userInfoId,
          at: DateTime.now(),
          userName: userName,
        ),
        modified: Input$ModifiedInput(
          userInfoId: userInfoId,
          at: DateTime.now(),
          userName: userName,
        ),
      );
    }

    if (isDocumentDeleted) {
      return null;
    }

    final existingMedia =
        account?.businessDetail?.licenseExemption?.wasteTransferLicense?.media;
    if (existingMedia?.url != null) {
      return Input$MediaAssetInput(
        url: existingMedia!.url,
        created: Input$CreatedInput(
          userInfoId: userInfoId,
          at: DateTime.now(),
          userName: userName,
        ),
        modified: Input$ModifiedInput(
          userInfoId: userInfoId,
          at: DateTime.now(),
          userName: userName,
        ),
      );
    }
    return null;
  }

  DateTime _buildValidFrom() {
    if (isDocumentDeleted) return DateTime(1);

    if (data.validFrom.value == null) {
      final validTo =
          data.validTo.value ??
          DateTime.now().add(
            const Duration(
              days: LicenceExemptionConstants.defaultLicenceValidityDays,
            ),
          );
      return validTo.subtract(
        const Duration(
          days: LicenceExemptionConstants.defaultLicenceValidityDays,
        ),
      );
    }
    return data.validFrom.value!;
  }

  @override
  Future<(bool, String)> add() {
    throw UnimplementedError();
  }
}
