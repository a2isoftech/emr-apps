import 'package:emr_one_forms_engine/core/services/interfaces/iconfiguration.dart';
import 'package:emr_one_forms_engine/core/services/service_container.dart';
import 'package:emr_one_forms_engine/core/store/components/declaration_component.dart';
import 'package:emr_one_forms_engine/core/store/iform_store.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DeclarationWidget extends FormComponentWidget<DeclarationComponent> {
  const DeclarationWidget({super.key, required super.model});

  @override
  State<DeclarationWidget> createState() => _DeclarationWidgetState();
}

class _DeclarationWidgetState
    extends FormComponentState<DeclarationComponent, DeclarationWidget> {
  bool isChecked = false;
  DateTime today = DateTime.now();
  IFormStore store = ServiceContainer().get<IFormStore>();
  String submitDate = '', submitTime = '', userName = '', userUuid = '';

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      dense: false,
      value: false,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
          _initialiseComponent();
        });
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Text(
          currentModel.message ?? '',
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
      visualDensity: const VisualDensity(horizontal: -4),
    );
  }

  _initialiseComponent() {
    today = DateTime.now();
    final activeLocale = Localizations.localeOf(context);
    submitDate = DateFormat.yMd(
      activeLocale.toString(),
    ).format(today.toLocal());
    submitTime = today.toIso8601String().substring(11, 16);
    userName = ServiceContainer().get<IFormConfiguration>().userName;
    userUuid = ServiceContainer().get<IFormConfiguration>().userUuid;
  }
}
