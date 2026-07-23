import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class GenericMessage extends StatelessWidget {
  const GenericMessage({
    required this.title,
    required this.subTitle,
    super.key,
    this.icon = Icons.error,
    this.iconColour = Colors.amber,
    this.onTapOk,
    this.animate = false,
  });
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColour;
  final void Function()? onTapOk;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (animate)
              Icon(icon, size: 96, color: iconColour).animate().shimmer(),
            if (!animate) Icon(icon, size: 96, color: iconColour),
            const SizedBox(
              height: Insets.gutter,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              subTitle,
              textAlign: TextAlign.center,
            ),
            if (onTapOk != null)
              OutlinedButton(onPressed: onTapOk, child: const Text('OK')),
          ],
        ),
      ),
    );
  }
}
