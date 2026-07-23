import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/media_controller.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/result.dart';
import 'package:emr_one_yard_app/services/location_service.dart';
import 'package:signals/signals.dart';

class LocationDetailsController {
  LocationDetailsController({
    required this.locationService,
    required this.userInfoService,
    required this.mediaController,
  });

  static const String _locationIsEmpty = 'Location is Empty';

  final LocationService locationService;
  final UserInfoService userInfoService;
  final MediaController mediaController;
  final locationDetailsSignal =
      signal<AsyncState<Query$Location$inventoryLocation>>(
    const AsyncLoading(),
  );

  Future<(String folder, String token)> getLocalPathAndToken(
    String ticketFolder,
  ) async {
    return (
      await MediaHelper.getLocalFolder(ticketFolder),
      await FirebaseLogin.getToken()
    );
  }

  Future<void> getLocationDetails(
    String id,
  ) async {
    locationDetailsSignal.value = const AsyncLoading();
    try {
      final result = await locationService.getLocation(id);
      if (result == null) {
        locationDetailsSignal.value =
            AsyncError(_locationIsEmpty, StackTrace.current);
      }
      locationDetailsSignal.set(AsyncData(result!), force: true);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot get location details',
        source: 'LoadOutController.getLoadOuts()',
        error: ex,
        stackTrace: trace,
      );
      locationDetailsSignal.value = AsyncError(ex, StackTrace.current);
    }
  }

  Future<UntypedResult> uploadMedia(List<String> mediaToAdd) async {
    try {
      final location = locationDetailsSignal.value.value;

      if (location == null) {
        return UntypedResult.failure([_locationIsEmpty]);
      }

      final urls = List<String>.empty(growable: true);
      for (final mediaFile in mediaToAdd) {
        final compressedFile = await mediaController.compressImage(mediaFile);
        final url = MediaHelper.createMediaFullUrl(
          mediaController.mediaApiUrl,
          compressedFile.path,
          location.id,
        );
        await mediaController.addTaskToUpload([compressedFile.path], [url]);
        urls.add(url);
      }

      final result = await locationService.addMedia(
        location.id,
        urls.map(MediaHelper.removeBasePath).toList(),
      );

      if (result.hasErrors()) {
        return UntypedResult.failure(['Error occurred during file upload']);
      }

      await getLocationDetails(location.id);
      return UntypedResult.success();
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot upload location media',
        source: 'LocationDetailsController.uploadMedia()',
        error: ex,
        stackTrace: trace,
      );
      return UntypedResult.failure([YardAppConstants.unknownError]);
    }
  }

  Future<UntypedResult> deleteMedia(List<String> mediaToDelete) async {
    final location = locationDetailsSignal.value.value;

    if (location == null) {
      return UntypedResult.failure([_locationIsEmpty]);
    }

    try {
      final result = await locationService.deleteMedia(
        location.id,
        mediaToDelete,
      );

      if (result.hasErrors()) {
        return UntypedResult.failure(['Error occurred during media deletion']);
      }

      for (final media in mediaToDelete) {
        location.mediaAssets.removeWhere((item) => item.url == media);
      }

      locationDetailsSignal.set(locationDetailsSignal.value, force: true);
      return UntypedResult.success();
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Cannot delete location media',
        source: 'LocationDetailsController.deleteMedia()',
        error: ex,
        stackTrace: trace,
      );
      return UntypedResult.failure([YardAppConstants.unknownError]);
    }
  }
}
