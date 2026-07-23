import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CarBodySuffixIcon extends StatefulWidget {
  const CarBodySuffixIcon({
    required this.controller,
    required this.uomCode,
    super.key,
  });

  final TextEditingController controller;
  final String uomCode;

  @override
  State<CarBodySuffixIcon> createState() => _CarBodySuffixIconState();
}

class _CarBodySuffixIconState extends State<CarBodySuffixIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '/ ${widget.uomCode}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(width: Insets.gutter),
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: widget.controller.clear,
        ),
      ],
    );
  }
}
