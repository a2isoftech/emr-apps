import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/material.dart';

class RowDividerWithTitle extends StatefulWidget {
  const RowDividerWithTitle({
    required this.label,
    super.key,
  });

  final String label;
  @override
  State<RowDividerWithTitle> createState() => _RowDividerWithTitle();
}

class _RowDividerWithTitle extends State<RowDividerWithTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Text(
            widget.label,
            style: const TextStyle(
              fontSize: Constants.fontSizeM,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
