import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ChequeBookRow extends StatelessWidget {
  const ChequeBookRow({
    required this.chequeBook,
    super.key,
    this.addChequeBook,
    this.allocate,
  });

  final ChequeBook chequeBook;

  final VoidCallback? addChequeBook;

  final void Function(ChequeBook)? allocate;

  @override
  Widget build(BuildContext context) {
    final ratio = chequeBook.remaining / chequeBook.total;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  chequeBook.yardCode,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Visibility(
                visible: addChequeBook != null,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: Insets.gutter),
                  child: FilledButton(
                    onPressed: addChequeBook,
                    child: Text(context.l10n.addChequeBook),
                  ),
                ),
              ),
              Visibility(
                visible: allocate != null,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: Insets.gutter,
                    bottom: Insets.gutter,
                  ),
                  child: FilledButton(
                    onPressed: () => allocate!(chequeBook),
                    child: Text(context.l10n.allocateChequeNumbers),
                  ),
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(Insets.gutter),
            child: LinearProgressIndicator(
              value: ratio,
              color: ratio < 0.33
                  ? EmrColours.secondaryRed
                  : ratio < 0.66
                      ? EmrColours.secondaryYellow
                      : EmrColours.primaryGreen,
              backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
              minHeight: Insets.gutter * 1.5,
            ),
          ),
          const SizedBox(height: Insets.gutter / 2),
          Text(
            '${chequeBook.remaining} ${context.l10n.numbersRemaining}',
          ),
          const SizedBox(height: Insets.gutter / 2),
        ],
      ),
    );
  }
}
