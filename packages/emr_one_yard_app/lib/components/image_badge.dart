import 'package:flutter/material.dart';

class ImageBadge extends StatelessWidget {
  const ImageBadge({required this.total, this.onTap, super.key});
  final int total;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return total == 0
        ? Badge(
            label: const Text('!'),
            backgroundColor: Theme.of(context).colorScheme.error,
            child: const Icon(
              Icons.image_not_supported_outlined,
              size: 30,
            ),
          )
        : InkWell(
            onTap: onTap,
            child: Badge(
              label: Text(total.toString()),
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const Icon(
                Icons.image_outlined,
                size: 30,
              ),
            ),
          );
  }
}
