import 'dart:core';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'container_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ContainerDetails {
  ContainerDetails({
    this.jobContainerGuid,
    this.containerType,
    this.suggestedAssetNumber,
    this.isContainerRetained,
    this.isContainerFull,
    this.active,
    this.assetNumberUsed,
  }) : quantity = ValueNotifier<int>(1);

  factory ContainerDetails.fromJson(Map<String, dynamic> json) =>
      _$ContainerDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContainerDetailsToJson(this);

  String? jobContainerGuid;
  String? containerType;
  String? suggestedAssetNumber;
  bool? isContainerRetained;
  bool? isContainerFull;
  bool? active;
  String? assetNumberUsed;

  @JsonKey(includeFromJson: false, includeToJson: false)
  ValueNotifier<int> quantity;

  ContainerDetails copyWith({
    String? jobContainerGuid,
    String? containerType,
    String? suggestedAssetNumber,
    bool? isContainerRetained,
    bool? isContainerFull,
    bool? active,
    String? assetNumberUsed,
  }) {
    return ContainerDetails(
      jobContainerGuid: jobContainerGuid,
      containerType: containerType ?? this.containerType,
      suggestedAssetNumber: suggestedAssetNumber ?? this.suggestedAssetNumber,
      isContainerRetained: isContainerRetained ?? this.isContainerRetained,
      isContainerFull: isContainerFull ?? this.isContainerFull,
      active: active ?? this.active,
      assetNumberUsed: assetNumberUsed ?? this.assetNumberUsed,
    );
  }
}
