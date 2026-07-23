import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:flutter/material.dart';

class Textbox extends EmrTextInputStatefulWidget {
  Textbox({
    required this.value,
    super.key,
    this.onChanged,
    super.label,
    this.validator,
    super.inputFormatters,
    super.maxLength,
    super.maxLines,
    super.hintText,
    super.enabled,
    this.onFieldSubmitted,
    this.autoFocus,
    this.mandatory = false,
  });

  final void Function(String)? onFieldSubmitted;
  final String value;
  final ChangeFunc<String>? onChanged;
  final ValidatorFunc<String>? validator;
  final bool? autoFocus;
  final bool mandatory;

  @override
  TextboxState createState() => TextboxState();
}

class TextboxState extends State<Textbox> {
  final _controller = TextEditingController();
  var _autovalidateMode = AutovalidateMode.onUserInteraction;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.label != null) _buildLabel(context),
        _buildTextFormField(context),
      ],
    );
  }

  Widget _buildLabel(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
        bottom: Insets.gutter / 4,
      ),
      child: FormLabel(
        widget.label,
        mandatory: widget.mandatory,
      ),
    );
  }

  Widget _buildTextFormField(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.inputFormatters,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        labelText: widget.hintText,
        isDense: false,
      ),
      autofocus: widget.autoFocus ?? false,
      readOnly: widget.onChanged == null,
      enabled: widget.enabled,
      controller: _controller,
      autovalidateMode: _autovalidateMode,
      onChanged: (v) {
        _autovalidateMode = AutovalidateMode.onUserInteraction;
        widget.onChanged!(_controller.text);
      },
      validator: widget.validator,
    );
  }
}
