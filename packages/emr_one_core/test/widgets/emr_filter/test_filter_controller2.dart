import 'package:emr_one_core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TestFilterController2 extends EmrFilterController {
  TestFilterController2()
      : super(
          filterContentBuilder: (context, filter, controller) =>
              const SizedBox(),
          addFilterContentBuilder: (context, filter, controller) =>
              const SizedBox(),
        );
}
