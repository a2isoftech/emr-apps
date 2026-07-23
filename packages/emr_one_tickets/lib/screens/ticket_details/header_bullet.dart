import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class HeaderBullet extends StatelessWidget {
  const HeaderBullet({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox(
    width: Insets.gutter * 2,
    child: Text('•', textAlign: TextAlign.center),
  );
}
