import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/client_diagnostic/models/diagnostic_media_model.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';

class DiagnosticMediaController extends BaseController {
  DiagnosticMediaController();

  String instanceId = '';
  List<DiagnosticMedia> mediaItems = [];
  bool isBusy = false;

  Future<void> getMediaItems() async {
    isBusy = true;
    reload();

    if (instanceId.isNotEmpty) {
      final localData = await FormsEngine.services
          .get<IDatabaseManager>()
          .findInstance(instanceId);

      if (localData != null) {
        final medias = localData.capturedMedia.toList();
        if (medias.isNotEmpty) {
          mediaItems = medias
              .map(
                (e) => DiagnosticMedia(
                  uuid: e.uuid,
                  instanceUuid: e.instanceUuid,
                  mediaType: e.mediaType,
                  localPath: e.localPath,
                  isUploaded: e.isUploaded,
                  isUploading: e.isUploading,
                  imageData: e.imageData,
                ),
              )
              .toList();
        }
      }
    }

    isBusy = false;
    reload();
  }
}
