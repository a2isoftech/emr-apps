import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BoxedWidget extends StatelessWidget {
  const BoxedWidget({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: TransportAppColors.darkBg,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: child,
    );
  }
}
