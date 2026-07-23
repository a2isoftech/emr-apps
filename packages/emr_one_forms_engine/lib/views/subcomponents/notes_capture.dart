import 'package:emr_one_forms_engine/core/constants/constants.dart';
import 'package:flutter/material.dart';

class QuestionNotesCapture extends StatefulWidget {
  final void Function(String note) onChange;
  final String parentComponentId;
  final String? initialValue;
  final FocusNode? focusNode;
  final bool isSRNotes;

  const QuestionNotesCapture({
    super.key,
    this.initialValue,
    required this.parentComponentId,
    required this.onChange,
    this.focusNode,
    required this.isSRNotes,
  });

  @override
  State<StatefulWidget> createState() => _QuestionNotesCaptureState();
}

class _QuestionNotesCaptureState extends State<QuestionNotesCapture> {
  late TextEditingController _noteController;
  late FocusNode _focusNode;
  bool _isEditing = false;
  late String? _lastValue;

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController(text: widget.initialValue);
    _focusNode = widget.focusNode ?? FocusNode();
    _lastValue = widget.initialValue;

    _focusNode.addListener(onFocusChange);
  }

  @override
  void deactivate() {
    _focusNode.removeListener(onFocusChange);
    super.deactivate();
  }

  @override
  void dispose() {
    _noteController.dispose();
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void onFocusChange() {
    if (_isEditing != _focusNode.hasFocus) {
      setState(() => _isEditing = _focusNode.hasFocus);
    }

    if (_focusNode.hasFocus) {
      _lastValue = _noteController.text;
    } else if (_noteController.text != _lastValue) {
      widget.onChange(_noteController.text);
    }
  }

  void _onChanged(String value) {
    debugPrint(value);
    widget.onChange(_noteController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            focusNode: _focusNode,
            textCapitalization: TextCapitalization.sentences,
            maxLength: FormsConstants.maxNoteLength,
            minLines: _isEditing ? 5 : 1,
            maxLines: _isEditing ? 8 : 1,
            decoration: InputDecoration.collapsed(
              hintText: widget.isSRNotes
                  ? StringLiteral.SRNotesPlaceholder
                  : StringLiteral.NotesPlaceholder,
              filled: true,
            ),
            controller: _noteController,
            onChanged: (value) => _onChanged(value),
            keyboardType: TextInputType.multiline,
          ),
        ],
      ),
    );
  }
}
