import 'package:flutter/material.dart';

@immutable
class Product {
  const Product({
    required this.id,
    required this.code,
    this.description,
    this.productClass,
    this.productFamily,
    this.productLine,
  });

  final String id;
  final String code;
  final String? description;
  final String? productFamily;
  final String? productLine;
  final String? productClass;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Product && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
