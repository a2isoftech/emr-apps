import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

typedef ChangeFunc<T> = void Function(T? value);
typedef ValidatorFunc<T> = String? Function(T? value);

mixin StandardEmrControl {
  String? get label;
  String? get hintText;
  bool get enabled;
}

mixin StandardEmrTextInput {
  int? get maxLength;
  List<TextInputFormatter>? get inputFormatters;
  int get maxLines;
}

abstract class EmrStatelessWidget extends StatelessWidget
    with StandardEmrControl {
  const EmrStatelessWidget({
    super.key,
    this.enabled = true,
    this.hintText,
    this.label,
  });

  @override
  final bool enabled;

  @override
  final String? hintText;

  @override
  final String? label;

  @protected
  Widget? renderFormLabel() => null;
}

abstract class EmrTextInputStatefulWidget extends StatefulWidget
    with StandardEmrControl, StandardEmrTextInput {
  EmrTextInputStatefulWidget({
    super.key,
    bool? enabled,
    this.hintText,
    this.label,
    this.inputFormatters,
    int? maxLength,
    int? maxLines,
  }) {
    this.maxLength = maxLength ?? 20;
    this.maxLines = maxLines ?? 1;
    this.enabled = enabled ?? true;
  }
  @override
  late final bool enabled;

  @override
  final String? hintText;

  @override
  final String? label;

  @override
  late final int maxLength;

  @override
  final List<TextInputFormatter>? inputFormatters;

  @override
  late final int maxLines;
}
