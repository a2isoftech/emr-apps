import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class StripedScroll extends StatefulWidget {
  const StripedScroll({required this.items, super.key});

  final List<List<TextSpan>> items;
  @override
  State<StripedScroll> createState() => _StripedScrollState();
}

class _StripedScrollState extends State<StripedScroll> {
  int currentIndex = 0;

  void _incrementIndex() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.items.length;
    });
  }

  void _decrementIndex() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + widget.items.length) % widget.items.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${context.l10n.selectgrade.toUpperCase()}: ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w900,
                ),
              ),
              ...widget.items[currentIndex],
            ],
          ),
        ),
        Column(
          children: [
            InkWell(
              onTap: widget.items.length == 1 ? null : _decrementIndex,
              child: Icon(
                Icons.arrow_drop_up,
                size: 20,
                color: widget.items.length == 1 ? Colors.grey : Colors.black,
              ),
            ),
            InkWell(
              onTap: widget.items.length == 1 ? null : _incrementIndex,
              child: Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: widget.items.length == 1 ? Colors.grey : Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
