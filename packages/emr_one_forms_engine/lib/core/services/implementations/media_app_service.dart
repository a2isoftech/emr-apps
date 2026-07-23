import 'dart:io';

import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class MediaAppService implements IMediaService {
  late final double? _maxImageWidth;
  late final double? _maxImageHeight;
  late final Duration? _maxVideoDuration;
  late final IUniqueIdGenerator _uniqueIdGenerator;

  static final _sourceMap = {
    CapturedMediaSource.camera: ImageSource.camera,
    CapturedMediaSource.gallery: ImageSource.gallery
  };

  MediaAppService() {
    final config = ServiceContainer().get<IFormConfiguration>();
    _maxImageWidth = config.maxCapturedImageWidth;
    _maxImageHeight = config.maxCapturedImageHeight;
    _maxVideoDuration = config.maxVideoLengthInSecs == null
        ? null
        : Duration(seconds: config.maxVideoLengthInSecs!);

    _uniqueIdGenerator = ServiceContainer().get<IUniqueIdGenerator>();
  }

  @override
  Future<CapturedMedia?> pickMedia(
      {required String componentId,
      required CapturedMediaType type,
      required CapturedMediaSource source}) {
    switch (type) {
      case CapturedMediaType.image:
        return pickImage(componentId, source: source);
      case CapturedMediaType.video:
        return pickVideo(componentId, source: source);
    }
  }

  @override
  Future<CapturedMedia?> pickImage(String componentId,
      {required CapturedMediaSource source}) async {
    final picker = ImagePicker();
    final img = await picker.pickImage(
        source: _sourceMap[source]!,
        maxWidth: _maxImageWidth,
        maxHeight: _maxImageHeight);

    if (img == null) {
      return null;
    }

    return CapturedMedia(
        componentId: componentId,
        type: CapturedMediaType.image,
        file: img,
        uniqueId: _uniqueIdGenerator.generateUniqueId());
  }

  @override
  Future<CapturedMedia?> pickVideo(String componentId,
      {required CapturedMediaSource source}) async {
    final picker = ImagePicker();
    final video = await picker.pickVideo(
        source: _sourceMap[source]!, maxDuration: _maxVideoDuration);

    if (video == null) {
      return null;
    }

    return CapturedMedia(
        componentId: componentId,
        type: CapturedMediaType.video,
        file: video,
        thumbnail: kIsWeb
            ? null
            : XFile(
                (await VideoThumbnail.thumbnailFile(
                  video: video.path,
                ))!,
                mimeType: 'application/png',
                name: '${video.name}.thumb.png'),
        uniqueId: _uniqueIdGenerator.generateUniqueId());
  }

  @override
  Widget imageForMedia(CapturedMedia media, {double? width, double? height}) {
    if (!kIsWeb) {
      return Image.file(
        File((media.thumbnail ?? media.file)!.path),
        width: width,
        height: height,
      );
    }

    if (media.type == CapturedMediaType.video) {
      return Image.asset(
        'assets/video.jpg',
        package: 'emr_one_forms_engine',
      );
    }

    final databaseManager = ServiceContainer().get<IDatabaseManager>();
    final stream = databaseManager.getImageData(media.uniqueId);
    if (stream != null) {
      return Image.memory(
        stream,
        width: width,
        height: height,
      );
    }

    return Image.network(
      media.file!.path,
      width: width,
      height: height,
    );
  }

  @override
  Future<List<CapturedMedia>> loadMedia(
      {required String instanceUuid,
      required Iterable<CapturedMediaDTO> media}) async {
    final dbManager = ServiceContainer().get<IDatabaseManager>();

    final loadedMedia =
        await dbManager.findCapturedMediaForInstance(instanceUuid);

    final toInsert = media
        .where((e) => !loadedMedia
            .any((l) => l.uuid.toLowerCase() == e.uuid.toLowerCase()))
        .toList();

    if (toInsert.isNotEmpty) {
      loadedMedia.addAll(await dbManager.insertDownloadMedia(
          uniqueInstanceId: instanceUuid, media: toInsert));
    }

    final needsDownload = loadedMedia.where((e) => !e.isDownloaded).toList();
    FormsEngine().log?.call(FormsEngineTelemetry.kMediaAppService, {
      'message': 'Downloading media from server',
      'itemCountToDownload': needsDownload.length.toString()
    });
    for (var mediaItem in needsDownload) {
      FormsEngine().log?.call(FormsEngineTelemetry.kMediaAppService, {
        'message': 'Attempting to download media from server',
        'UUID': mediaItem.uuid,
        'instanceId': mediaItem.instanceUuid,
        'componentId': mediaItem.componentId
      });
      final httpService = ServiceContainer().get<IHttpService>();
      final config = ServiceContainer().get<IFormConfiguration>();
      var result = await httpService
          .getFile('${config.downloadMediaUrl}${mediaItem.uuid}');
      if (result.success) {
        var filePath = mediaItem.url;

        if (!kIsWeb) {
          if (filePath.startsWith('blob')) {
            final documentsDir = await getApplicationDocumentsDirectory();
            final mediaDir =
                join(documentsDir.path, FormsConstants.mediaDirectoy);
            filePath = join(mediaDir, mediaItem.uuid);
          }
          final file = await File(filePath).create(recursive: true);
          await file.writeAsBytes(result.response!, flush: true);
        }

        mediaItem.isDownloaded = true;
        mediaItem.localPath = filePath;

        FormsEngine().log?.call(FormsEngineTelemetry.kMediaAppService, {
          'message': 'Updating local db with path for media',
          'UUID': mediaItem.uuid,
          'instanceId': mediaItem.instanceUuid,
          'componentId': mediaItem.componentId
        });

        await ServiceContainer().get<IDatabaseManager>().setCapturedMediaPath(
            mediaItem.uuid,
            localPath: mediaItem.localPath);

        if (kIsWeb) {
          await ServiceContainer()
              .get<IDatabaseManager>()
              .saveImageData(mediaItem.uuid, result.response!);
        }
      } else {
        var filePath = mediaItem.url;
        if (!kIsWeb) {
          if (filePath.startsWith('blob')) {
            final documentsDir = await getApplicationDocumentsDirectory();
            final mediaDir =
                join(documentsDir.path, FormsConstants.mediaDirectoy);
            filePath = join(mediaDir, mediaItem.uuid);
          }
          await File(filePath).create(recursive: true);
        }

        mediaItem.isDownloaded = true;
        mediaItem.localPath = filePath;

        FormsEngine().log?.call(FormsEngineTelemetry.kMediaAppService, {
          'message': 'Updating local db with path for media',
          'UUID': mediaItem.uuid,
          'instanceId': mediaItem.instanceUuid,
          'componentId': mediaItem.componentId
        });

        await ServiceContainer().get<IDatabaseManager>().setCapturedMediaPath(
            mediaItem.uuid,
            localPath: mediaItem.localPath,
            isDownloaded: false);
      }
    }

    FormsEngine().log?.call(FormsEngineTelemetry.kMediaAppService, {
      'message': 'return media list',
      'count': loadedMedia.length.toString(),
      'instanceid': instanceUuid
    });
    return loadedMedia
        .map((e) => CapturedMedia(
            type: CapturedMediaType.values
                .firstWhere((x) => x.name == e.mediaType),
            file: (e.isDownloaded) ? XFile(e.localPath) : null,
            uniqueId: e.uuid,
            componentId: e.componentId))
        .toList();
  }

  @override
  void dispose() {}
}
