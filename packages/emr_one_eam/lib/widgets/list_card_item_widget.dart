import 'package:flutter/material.dart';

class ListCardItemWidget extends StatelessWidget {
  const ListCardItemWidget({this.widgetsForCardItem, super.key});
  final List<Widget>? widgetsForCardItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            color: Colors.grey.shade600,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: widgetsForCardItem ?? [],
        ),
      ),
    );
  }
}
