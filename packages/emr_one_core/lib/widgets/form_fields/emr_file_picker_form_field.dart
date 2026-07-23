import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

/// Commonly used file extensions for various file types.
class EmrFilePickerFormFieldFileExtensions {
  static const csv = ['csv'];
  static const excel = ['xlsx'];
  static const json = ['json'];
  static const pdf = ['pdf'];
  static const pictures = ['jpg', 'jpeg', 'heic', 'png'];
  static const word = ['docx'];
}

class EmrFilePickerFormField extends StatefulWidget {
  EmrFilePickerFormField({
    required this.binding,
    super.key,
    this.labelText = '',
    this.hintText,
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    ValueNotifier<bool>? readOnly,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.allowedPermissions = const [],
    this.extensions,
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnly = readOnly ?? ValueNotifier(false);
  }

  final ValueNotifier<XFile?> binding;

  final String labelText;

  final String? hintText;

  final FormFieldValidator<String?>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  late final ValueNotifier<bool> readOnly;

  final AutovalidateMode autovalidateMode;

  final List<String> allowedPermissions;

  final List<String>? extensions;

  @override
  State<EmrFilePickerFormField> createState() => _EmrFilePickerFormFieldState();
}

class _EmrFilePickerFormFieldState extends State<EmrFilePickerFormField> {
  @override
  void initState() {
    super.initState();

    widget.binding.addListener(_onBindingChanged);
  }

  @override
  void dispose() {
    widget.binding.removeListener(_onBindingChanged);

    _controller.dispose();

    super.dispose();
  }

  void _onBindingChanged() {
    _controller.text = widget.binding.value?.name ?? '';
  }

  late final _controller = TextEditingController(
    text: widget.binding.value?.name ?? '',
  );

  @override
  Widget build(BuildContext context) {
    return EmrFormFieldLayout(
      visible: widget.visible,
      labelText: widget.labelText,
      binding: widget.binding,
      autovalidateMode: widget.autovalidateMode,
      allowedPermissions: widget.allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([
          widget.binding,
          widget.enabled,
          widget.readOnly,
        ]),
        builder: (context2, _) {
          final emrFormMode = EmrForm.modeOf(context2);

          return TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              hintText:
                  widget.hintText ?? context2.l10n.chooseaFileToUploadHint,
              suffixIcon: widget.readOnly.value
                  ? null
                  : const Icon(Icons.file_open),
              errorStyle:
                  // Hide the validation message when in grid mode.
                  emrFormMode == EmrFormMode.grid
                  ? const TextStyle(fontSize: 0)
                  : null,
            ),
            autovalidateMode: widget.autovalidateMode,
            validator: widget.validator,
            enabled: widget.enabled.value,
            readOnly: true,
            onTap: widget.readOnly.value ? null : _pick,
            mouseCursor: widget.readOnly.value || !widget.enabled.value
                ? null
                : SystemMouseCursors.click,
            enableInteractiveSelection: false,
          );
        },
      ),
    );
  }

  Future<void> _pick() async {
    final utis = widget.extensions?.map((e) {
      switch (e) {
        case 'json':
          return 'public.json';
        case 'xlsx':
          return 'org.openxmlformats.spreadsheetml.sheet';
        case 'csv':
          return 'public.comma-separated-values-text';
        case 'pdf':
          return 'com.adobe.pdf';
        case 'jpeg':
        case 'jpg':
        case 'heic':
        case 'png':
          return 'public.image';
        case 'docx':
          return 'org.openxmlformats.wordprocessingml.document';
        default:
          return 'public.data';
      }
    }).toList();

    final file = await openFile(
      acceptedTypeGroups: [
        XTypeGroup(extensions: widget.extensions, uniformTypeIdentifiers: utis),
      ],
    );

    if (file == null) {
      return;
    }

    _controller.text = file.name;

    widget.binding.value = file;
  }
}
