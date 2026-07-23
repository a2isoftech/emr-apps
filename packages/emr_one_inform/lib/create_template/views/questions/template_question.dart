import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

abstract class TemplateQuestion extends StatefulWidget {
  const TemplateQuestion({
    required this.component,
    required this.onStateChanged,
    super.key,
  });
  final Component component;
  final void Function() onStateChanged;
}

abstract class TemplateQuestionState<T extends TemplateQuestion>
    extends State<T> {
  Widget getDefaultParameterWidgets() {
    return Column(
      children: [
        ResponsiveGridRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResponsiveGridCol(
              sm: 2,
              child: const Text('Options'),
            ),
            ResponsiveGridCol(
              sm: 10,
              child: Wrap(
                spacing: 10,
                children: [
                  InputChip(
                    label: const Text('Is Required'),
                    selected: widget.component.isRequired ?? false,
                    onSelected: (value) {
                      widget.component.isRequired = value;
                      stateChanged();
                    },
                    selectedColor: FormAppColors.success,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void stateChanged() {
    setState(() {});
    //widget.onStateChanged();
  }
}
