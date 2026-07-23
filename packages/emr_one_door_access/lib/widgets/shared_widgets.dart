import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

Widget processingIndicator() {
  return const Center(
    child: SizedBox(
      height: Insets.gutter * 2,
      width: Insets.gutter * 2,
      child: CircularProgressIndicator(),
    ),
  );
}
