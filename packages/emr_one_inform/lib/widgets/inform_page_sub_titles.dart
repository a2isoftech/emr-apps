import 'package:flutter/material.dart';

class InformPageSubTitle extends StatelessWidget {
  const InformPageSubTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [Text(title)]);
  }
}
