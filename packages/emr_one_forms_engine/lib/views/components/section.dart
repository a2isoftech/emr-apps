import 'dart:async';

import 'package:emr_one_forms_engine/core/models/service/service_models.dart';
import 'package:emr_one_forms_engine/core/store/components/checkbox_component.dart';
import 'package:emr_one_forms_engine/core/store/components/date_picker_component.dart';
import 'package:emr_one_forms_engine/core/store/components/declaration_component.dart';
import 'package:emr_one_forms_engine/core/store/components/drop_down_component.dart';
import 'package:emr_one_forms_engine/core/store/components/email_component.dart';
import 'package:emr_one_forms_engine/core/store/components/phone_component.dart';
import 'package:emr_one_forms_engine/core/store/components/rating_component.dart';
import 'package:emr_one_forms_engine/core/store/components/section.dart';
import 'package:emr_one_forms_engine/core/store/components/static_label_component.dart';
import 'package:emr_one_forms_engine/core/store/components/submit_form_component.dart';
import 'package:emr_one_forms_engine/core/store/components/text_input_component.dart';
import 'package:emr_one_forms_engine/core/store/components/url_component.dart';
import 'package:emr_one_forms_engine/core/store/components/yes_no_question_component.dart';
import 'package:emr_one_forms_engine/views/components/checkbox.dart';
import 'package:emr_one_forms_engine/views/components/date_picker.dart';
import 'package:emr_one_forms_engine/views/components/declaration.dart';
import 'package:emr_one_forms_engine/views/components/drop_down.dart';
import 'package:emr_one_forms_engine/views/components/email.dart';
import 'package:emr_one_forms_engine/views/components/phone.dart';
import 'package:emr_one_forms_engine/views/components/rating_input.dart';
import 'package:emr_one_forms_engine/views/components/static_label.dart';
import 'package:emr_one_forms_engine/views/components/submit_form.dart';
import 'package:emr_one_forms_engine/views/components/text_input.dart';
import 'package:emr_one_forms_engine/views/components/url.dart';
import 'package:flutter/material.dart';

import 'yes_no_question.dart';

typedef IntCallbackFunc = void Function(int);

class FormSectionWidget extends StatefulWidget {
  final IFormSection model;
  final IntCallbackFunc onSubmit;

  const FormSectionWidget(this.model, {super.key, required this.onSubmit});

  @override
  State<FormSectionWidget> createState() => _FormSectionWidgetState();
}

class _FormSectionWidgetState extends State<FormSectionWidget> {
  final List<StreamSubscription> _subs = [];

  void returnTabIndex(int tabIndex) {
    widget.onSubmit(tabIndex);
  }

  @override
  void initState() {
    super.initState();
    var componentsWithVisibility = widget.model.components.where(
      (c) => c.visibilityProvider != null,
    );

    if (componentsWithVisibility.isNotEmpty) {
      _subs.addAll(
        componentsWithVisibility.map(
          (c) => c.visibilityProvider!.listenForBool((_) => setState(() => {})),
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();

    for (var s in _subs) {
      s.cancel();
    }
    _subs.clear();
  }

  Widget _componentLoader(IFormComponent component) {
    if (component is YesNoQuestionComponent) {
      return YesNoQuestionWidget(model: component);
    } else if (component is StaticLabelComponent) {
      return StaticLabelWidget(model: component);
    } else if (component is TextInputComponent) {
      return TextInputWidget(model: component);
    } else if (component is DatePickerComponent) {
      return DatePickerWidget(model: component);
    } else if (component is DropdownComponent) {
      return DropdownWidget(model: component);
    } else if (component is DeclarationComponent) {
      return DeclarationWidget(model: component);
    } else if (component is CheckboxComponent) {
      return CheckboxWidget(model: component);
    } else if (component is UrlComponent) {
      return UrlWidget(model: component);
    } else if (component is PhoneComponent) {
      return PhoneWidget(model: component);
    } else if (component is EmailComponent) {
      return EmailWidget(model: component);
    } else if (component is RatingComponent) {
      return RatingWidget(model: component);
    } else if (component is SubmitFormComponent) {
      return SubmitFormWidget(
        model: component,
        onSubmit: (value) => {returnTabIndex(value)},
        message: _getMessage(),
      );
    }

    throw Exception(
      'Component ${component.runtimeType} is not mapped to a widget',
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];

    for (var component in widget.model.components) {
      if (component.visibilityProvider == null ||
          component.visibilityProvider!.boolValue) {
        if (children.isNotEmpty) {
          children.add(const SizedBox(height: 10));
        }

        /// condition to skip trying to add the declaration component
        if (component is! DeclarationComponent) {
          children.add(_componentLoader(component));
        }
      }
    }

    return ListView(padding: const EdgeInsets.all(10), children: children);
  }

  String? _getMessage() {
    String message = '';
    var declComp = widget.model.components.whereType<DeclarationComponent>();
    if (declComp.isNotEmpty) {
      message = declComp.first.message ?? '';
    }
    return message;
  }
}
