import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

@internal
class EmrFormInherited extends InheritedWidget {
  EmrFormInherited({
    required super.child,
    super.key,
    this.mode = EmrFormMode.normal,
  });

  final EmrFormMode mode;

  final errors = EmrFormErrorGroups({});

  @override
  bool updateShouldNotify(EmrFormInherited oldWidget) => mode != oldWidget.mode;
}
