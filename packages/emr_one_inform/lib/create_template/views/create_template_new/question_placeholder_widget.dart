import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuestionPlaceholderWidget extends StatefulWidget {
  const QuestionPlaceholderWidget({
    required this.section,
    required this.component,
    required this.onStateChanged,
    required this.onQuestionSelected,
    super.key,
  });

  final Section section;
  final Component component;
  final void Function() onStateChanged;
  final void Function(Section, Component) onQuestionSelected;

  @override
  State<QuestionPlaceholderWidget> createState() =>
      _QuestionPlaceholderWidgetState();
}

class _QuestionPlaceholderWidgetState extends State<QuestionPlaceholderWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InputChip(
      onPressed: () {
        widget.onQuestionSelected(widget.section, widget.component);
      },
      label: Text(
        '''[${widget.component.type}] - ${widget.component.title ?? widget.component.message ?? ''}''',
      ),
      deleteIcon: Ink(
        decoration: ShapeDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: FaIcon(
            FontAwesomeIcons.xmark,
            color: Theme.of(context).colorScheme.onTertiary,
            size: 14,
          ),
        ),
      ),
      onDeleted: () {
        widget.section.components?.remove(widget.component);
        widget.onStateChanged();
      },
    );
  }
}
