import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ContractDetailsInfo extends StatelessWidget {
  const ContractDetailsInfo({
    required this.heading,
    required this.info,
    super.key,
  });

  final String heading;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Insets.gutter / 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              info,
              style: Theme.of(context).textTheme.labelLarge,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
