// controllers/load_out_controller.dart

import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/controllers/media_controller.dart';
import 'package:emr_one_yard_app/helpers/media_helper.dart';
import 'package:emr_one_yard_app/models/load_out/load_out_input.dart';
import 'package:emr_one_yard_app/models/result.dart';
import 'package:emr_one_yard_app/models/ticket/load_out_ticket.dart';
import 'package:emr_one_yard_app/services/load_out_service.dart';
import 'package:emr_one_yard_app/services/yard_ticket_service.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

enum LoadOutStep { details, preChecks, images, postChecks }

class LoadOutController {
  LoadOutController({
    required this.loadOutService,
    required this.ticketService,
    required this.userInfoService,
    required this.mediaController,
  });

  final LoadOutService loadOutService;
  final UserInfoService userInfoService;
  final List<String> unknownError = ['Unknown error occurred'];
  final YardTicketService ticketService;
  final MediaController mediaController;

  final ticketInput = ValueNotifier<String?>(null);
  final containerNumber = ValueNotifier<String?>(null);
  final containerSize = ValueNotifier<Enum$ContainerSize?>(null);
  final ValueNotifier<String?> ropeSeal = ValueNotifier<String?>(null);
  final ValueNotifier<String?> boltSeal = ValueNotifier<String?>(null);
  final ValueNotifier<String?> otherSeal = ValueNotifier<String?>(null);

  final otherChecks = ValueNotifier<String?>(null);
  final enableTicketSearch = ValueNotifier<bool>(true);
  final keepEnable = ValueNotifier<bool>(true);
  Timer? _timer;
  // for the image paths
  final ValueNotifier<String?> emptyImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> halfLoadedImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> fullyLoadedImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> halfClosedImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> fullyClosedImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> locationImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> rightSideImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> leftSideImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> radiationDoorImage = ValueNotifier<String?>(
    null,
  );
  final ValueNotifier<List<String>> otherImages = ValueNotifier([]);
  final ValueNotifier<String?> ropeSealImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> boltSealImage = ValueNotifier<String?>(null);
  final ValueNotifier<String?> otherSealImage = ValueNotifier<String?>(null);
  final ValueNotifier<LoadOutTicket?> selectedTicket =
      ValueNotifier<LoadOutTicket?>(null);
  final formKey = GlobalKey<FormState>();
  final completeFormKey = GlobalKey<FormState>();
  String localPath = '';
  String token = '';
  LoadOutInput? loadOutInput;
  final isLoading = signal(true);
  bool initalLoadError = false;

  void setTicket() {
    ticketInput.value = selectedTicket.value?.ticketId;
    if (!(loadOutInput?.completed ?? false)) {
      containerNumber.value =
          selectedTicket.value?.containerNumber ?? containerNumber.value;
    }
  }

  void initLoadOutFields(LoadOutInput input) {
    final sealsByType = {
      for (final SealDetails s in input.sealNumbers) s.type: s,
    };
    final ropeSealData = sealsByType[Enum$ContainerSealType.ROPE_SEAL];
    final boltSealData = sealsByType[Enum$ContainerSealType.BOLT_SEAL];
    final otherSealData = sealsByType[Enum$ContainerSealType.ADDITIONAL_SEAL];

    loadOutInput = input;
    enableTicketSearch.value = input.id == null || !input.completed;
    keepEnable.value = !input.completed;
    ticketInput.value = input.ticketId;
    containerNumber.value = input.containerId;
    containerSize.value = input.containerSize;
    otherImages.value = input.otherImages;
    ropeSeal.value = ropeSealData?.number;
    ropeSealImage.value = ropeSealData?.imagePath;
    boltSeal.value = boltSealData?.number;
    boltSealImage.value = boltSealData?.imagePath;
    otherSeal.value = otherSealData?.number;
    otherSealImage.value = otherSealData?.imagePath;
    emptyImage.value = input.imageEmpty;
    halfLoadedImage.value = input.imageHalfLoadedWithContainerNumber;
    fullyLoadedImage.value = input.imageFullyLoaded;
    halfClosedImage.value = input.imageFullyLoadedOneDoorShut;
    fullyClosedImage.value = input.imageFullyLoadedBothDoorsShutSeals;
    locationImage.value = input.imageHeap;
    rightSideImage.value = input.imageRightSideQualityCheck;
    leftSideImage.value = input.imageLeftSideQualityCheck;
    radiationDoorImage.value = input.imageFullyLoadedOneDoorShutRadiation;
    otherChecks.value = input.preConditionQuestions.otherIsIntact;
    selectedTicket.addListener(setTicket);
  }

