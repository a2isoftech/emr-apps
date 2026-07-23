import 'package:emr_one_core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TestFilterController3 extends EmrFilterController {
  TestFilterController3()
      : super(
          filters: [
            EmrFilterModel<String>(
              key: 'test',
              name: 'Test',
            ),
          ],
          filterContentBuilder: (context, filter, controller) =>
              const SizedBox(),
        );

  @override
  String? validator() => 'Error message';
}
