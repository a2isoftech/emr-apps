import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class ValidationSummary extends StatelessWidget {
  const ValidationSummary({required this.errors, super.key});
  final ValueNotifier<List<String>> errors;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<String>>(
      valueListenable: errors,
      builder: (_, list, __) {
        if (list.isEmpty) return const SizedBox();

        return Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: Insets.gutter),
          padding: const EdgeInsets.all(Insets.gutter),
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(Insets.gutter / 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: list
                .map(
                  (e) =>
                      Text('• $e', style: const TextStyle(color: Colors.red)),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
