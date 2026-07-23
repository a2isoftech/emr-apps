import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EmrValidationGroupSummary extends StatefulWidget {
  const EmrValidationGroupSummary({required this.groupId, super.key});

  final String groupId;

  @override
  State<EmrValidationGroupSummary> createState() =>
      _EmrValidationGroupSummaryState();
}

class _EmrValidationGroupSummaryState extends State<EmrValidationGroupSummary> {
  final GlobalKey _iconKey = GlobalKey();

  EmrFormErrorGroups? _emrFormErrors;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _emrFormErrors?.removeListener(_onErrorsChanged);
    _emrFormErrors = EmrForm.errorsOf(context);
    _emrFormErrors?.addListener(_onErrorsChanged);
  }

  @override
  void dispose() {
    _emrFormErrors?.removeListener(_onErrorsChanged);

    super.dispose();
  }

  void _onErrorsChanged() {
    // We have to use `addPostFrameCallback` here because `FormFieldState.build`
    // can trigger form validation when AutovalidateMode is `always` or
    // `onUserInteraction`. The side effect of this is that in our
    // `Validators.forValidationGroup` function, we set
    // `EmrForm.errorsOf(context).value`, causing this listener to fire. We
    // therefore can't call `setState` at that time because it's not allowed
    // when a build is already in progress.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        // Trigger a rebuild.
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final colours = Theme.of(context).colorScheme;
    final groupErrors = _emrFormErrors!.value[widget.groupId];

    if (groupErrors == null || groupErrors.isEmpty) {
      return const SizedBox.shrink();
    }

    final messages = groupErrors.values
        .whereType<String>()
        .where((message) => message.isNotEmpty)
        .toList();

    if (messages.isEmpty) {
      return const SizedBox.shrink();
    }

    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => EmrDialog.modal<void>(
            context,
            titleText: context.l10n.errors,
            acceptLabel: context.l10n.ok,
            buttons: {EmrDialogButton.accept},
            builder: (BuildContext dialogContext) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (final message in messages) ...[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('• '),
                        Text(
                          softWrap: true,
                          message,
                        ),
                      ],
                    ),
                    if (message != messages.last)
                      const SizedBox(height: Insets.gutter / 2),
                  ],
                ],
              );
            },
          ),
          child: Icon(
            key: _iconKey,
            Icons.error,
            size: 30,
            color: colours.error,
          ),
        ),
      ),
    );
  }
}
