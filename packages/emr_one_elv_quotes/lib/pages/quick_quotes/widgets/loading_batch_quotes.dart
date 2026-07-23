import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LoadingBatchQuotes extends StatelessWidget {
  const LoadingBatchQuotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 100, bottom: Insets.gutter),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        Text(
          context.l10n.loadingBatchQuote,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
