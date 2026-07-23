import 'package:flutter/material.dart';

class LotCardUpperBackground extends StatelessWidget {
  const LotCardUpperBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Theme.of(context).colorScheme.surfaceContainerHighest,
            Theme.of(context).colorScheme.surfaceContainerHighest,
            Theme.of(context).colorScheme.surface,
            Theme.of(context).colorScheme.surface,
          ],
          tileMode: TileMode.mirror,
        ),
      ),
    );
  }
}
