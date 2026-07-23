import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LoaderWrapper extends StatefulWidget {
  const LoaderWrapper({
    required this.showLoader,
    required this.child,
    super.key,
  });
  final Signal<bool> showLoader;
  final Widget child;

  @override
  State<LoaderWrapper> createState() => _LoaderWrapperState();
}

class _LoaderWrapperState extends State<LoaderWrapper> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: widget.child),
        if (widget.showLoader.watch(context))
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(dismissible: false, color: Colors.grey),
          ),
        if (widget.showLoader.watch(context))
          Center(
            child: _defaultLoadingIndicator(context),
          ),
      ],
    );
  }

  SizedBox _defaultLoadingIndicator(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 120,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: const Border.fromBorderSide(
            BorderSide(color: Colors.grey),
          ),
        ),
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
