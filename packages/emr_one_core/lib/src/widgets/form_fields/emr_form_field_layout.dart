import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A layout for form fields. When [labelText] is not empty, it will display the
/// label above the [child]. [validator] should be used when the child control
/// itself doesn't handle showing error text.
@internal
class EmrFormFieldLayout<T> extends FormField<dynamic> {
  EmrFormFieldLayout({
    required ValueNotifier<bool> visible,
    required Widget Function(FormFieldState<dynamic>) builder,
    required List<String> allowedPermissions,
    super.key,
    super.validator,
    super.autovalidateMode = AutovalidateMode.disabled,
    this.labelText = '',
    this.binding,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? hasInteractedByUser,
  }) : super(
         builder: (field) {
           final form = Form.maybeOf(field.context)?.widget;
           final emrFormMode = EmrForm.modeOf(field.context);

           // Auto-validate when the field is enabled.
           if (enabled?.value ?? true) {
             // Use the autovalidateMode value for the field in preference to
             // the one on the Form (when a value hasn't been specifically set
             // on the field, it will default to disabled).
             switch (autovalidateMode) {
               case AutovalidateMode.disabled:
                 // Use the Form's autovalidateMode.
                 switch (form?.autovalidateMode) {
                   case AutovalidateMode.always:
                     field.validate();

                   case AutovalidateMode.onUserInteraction:
                   case AutovalidateMode.onUserInteractionIfError:
                     if (hasInteractedByUser?.value ?? false) {
                       field.validate();
                     }

                   case AutovalidateMode.disabled:
                   case AutovalidateMode.onUnfocus:
                   case null:
                     break;
                 }
               case AutovalidateMode.always:
                 field.validate();

               case AutovalidateMode.onUserInteraction:
               case AutovalidateMode.onUserInteractionIfError:
                 if (hasInteractedByUser?.value ?? false) {
                   field.validate();
                 }

               case AutovalidateMode.onUnfocus:
               case null:
                 break;
             }
           }

           return ValueListenableBuilder(
             valueListenable: visible,
             builder: (context, _, __) {
               return Visibility(
                 visible: visible.value,
                 child: StatefulBuilder(
                   builder: (BuildContext context, StateSetter setState) {
                     return Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         if (labelText.isNotEmpty) ...[
                           Text(labelText),
                           const SizedBox(height: 2),
                         ],
                         Focus(
                           canRequestFocus: false,
                           skipTraversal: true,
                           descendantsAreFocusable: true,
                           descendantsAreTraversable: true,
                           onFocusChange:
                               (
                               // When autovalidateMode hasn't been set
                               // on the field itself, determine if the
                               // Form is set to onUnfocus.
                               (autovalidateMode == AutovalidateMode.disabled &&
                                       form?.autovalidateMode ==
                                           AutovalidateMode.onUnfocus) ||
                                   // Or if the field is onUnfocus.
                                   autovalidateMode ==
                                       AutovalidateMode.onUnfocus)
                               ? (bool focussed) {
                                   if (!focussed) {
                                     field.validate();

                                     setState(() {
                                       // Cause the widget to rebuild.
                                     });
                                   }
                                 }
                               : null,
                           child: EmrSecurityContainer(
                             allowedPermissions: allowedPermissions,
                             child: builder(field),
                           ),
                         ),
                         if (emrFormMode == EmrFormMode.normal &&
                             (field.errorText?.isNotEmpty ?? false))
                           _buildError(context, field),
                         if (emrFormMode == EmrFormMode.normal)
                           const SizedBox(height: Insets.gutter),
                       ],
                     );
                   },
                 ),
               );
             },
           );
         },
       );

  final String labelText;

  final ValueNotifier<T>? binding;

  static Widget _buildError(
    BuildContext context,
    FormFieldState<dynamic> field,
  ) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final errorStyle = textTheme.bodySmall!.copyWith(color: colors.error);

    return Padding(
      // Material 3 padding copied from InputDecorator.
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
      child: Text(
        field.errorText!,
        style: errorStyle,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }

  @override
  FormFieldState<dynamic> createState() => _EmrFormFieldLayoutState<T>();
}

class _EmrFormFieldLayoutState<T> extends FormFieldState<dynamic> {
  _EmrFormFieldLayoutState();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final form = Form.maybeOf(context)?.widget;

      // Validate the field depending on whether the form or widget has
      // autovalidateMode set to always or onUserInteraction.
      if (form?.autovalidateMode == AutovalidateMode.always ||
          form?.autovalidateMode == AutovalidateMode.onUserInteraction ||
          widget.autovalidateMode == AutovalidateMode.always ||
          widget.autovalidateMode == AutovalidateMode.onUserInteraction) {
        (widget as EmrFormFieldLayout<dynamic>).binding?.addListener(
          _addListener,
        );
      }
    });
  }

  @override
  void dispose() {
    (widget as EmrFormFieldLayout<dynamic>).binding?.removeListener(
      _addListener,
    );

    super.dispose();
  }

  void _addListener() => setState(() {
    // Cause the widget to rebuild, which triggers the field re-validation.
  });
}
