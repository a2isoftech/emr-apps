import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/pricing/queries/upload_price_file.graphql.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

enum PricingUploadScreenMode {
  selectFile,
  uploading,
  success,
}

class PricingUploadController {
  PricingUploadController(this.httpClient, this.config);

  final BaseClient httpClient;

  final AppConfig config;

  ValueNotifier<PricingUploadScreenMode> screenMode =
      ValueNotifier(PricingUploadScreenMode.selectFile);

  bool hasError = false;

  Future<XFile?> selectFile() => openFile(
        acceptedTypeGroups: <XTypeGroup>[
          const XTypeGroup(
            extensions: <String>['json'],
          ),
        ],
      );

  Future<void> uploadFile(XFile file) async {
    screenMode.value = PricingUploadScreenMode.uploading;
    hasError = false;

    try {
      final response = await documentNodeMutationUploadPrices.execute(
        httpClient,
        Mutation$UploadPrices.fromJson,
        files: {
          'file': file,
        },
        variables: Variables$Mutation$UploadPrices(
          file: '',
        ),
        url: Uri.tryParse(config.pricingApiUrl),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      screenMode.value = PricingUploadScreenMode.success;
    } catch (_) {
      hasError = true;
      screenMode.value = PricingUploadScreenMode.selectFile;
    }
  }
}
