import 'package:emr_one_inform/media_search/models/media_item.dart';
import 'package:emr_one_inform/media_search/models/media_item_state.dart';
import 'package:emr_one_inform/media_search/services/media_items_service.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';

class MediaItemsController extends BaseController {
  MediaItemsController({required this.service});

  final MediaItemsService service;
  late final String workRequestId;
  late final String cmpCode;
  List<MediaItemState> mediaItems = [];
  bool isBusy = false;

  void init(String workRequestId, String cmpCode) {
    this.workRequestId = workRequestId;
    this.cmpCode = cmpCode;
  }

  Future<void> getMediaItems() async {
    isBusy = true;
    reload();

    var result = <MediaItem>[];
    if (workRequestId.toUpperCase().startsWith('WR')) {
      result = await service.getMediaItemsForMaintenanceRequest(
        cmpCode,
        workRequestId,
      );
    } else if (workRequestId.toUpperCase().startsWith('WO') ||
        workRequestId.toUpperCase().startsWith('SI')) {
      result = await service.getMediaItemsForWorkOrder(
        cmpCode,
        workRequestId,
      );
    }

    mediaItems = result
        .where((m) => m.isUploaded ?? false)
        .map(
          (m) => MediaItemState(
            m,
            (m.thumbnailPath?.isNotEmpty ?? false)
                ? service.getImage(m.thumbnailPath!)
                : null,
          ),
        )
        .toList();

    isBusy = false;
    reload();
  }
}