  void clearLoadOutFields() {
    ticketInput.value = null;
    containerNumber.value = null;
    containerSize.value = null;
    otherImages.value = [];
    ropeSeal.value = null;
    boltSeal.value = null;
    otherSeal.value = null;
    ropeSealImage.value = null;
    boltSealImage.value = null;
    otherSealImage.value = null;
    emptyImage.value = null;
    halfLoadedImage.value = null;
    fullyLoadedImage.value = null;
    halfClosedImage.value = null;
    fullyClosedImage.value = null;
    locationImage.value = null;
    rightSideImage.value = null;
    leftSideImage.value = null;
    radiationDoorImage.value = null;
  }

  Future<List<Query$SearchTickets$searchTickets$nodes>> loadTickets(
    String query,
  ) async {
    final yards = [userInfoService.userInfo.defaultYard];
    final input = Input$SearchTicketsInput(
      query: query,
      yardCodes: yards,
      ticketType: Enum$TicketType.OUTWARDS,
      active: true,
      ticketStatus: [
        Enum$TicketStatus.DRAFT,
        Enum$TicketStatus.ACTIVE,
        Enum$TicketStatus.CLOSED,
      ],
    );

    final ticketData = await ticketService.getYardTickets(
      input: input,
      count: 20,
    );
    return ticketData;
  }

  Future<LoadOutInput?> getLoadOutInput(
    String? loadOutId,
    String? ticketId,
    String? containerNumber,
  ) async {
    isLoading.value = true;
    try {
      if (loadOutId == null && ticketId == null) {
        return LoadOutInput(
          ticketId: ticketId,
          yardId: userInfoService.userInfo.defaultYard,
          assignedToUser: userInfoService.userInfo.id,
        );
      }
      final data = await loadOutService.getLoadOut(
        loadOutId: loadOutId,
        ticketId: ticketId,
      );
      if (data == null) {
        return LoadOutInput(
          ticketId: ticketId,
          yardId: userInfoService.userInfo.defaultYard,
          assignedToUser: userInfoService.userInfo.id,
        );
      }
      if (data.ticket != null) {
        selectedTicket.value = LoadOutTicket(
          ticketId: data.ticket!.id,
          ticketNumber: data.ticket!.ticketNumber,
          accountNumber: data.ticket!.account.accountNumber,
          accountName: data.ticket!.account.name,
          containerNumber: data.containerId,
        );
      }
      return LoadOutInput.fromExisting(data);
    } on Exception catch (ex, trace) {
      initalLoadError = true;
      EmrLogger.error(
        'Error during Load Out load',
        source: 'LoadOutController.getLoadOutInput()',
        error: ex,
        stackTrace: trace,
      );
      return null;
    } finally {
      isLoading.value = false;
    }
  }

