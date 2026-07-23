import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox defaultLoadingIndicator() {
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

    return ColoredBox(
      color: const Color.fromARGB(31, 0, 0, 0),
      child: Center(
        child: defaultLoadingIndicator(),
      ),
    );
  }
}
