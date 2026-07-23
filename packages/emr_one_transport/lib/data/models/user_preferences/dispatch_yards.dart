import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'dispatch_yards.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class DispatchYards {
  DispatchYards({
    this.yardCode,
    this.yardName,
    this.isDispatchYard,
  });

  factory DispatchYards.fromJson(Map<String, dynamic> json) =>
  _$DispatchYardsFromJson(json);

  String? yardCode;
  String? yardName;
  bool? isDispatchYard;

  Map<String, dynamic> toJson() => _$DispatchYardsToJson(this);
}