  Future<UntypedResult> saveLoadOut() async {
    try {
      loadOutInput!.preConditionQuestions.otherIsIntact = otherChecks.value;
      final result = await loadOutService.saveLoadOut(
        loadOutInput!.toSaveModel(),
      );
      if (result.hasErrors()) {
        return UntypedResult.failure(
          result.errors!.map((e) => e.message).toList(),
        );
      }
      return UntypedResult.success();
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error during Load Out save',
        source: 'LoadOutController.saveLoadOut()',
        error: ex,
        stackTrace: trace,
      );
      return UntypedResult.failure(unknownError);
    }
  }

  Future<TypedResult<String>> createLoadOut() async {
    try {
      isLoading.value = true;
      final result = await loadOutService.createLoadOut(
        Input$CreateLoadOutInput(
          ticketId: ticketInput.value,
          containerSize: containerSize.value!,
          containerId: containerNumber.value!.toUpperCase(),
          yardId: userInfoService.userInfo.defaultYard,
        ),
      );

      if (result.hasErrors()) {
        return TypedResult.failure(
          result.errors!.map((e) => e.message).toList(),
        );
      }
      if (result.data == null) {
        return TypedResult.failure(unknownError);
      }

      return TypedResult.success(result.data!.createLoadOut);
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error during Load Out create',
        source: 'LoadOutController.createLoadOut()',
        error: ex,
        stackTrace: trace,
      );

      return TypedResult.failure(unknownError);
    } finally {
      isLoading.value = false;
    }
  }

  Future<UntypedResult> completeLoadOut() async {
    isLoading.value = true;
    try {
      loadOutInput!.sealNumbers = [
        SealDetails(
          number: ropeSeal.value!,
          type: Enum$ContainerSealType.ROPE_SEAL,
          imagePath: ropeSealImage.value,
        ),
        SealDetails(
          number: boltSeal.value!,
          type: Enum$ContainerSealType.BOLT_SEAL,
          imagePath: boltSealImage.value,
        ),
      ];
      if (otherSeal.value != null || otherSealImage.value != null) {
        loadOutInput!.sealNumbers.add(
          SealDetails(
            number: otherSeal.value ?? '',
            type: Enum$ContainerSealType.ADDITIONAL_SEAL,
            imagePath: otherSealImage.value,
          ),
        );
      }

      final result = await loadOutService.completeLoadOut(
        loadOutInput!.toSaveModel(),
      );
      if (result.hasErrors()) {
        return UntypedResult.failure(
          result.errors!.map((e) => e.message).toList(),
        );
      }
      if (result.data == null) {
        return UntypedResult.failure(unknownError);
      }
      return UntypedResult.success();
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error during Load Out complete',
        source: 'LoadOutController.completeLoadOut()',
        error: ex,
        stackTrace: trace,
      );
      return UntypedResult.failure(unknownError);
    } finally {
      isLoading.value = false;
    }
  }

  Future<(String folder, String token)> getLocalPathAndToken() async {
    //Created image in ticket folder so local images can be shown in an outward
    //ticket details section.
    var path = loadOutInput!.id!;
    if (ticketInput.value != null) {
      final number = ticketInput.value!.split('/').last;
      path = '$number-${Enum$TicketType.OUTWARDS.name}';
    }
    return (
      await MediaHelper.getLocalFolder(path),
      await FirebaseLogin.getToken(),
    );
  }

  Future<UntypedResult> saveImages() async {
    loadOutInput!.imageEmpty = emptyImage.value;
    loadOutInput!.imageHalfLoadedWithContainerNumber = halfLoadedImage.value;
    loadOutInput!.imageFullyLoaded = fullyLoadedImage.value;
    loadOutInput!.imageFullyLoadedOneDoorShut = halfClosedImage.value;
    loadOutInput!.imageFullyLoadedBothDoorsShutSeals = fullyClosedImage.value;
    loadOutInput!.imageFullyLoadedOneDoorShutRadiation =
        radiationDoorImage.value;
    loadOutInput!.imageHeap = locationImage.value;
    loadOutInput!.imageLeftSideQualityCheck = leftSideImage.value;
    loadOutInput!.imageRightSideQualityCheck = rightSideImage.value;
    loadOutInput!.otherImages = otherImages.value;
    return saveLoadOut();
  }

  void dispose() {
    _timer?.cancel();
    selectedTicket.removeListener(setTicket);
  }
}
