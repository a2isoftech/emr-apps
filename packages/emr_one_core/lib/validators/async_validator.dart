import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/cupertino.dart';

export 'package:emr_one_core/src/validators/async_validator_result.dart';

/// A class that provides asynchronous validation for form fields.
/// While this exists, it would be preferable to find a way to avoid having to
/// use this!
class AsyncValidator<T> {
  AsyncValidator(
    this.context, {
    required this.binding,
    required this.onChange,
    GlobalKey<FormFieldState<T>>? formFieldKey,
  }) {
    this.formFieldKey = formFieldKey ?? GlobalKey<FormFieldState<T>>();

    binding.addListener(_bindingChanged);
  }

  void dispose() {
    binding.removeListener(_bindingChanged);

    _debouncableSearch.dispose();
  }

  final BuildContext context;

  final ValueNotifier<T?> binding;

  late GlobalKey<FormFieldState<T>> formFieldKey;

  final Future<AsyncValidatorResult> Function(
    GlobalKey<FormFieldState<T>> formFieldKey,
    T? value,
  ) onChange;

  final ValueNotifier<bool> isValidating = ValueNotifier(false);

  AsyncValidatorResult? onChangeResult;

  final _debouncableSearch = Debounceable<AsyncValidatorResult>();

  void _bindingChanged() => _debouncableSearch.call(
        () {
          isValidating.value = true;

          onChangeResult =
              AsyncValidatorResult(message: '${context.l10n.validating}...');

          return onChange(formFieldKey, binding.value);
        },
        onDebounced: () => isValidating.value = false,
        then: (result) {
          onChangeResult = result;

          isValidating.value = false;

          formFieldKey.currentState?.validate();
        },
      );

  String? validator(String? value) => onChangeResult?.message;

  Widget get isValidatingIndicator => ValueListenableBuilder<bool>(
        valueListenable: isValidating,
        builder: (_, isValidating, __) => isValidating
            ? const CupertinoActivityIndicator()
            : const SizedBox.shrink(),
      );
}
