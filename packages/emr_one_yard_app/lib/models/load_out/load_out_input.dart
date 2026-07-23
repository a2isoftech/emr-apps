import 'package:emr_core_api/emr_core_api.dart';

class LoadOutInput {
  LoadOutInput({
    this.id,
    this.ticketId,
    this.yardId,
    this.assignedToUser,
    this.completed = false,
    this.containerId,
    this.sealNumbers = const [],
    this.containerSize,
    this.imageHeap,
    this.imageEmpty,
    this.imageHalfLoadedWithContainerNumber,
    this.imageFullyLoaded,
    this.imageFullyLoadedOneDoorShut,
    this.imageFullyLoadedOneDoorShutRadiation,
    this.imageFullyLoadedBothDoorsShutSeals,
    this.imageLeftSideQualityCheck,
    this.imageRightSideQualityCheck,
    PreContainerQuestions? preConditionQuestions,
    PostContainerQuestions? postConditionQuestions,
    this.otherImages = const [],
  }) {
    if (preConditionQuestions != null) {
      this.preConditionQuestions = preConditionQuestions;
    }
    if (postConditionQuestions != null) {
      this.postConditionQuestions = postConditionQuestions;
    }
  }

  factory LoadOutInput.fromExisting(Query$GetLoadOutDetails$loadOut data) {
    return LoadOutInput(
      id: data.id,
      ticketId: data.ticketId,
      yardId: data.yardId,
      completed: data.completed,
      containerId: data.containerId,
      sealNumbers: [
        ...data.containerSealDetails.map(
          (s) => SealDetails(
            number: s.sealNumber,
            type: s.sealType,
            imagePath: s.imagePath,
          ),
        ),
      ],
      containerSize: data.containerSize,
      imageHeap: data.containerImages.heap,
      imageEmpty: data.containerImages.empty,
      imageHalfLoadedWithContainerNumber:
          data.containerImages.halfLoadedWithContainerNumber,
      imageFullyLoaded: data.containerImages.fullyLoaded,
      imageFullyLoadedOneDoorShut: data.containerImages.fullyLoadedOneDoorShut,
      imageFullyLoadedOneDoorShutRadiation:
          data.containerImages.fullyLoadedOneDoorShutRadiation,
      imageFullyLoadedBothDoorsShutSeals:
          data.containerImages.fullyLoadedBothDoorsShutSeals,
      imageLeftSideQualityCheck: data.containerImages.leftSideQualityCheck,
      imageRightSideQualityCheck: data.containerImages.rightSideQualityCheck,
      otherImages: data.containerImages.additionalImages,
      preConditionQuestions: PreContainerQuestions(
        sideIsIntact: data.preConditionQuestions.sideIsIntact,
        backIsIntact: data.preConditionQuestions.backIsIntact,
        frontIsIntact: data.preConditionQuestions.frontIsIntact,
        lockingIsIntact: data.preConditionQuestions.lockingIsIntact,
        cornerCastingIsIntact: data.preConditionQuestions.cornerCastingIsIntact,
        roofIsIntact: data.preConditionQuestions.roofIsIntact,
        floorIsIntact: data.preConditionQuestions.floorIsIntact,
        otherIsIntact: data.preConditionQuestions.otherIsIntact,
        maxPayloadIsSuitable: data.preConditionQuestions.maxPayloadIsSuitable,
        containerAgeIsSuitable:
            data.preConditionQuestions.containerAgeIsSuitable,
      ),
      postConditionQuestions: PostContainerQuestions(
        sideIsIntact: data.postConditionQuestions.sideIsIntact,
        backIsIntact: data.postConditionQuestions.backIsIntact,
        frontIsIntact: data.postConditionQuestions.frontIsIntact,
        lockingIsIntact: data.postConditionQuestions.lockingIsIntact,
        cornerCastingIsIntact:
            data.postConditionQuestions.cornerCastingIsIntact,
        roofIsIntact: data.postConditionQuestions.roofIsIntact,
        floorIsIntact: data.postConditionQuestions.floorIsIntact,
        netWeightUnderPayload:
            data.postConditionQuestions.netWeightUnderPayload,
      ),
    );
  }

  String? id;
  String? ticketId;
  String? yardId;
  String? assignedToUser;
  bool completed = false;
  String? containerId;
  List<SealDetails> sealNumbers;
  Enum$ContainerSize? containerSize;

  String? imageHeap;
  String? imageEmpty;
  String? imageHalfLoadedWithContainerNumber;
  String? imageFullyLoaded;
  String? imageFullyLoadedOneDoorShut;
  String? imageFullyLoadedOneDoorShutRadiation;
  String? imageFullyLoadedBothDoorsShutSeals;
  String? imageLeftSideQualityCheck;
  String? imageRightSideQualityCheck;
  List<String> otherImages;
  PreContainerQuestions preConditionQuestions = PreContainerQuestions();
  PostContainerQuestions postConditionQuestions = PostContainerQuestions();

