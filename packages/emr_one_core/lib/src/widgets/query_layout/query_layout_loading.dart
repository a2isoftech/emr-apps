import 'package:flutter/material.dart';

class EmrQueryLayoutLoadingIndicator extends StatelessWidget {
  const EmrQueryLayoutLoadingIndicator({
    this.defaultLoadingIndicatorSize = const Size(160, 120),
    super.key,
  });

  final Size defaultLoadingIndicatorSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultLoadingIndicatorSize.width,
      height: defaultLoadingIndicatorSize.height,
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
