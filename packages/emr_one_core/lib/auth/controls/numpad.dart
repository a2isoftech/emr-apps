import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NumberPad extends StatefulWidget {
  const NumberPad({
    required bool obscurePin,
    super.key,
    this.minDigits = 4,
    this.maxDigits = -1,
    this.onSubmit,
    this.promptText = '',
    this.defaultValue,
    this.onCancel,
    this.onValidate,
    this.maxWidth = 300.0,
  }) : _obscurePin = obscurePin;
  final int minDigits;
  final int maxDigits;
  final void Function(String)? onSubmit;
  final void Function()? onCancel;
  final bool Function(String)? onValidate;
  final String? defaultValue;
  final String promptText;
  final bool _obscurePin;
  final double maxWidth;

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _NumberPadState();
}

class _NumberPadState extends State<NumberPad> {
  _NumberPadState();
  bool validLength = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      final text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
      setState(() {
        validLength = text.length >= widget.minDigits &&
            (widget.onValidate == null || widget.onValidate!(text));
      });
    });

    _controller.text = widget.defaultValue ?? '';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: widget.maxWidth),
          child: Container(
            child: _buildCore(),
          ),
        );
      },
    );
  }

  Widget _buildCore() {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            widget.promptText,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: isDarkMode ? Colors.white : Colors.black),
          ),
        ),
        SizedBox(
          height: 80,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: TextField(
                controller: _controller,
                autofocus: kIsWeb,
                keyboardType: TextInputType.number,
                obscureText: widget._obscurePin,
                textAlign: TextAlign.center,
                onSubmitted: (value) {
                  if (validLength) {
                    performOnSubmit();
                  }
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildEntryButton(context, '1'),
              _buildEntryButton(context, '2'),
              _buildEntryButton(context, '3'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildEntryButton(context, '4'),
              _buildEntryButton(context, '5'),
              _buildEntryButton(context, '6'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildEntryButton(context, '7'),
              _buildEntryButton(context, '8'),
              _buildEntryButton(context, '9'),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBackspace(context),
            _buildEntryButton(context, '0'),
            _buildSubmit(context),
          ],
        ),
      ],
    );
  }

  Widget _buildBackspace(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(
        const Size(64, 64),
      ),
      child: ElevatedButton(
        onPressed: () {
          if (_controller.text.isEmpty) {
            widget.onCancel?.call();
            return;
          }

          if (_controller.text.isNotEmpty) {
            _controller.text =
                _controller.text.substring(0, _controller.text.length - 1);
          }
        },
        child: Icon(
          _controller.text.isNotEmpty ? Icons.backspace : Icons.arrow_back,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildSubmit(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(
        const Size(64, 64),
      ),
      child: ElevatedButton(
        onPressed: validLength ? performOnSubmit : null,
        child: const Icon(
          Icons.done,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildEntryButton(BuildContext context, String value) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(
        const Size(64, 64),
      ),
      child: ElevatedButton(
        onPressed: () {
          if (widget.maxDigits > 0) {
            if (_controller.text.length < widget.maxDigits) {
              _controller.text += value;
            }
          } else {
            _controller.text += value;
          }
        },
        child: Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }

  void performOnSubmit() {
    final value = _controller.text;

    setState(() {
      widget.onSubmit!(value);
    });
  }
}
