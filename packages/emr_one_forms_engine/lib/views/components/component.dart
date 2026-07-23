import 'dart:async';

import 'package:emr_one_forms_engine/core/models/service/service_models.dart';
import 'package:flutter/material.dart';

abstract class FormComponentWidget<T extends IFormComponent>
    extends StatefulWidget {
  final T model;

  const FormComponentWidget({super.key, required this.model});
}

abstract class FormComponentState<
  C extends IFormComponent,
  T extends FormComponentWidget<C>
>
    extends State<T> {
  late C currentModel;
  final List<StreamSubscription> allSubs = [];

  @override
  void initState() {
    super.initState();
    currentModel = widget.model;

    allSubs.add(
      currentModel.addListener((t) {
        setState(() => onValueChange(t));
      }),
    );
  }

  @override
  void deactivate() {
    super.deactivate();

    for (var sub in allSubs) {
      sub.cancel();
    }

    allSubs.clear();
  }

  /// Overridable callback for when primary value changes
  void onValueChange(String t) {}

  void addPropertyListener(
    String propertyName,
    void Function(String) callback,
  ) {
    allSubs.add(
      currentModel.addListenerForProperty(
        propertyName,
        (t) => setState(() => callback(t)),
      ),
    );
  }

  void changeValue(String newValue) {
    currentModel.changeValue(newValue);
  }
}