  bool get isNew {
    return id == null;
  }

  bool get hasTicket {
    return ticketId != null;
  }

  Input$SaveLoadOutInput toSaveModel() {
    return Input$SaveLoadOutInput(
      id: id,
      sealDetails: [
        ...sealNumbers.map(
          (s) => Input$SealDetailInput(
            seal: s.number,
            sealType: s.type,
            imagePath: s.imagePath,
          ),
        ),
      ],
      preConditionQuestions: Input$PreContainerConditionInput(
        maxPayloadIsSuitable: preConditionQuestions.maxPayloadIsSuitable,
        containerAgeIsSuitable: preConditionQuestions.containerAgeIsSuitable,
        sideIsIntact: preConditionQuestions.sideIsIntact,
        backIsIntact: preConditionQuestions.backIsIntact,
        frontIsIntact: preConditionQuestions.frontIsIntact,
        lockingIsIntact: preConditionQuestions.lockingIsIntact,
        cornerCastingIsIntact: preConditionQuestions.cornerCastingIsIntact,
        roofIsIntact: preConditionQuestions.roofIsIntact,
        floorIsIntact: preConditionQuestions.floorIsIntact,
        otherIsIntact: preConditionQuestions.otherIsIntact,
      ),
      postConditionQuestions: Input$PostContainerConditionInput(
        netWeightUnderPayload: postConditionQuestions.netWeightUnderPayload,
        sideIsIntact: postConditionQuestions.sideIsIntact,
        backIsIntact: postConditionQuestions.backIsIntact,
        frontIsIntact: postConditionQuestions.frontIsIntact,
        lockingIsIntact: postConditionQuestions.lockingIsIntact,
        cornerCastingIsIntact: postConditionQuestions.cornerCastingIsIntact,
        roofIsIntact: postConditionQuestions.roofIsIntact,
        floorIsIntact: postConditionQuestions.floorIsIntact,
      ),
      containerImages: Input$ContainerImagesInput(
        heap: imageHeap,
        empty: imageEmpty,
        fullyLoaded: imageFullyLoaded,
        fullyLoadedBothDoorsShutSeals: imageFullyLoadedBothDoorsShutSeals,
        fullyLoadedOneDoorShut: imageFullyLoadedOneDoorShut,
        fullyLoadedOneDoorShutRadiation: imageFullyLoadedOneDoorShutRadiation,
        halfLoadedWithContainerNumber: imageHalfLoadedWithContainerNumber,
        leftSideQualityCheck: imageLeftSideQualityCheck,
        rightSideQualityCheck: imageRightSideQualityCheck,
        additionalImages: otherImages,
      ),
    );
  }
}

class PreContainerQuestions extends ContainerQuestions {
  PreContainerQuestions({
    super.sideIsIntact = false,
    super.backIsIntact = false,
    super.frontIsIntact = false,
    super.lockingIsIntact = false,
    super.cornerCastingIsIntact = false,
    super.roofIsIntact = false,
    super.floorIsIntact = false,
    super.otherIsIntact,
    this.maxPayloadIsSuitable = false,
    this.containerAgeIsSuitable = false,
  });

  bool maxPayloadIsSuitable = false;
  bool containerAgeIsSuitable = false;
}

class PostContainerQuestions extends ContainerQuestions {
  PostContainerQuestions({
    super.sideIsIntact = false,
    super.backIsIntact = false,
    super.frontIsIntact = false,
    super.lockingIsIntact = false,
    super.cornerCastingIsIntact = false,
    super.roofIsIntact = false,
    super.floorIsIntact = false,
    super.otherIsIntact,
    this.netWeightUnderPayload = false,
  });

  bool netWeightUnderPayload = false;
}

class ContainerQuestions {
  ContainerQuestions({
    this.sideIsIntact = false,
    this.backIsIntact = false,
    this.frontIsIntact = false,
    this.lockingIsIntact = false,
    this.cornerCastingIsIntact = false,
    this.roofIsIntact = false,
    this.floorIsIntact = false,
    this.otherIsIntact,
  });

  bool sideIsIntact = false;
  bool backIsIntact = false;
  bool frontIsIntact = false;
  bool lockingIsIntact = false;
  bool cornerCastingIsIntact = false;
  bool roofIsIntact = false;
  bool floorIsIntact = false;
  String? otherIsIntact;
}

class SealDetails {
  SealDetails({required this.number, required this.type, this.imagePath});

  String number;
  Enum$ContainerSealType type;
  String? imagePath;
}
