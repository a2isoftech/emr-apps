import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmrMultiPickerFormField<T extends Object> extends StatefulWidget {
  EmrMultiPickerFormField({
    required this.items,
    required this.itemTitleText,
    required this.binding,
    super.key,
    this.labelText = '',
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    ValueNotifier<bool>? readOnly,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.allowedPermissions = const [],
    this.mode = EmrPickerMode.inline,
    this.itemSubtitleText = _defaultItemSubtitleText,
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnly = readOnly ?? ValueNotifier(false);
  }

  final String labelText;

  final Future<List<T>> Function(String) items;

  final String Function(T) itemTitleText;

  final ValueNotifier<List<T>> binding;

  final FormFieldValidator<dynamic>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  late final ValueNotifier<bool> readOnly;

  final AutovalidateMode autovalidateMode;

  final List<String> allowedPermissions;

  final EmrPickerMode mode;

  final String Function(T) itemSubtitleText;

  @override
  State<EmrMultiPickerFormField<T>> createState() =>
      _EmrMultiPickerFormFieldState<T>();

  static String _defaultItemSubtitleText(Object item) => '';
}

class _EmrMultiPickerFormFieldState<T extends Object>
    extends State<EmrMultiPickerFormField<T>> {
  final _controller = TextEditingController();

  final ValueNotifier<bool> _hasInteractedByUser = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return EmrFormFieldLayout(
      visible: widget.visible,
      labelText: widget.labelText,
      binding: widget.binding,
      allowedPermissions: widget.allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([
          widget.binding,
          widget.enabled,
          widget.readOnly,
        ]),
        builder: (_, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EmrPicker<T>(
                controller: _controller,
                items: (query) async {
                  // Filter out any items that are already selected.
                  final items = await widget.items(query);

                  return items
                      .where((x) => !widget.binding.value.contains(x))
                      .toList();
                },
                itemTitleText: widget.itemTitleText,
                itemSubtitleText: widget.itemSubtitleText,
                enabled: widget.enabled.value,
                readOnly: widget.readOnly.value,
                // Update the binding value when a value is selected.
                onItemSelected: (value) {
                  _hasInteractedByUser.value = true;

                  // Clear the field after a value is selected because we
                  // display it as a chip instead.
                  _controller.clear();

                  final values = [...widget.binding.value, value];

                  widget.binding.value = values;
                },
                mode: widget.mode,
                onInlineFocusChanged: ({required bool hasFocus}) {
                  // Clear the field whenever the focus changes.
                  _controller.clear();
                },
                validator: (_) => widget.validator?.call(widget.binding.value),
                autovalidateMode: widget.autovalidateMode,
              ),
              if (widget.binding.value.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter / 2),
                  child: Wrap(
                    runSpacing: 4,
                    spacing: 4,
                    children: [
                      for (final item in widget.binding.value)
                        InputChip(
                          label: Text(widget.itemTitleText(item)),
                          deleteIcon: Ink(
                            decoration: ShapeDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
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
                            _hasInteractedByUser.value = true;

                            widget.binding.value = widget.binding.value
                                .where((e) => e != item)
                                .toList();
                          },
                        ),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
