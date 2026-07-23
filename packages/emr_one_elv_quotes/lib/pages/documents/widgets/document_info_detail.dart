import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DocumentInfoDetail extends StatelessWidget {
  const DocumentInfoDetail({
    required this.title,
    required this.info,
    super.key,
  });
  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Insets.gutter / 2,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        SizedBox(
          width: 150,
          child: Text(
            info,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
