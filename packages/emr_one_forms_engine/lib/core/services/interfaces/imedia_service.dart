import 'package:emr_one_forms_engine/core/constants/enums.dart';
import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/models/service/service_models.dart';
import 'package:flutter/material.dart';

import 'idisposable.dart';

abstract class IMediaService extends IDisposable {
  Future<CapturedMedia?> pickMedia(
      {required String componentId,
      required CapturedMediaType type,
      required CapturedMediaSource source});

  Future<CapturedMedia?> pickImage(String componentId,
      {required CapturedMediaSource source});

  Future<CapturedMedia?> pickVideo(String componentId,
      {required CapturedMediaSource source});

  Future<List<CapturedMedia>> loadMedia(
      {required String instanceUuid,
      required Iterable<CapturedMediaDTO> media});

  Widget imageForMedia(CapturedMedia media, {double? width, double? height});
}
