import 'package:emr_one_core/src/widgets/form_fields/form_fields.dart';
import 'package:flutter/widgets.dart';

enum EmrFormMode {
  normal,
  grid,
}

typedef EmrFormErrorGroups = ValueNotifier<Map<String, Map<String, String?>>>;

class EmrForm extends StatefulWidget {
  const EmrForm({
    required this.builder,
    Key? key,
    this.canPop,
    this.onPopInvokedWithResult,
    this.onChanged,
    this.autovalidateMode,
    this.mode = EmrFormMode.normal,
  })  : _key = key,
        super(key: null);

  final Widget Function(BuildContext) builder;
  final Key? _key;
  final bool? canPop;
  final PopInvokedWithResultCallback<Object?>? onPopInvokedWithResult;
  final VoidCallback? onChanged;
  final AutovalidateMode? autovalidateMode;
  final EmrFormMode mode;

  static EmrFormMode modeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<EmrFormInherited>()?.mode ??
      EmrFormMode.normal;

  static EmrFormErrorGroups errorsOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<EmrFormInherited>()?.errors ??
      ValueNotifier({});

  @override
  State<EmrForm> createState() => _EmrFormState();
}

class _EmrFormState extends State<EmrForm> {
  @override
  Widget build(BuildContext _) => EmrFormInherited(
        mode: widget.mode,
        child: Form(
          key: widget._key,
          canPop: widget.canPop,
          onPopInvokedWithResult: widget.onPopInvokedWithResult,
          onChanged: widget.onChanged,
          autovalidateMode: widget.autovalidateMode,
          child: Builder(
            builder: (context) => widget.builder(context),
          ),
        ),
      );
}
