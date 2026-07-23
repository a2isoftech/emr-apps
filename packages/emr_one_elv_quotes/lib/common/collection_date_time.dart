import 'package:emr_one_elv_quotes/common/quick_quote_input_field.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:intl/intl.dart';

class CollectionDateTime extends StatefulWidget {
  const CollectionDateTime({
    required this.onChanged,
    required this.collectionDateTime,
    super.key,
  });

  final void Function(DateTime) onChanged;
  final DateTime? collectionDateTime;

  @override
  State<CollectionDateTime> createState() => _CollectionDateTimeState();
}

class _CollectionDateTimeState extends State<CollectionDateTime> {
  late TextEditingController collectionDateTimeController;

  @override
  void initState() {
    super.initState();
    collectionDateTimeController = TextEditingController()
      ..text = widget.collectionDateTime != null
          ? DateFormat('dd MMM yyyy').format(widget.collectionDateTime!)
          : '';
  }

  @override
  Widget build(BuildContext context) {
    return QuickQuoteInputField(
      label: context.l10n.collectionDate,
      textController: collectionDateTimeController,
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null && context.mounted) {
          final formattedDateTime =
              DateFormat('dd MMM yyyy').format(pickedDate);

          collectionDateTimeController.text = formattedDateTime;

          widget.onChanged(pickedDate);
        }
      },
      textInputType: TextInputType.datetime,
    );
  }
}
