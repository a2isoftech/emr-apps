import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class CWGradesInvalid extends StatefulWidget {
  const CWGradesInvalid({
    required this.controller,
    super.key,
  });

  final ContractController controller;

  @override
  State<CWGradesInvalid> createState() => _CWGradesInvalidState();
}

class _CWGradesInvalidState extends State<CWGradesInvalid>
    with AutomaticKeepAliveClientMixin<CWGradesInvalid> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FormField(
      key: widget.controller.gradesInvalidKey,
      validator: (value) {
        if (widget.controller.anyGradesSelected() == false) {
          widget.controller.addInvalidKey(widget.controller.gradesKey!);
          return context.l10n.atLeastOneGradeSelected;
        }
        return null;
      },
      builder: (field) {
        if (field.hasError) {
          if (!widget.controller.appConfig.isWeb) {
            widget.controller.scrollToKey(widget.controller.gradesInvalidKey!);
          }
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
            child: Text(
              field.errorText ?? '',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
