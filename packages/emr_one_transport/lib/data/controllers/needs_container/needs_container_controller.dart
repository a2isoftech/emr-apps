import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/containers/asset_review_skip_request.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/needs_container/needs_container_response.dart';
import 'package:emr_one_transport/data/models/needs_container/save_container_asset_number.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/container_service.dart';
import 'package:emr_one_transport/data/services/needs_container/needs_container_service.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';

class NeedsContainerController {
  NeedsContainerController({
    required this.commonService,
    required this.containerService,
    required this.service,
  });
  final NeedsContainerService service;
  final ContainerService containerService;
  final CommonService commonService;
  final ValueNotifier<String?> assetNumberValueNotifier = ValueNotifier(null);
  final ValueNotifier<String?> printQrCodeAssetNumberValueNotifier =
      ValueNotifier(null);
  final ValueNotifier<bool> showSkippedContainersValueNotifier = ValueNotifier(
    false,
  );

  bool get isSkippedContainerMode => showSkippedContainersValueNotifier.value;

  Future<NeedsContainerResponse> getJobsWithoutAssetNumber(
    PagedFilterRequest request,
  ) async {
    final result = await service.getJobsWithoutAssetNumber(request);

    return result;
  }

  Future<String?> saveAssetNumber(SaveContainerAssetNumber request) async {
    final result = await service.saveAssetNumber(request);

    return result;
  }

  Future<bool> isAssetExists(String? assetNumber) async {
    if (assetNumber == null || assetNumber.isEmpty) {
      return false;
    }

    final result = await containerService.assetNumberUsedForContainer(
      assetNumber,
    );

    if (result == null) {
      return false;
    }
    return true;
  }

  Future<bool> downloadQRCodes() async {
    final response = await commonService.getQRCodeFileBytes(
      StringConstants.getQrCodesApiPath,
      queryParams: {'assetNumbers': printQrCodeAssetNumberValueNotifier.value},
    );
    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name:
            '${printQrCodeAssetNumberValueNotifier.value}'
            '.${StringConstants.pdfExtension}',
        bytes: response.data,
        mimeType: MimeType.pdf,
      );
      return true;
    }
    return false;
  }

  Future<bool> skipReview(
    int jobNumber,
    String containerId,
    String reasonCode,
    String reasonText,
    String? comments,
  ) async {
    final request = AssetReviewSkipRequest(
      jobNumber: jobNumber,
      jobContainerGuid: containerId,
      reasonCode: reasonCode,
      reasonText: reasonText,
      comments: comments,
    );
    final result = await containerService.skipReviewContainer(request);
    return result.isSuccess;
  }
}
