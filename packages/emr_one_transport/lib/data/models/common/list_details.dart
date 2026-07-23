import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
@immutable
class ListDetails {
  const ListDetails({
    this.id,
    this.code,
    this.description,
    this.order,
    this.active,
  });

  factory ListDetails.fromJson(Map<String, dynamic> json) =>
      _$ListDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ListDetailsToJson(this);

  final String? id;
  final String? code;
  final String? description;
  final int? order;
  final bool? active;

  @override
  String toString() {
    return description ?? code ?? '';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return (other is ListDetails) &&
        other.code == code &&
        other.description == description;
  }

  @override
  int get hashCode => Object.hash(code, description);
}
