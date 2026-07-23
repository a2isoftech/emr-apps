import 'package:emr_one_elv_core/models/collection_operator.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_selection_dialog.dart';
import 'package:emr_one_elv_quotes/common/quick_quote_input_field.dart';
import 'package:emr_one_elv_quotes/format.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class ChangeCollectionOperator extends StatefulWidget {
  const ChangeCollectionOperator({
    required this.onTap,
    required this.accountName,
    required this.accountNumber,
    required this.collectionOperatorList,
    required this.collectionOperatorSearchController,
    super.key,
  });

  final void Function(CollectionOperator?) onTap;
  final String? accountNumber;
  final String? accountName;
  final Future<List<CollectionOperator>> Function() collectionOperatorList;
  final TextEditingController collectionOperatorSearchController;

  @override
  State<ChangeCollectionOperator> createState() =>
      _ChangeCollectionOperatorState();
}

class _ChangeCollectionOperatorState extends State<ChangeCollectionOperator> {
  late TextEditingController collectionOperatorController;

  @override
  void initState() {
    super.initState();
    collectionOperatorController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return QuickQuoteInputField(
      label: context.l10n.collectionOperator,
      readOnly: true,
      textController: widget.collectionOperatorSearchController,
      onTap: () async {
        final ctx = context; // avoid async context warning
        final items = await widget.collectionOperatorList.call();

        if (!ctx.mounted) return;

        await showElvSelectionDialog<CollectionOperator>(
          context: ctx,
          items: items,
          onTap: (CollectionOperator e) {
            ctx.pop();
            widget.collectionOperatorSearchController.text =
                '(${e.accountNumber}) ${e.accountName}';
            widget.onTap(e);
          },
          searchController: collectionOperatorController,
          displayString: (op) => op.haulageRate != null
              ? '${op.accountName} (${op.accountNumber})\n'
                  '${context.l10n.rate}: '
                  '${Format.moneyFromDouble(op.haulageRate!)}'
              : '${op.accountName} (${op.accountNumber})',
          title: ctx.l10n.changeCollectionOperator,
          label: ctx.l10n.collectionOperatorCodeorName,
        );
      },
      onClear: widget.collectionOperatorSearchController.text.isNotEmpty
          ? () {
              widget.collectionOperatorSearchController.text = '';
              widget.onTap(null);
            }
          : null,
    );
  }

  @override
  void dispose() {
    super.dispose();
    collectionOperatorController.dispose();
  }
}
