import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart' as ft;
import 'package:meta/meta.dart';
import 'package:signals/signals_flutter.dart';

/// This widget is provided for internal use by the EmrCodeScanner.
@internal
class EmrTypeAhead<T> extends StatefulWidget {
  const EmrTypeAhead({
    required this.labelText,
    required this.hintText,
    required this.futureCallback,
    required this.itembuilder,
    this.controller,
    this.onChanged,
    this.suffix,
    super.key,
  });

  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final void Function(T selected)? onChanged;
  final FutureOr<List<T>> Function(String) futureCallback;
  final Widget Function(BuildContext, T) itembuilder;
  final Widget? suffix;

  @override
  State<EmrTypeAhead<T>> createState() => _EmrTypeAheadState<T>();
}

class _EmrTypeAheadState<T> extends State<EmrTypeAhead<T>> {
  final switchTexbox = signal(false);

  @override
  Widget build(BuildContext context) {
    return Watch(
      (context) => switchTexbox.value
          ? _buildTypeAhead()
          : TextFormField(
              onTap: () {
                switchTexbox.value = true;
              },
              readOnly: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: widget.controller,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                floatingLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                labelText: widget.labelText,
                hintText: widget.hintText,
              ),
            ),
    );
  }

  Widget _buildTypeAhead() {
    return ft.TypeAheadField<T>(
      controller: widget.controller,
      builder: (_, controller, focusNode) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          autofocus: true,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            labelText: widget.labelText,
          ),
          onTapOutside: (event) {
            switchTexbox.value = false;
          },
        );
      },
      suggestionsCallback: widget.futureCallback,
      itemBuilder: widget.itembuilder,
      emptyBuilder: (context) {
        return Text(context.l10n.noRecordsMessage);
      },
      onSelected: (suggestion) => widget.onChanged?.call(suggestion),
      errorBuilder: (context, error) {
        return Text(
          context.l10n.anErrorOccurredTryAgain,
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        );
      },
      loadingBuilder: (context) {
        return Text(context.l10n.typeAheadMessageLoading);
      },
    );
  }
}
