import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_crm/temp/mock_data.dart';
import 'package:emr_one_crm/temp/order_book_provider.dart';
import 'package:emr_sharedtypes/models/order_book.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CWOrderBookSelect extends StatefulWidget {
  const CWOrderBookSelect({
    required this.formKey,
    required this.controller,
    super.key,
  });

  final ContractController controller;
  final GlobalKey<FormState> formKey;

  @override
  State<CWOrderBookSelect> createState() => _CWOrderBookSelectState();
}

class _CWOrderBookSelectState extends State<CWOrderBookSelect> {
  late final TextEditingController emrPickerController;

  @override
  void initState() {
    super.initState();
    emrPickerController =
        TextEditingController(text: widget.controller.model?.orderBook?.name);
  }

  @override
  void dispose() {
    emrPickerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormHeadingRow(
          key: widget.controller.orderBookKey,
          headings: [
            '${context.l10n.orderBook}:',
          ],
          isLeading: true,
        ),
        EmrPicker<OrderBook>(
          controller: emrPickerController,
          onCleared: widget.controller.clearOrderBook,
          items: (query) async {
            final list = await widget.controller.getOrderBooks();
            int getPriority(String name) {
              final lower = name.toLowerCase();
              if (lower.contains('purchase')) return 1;
              if (lower.contains('b2b')) return 2;
              return 3; // sales or anything else
            }

            list.sort((a, b) {
              final priorityDiff = getPriority(a.name) - getPriority(b.name);
              if (priorityDiff != 0) return priorityDiff;

              return a.name.compareTo(b.name);
            });
            return OrderBookProvider(list).getSuggestions(query);
          },
          itemTitleText: (item) => '${item.name} - ${item.gradeType}',
          itemSubtitleText: (item) => item.gradeType,
          onItemSelected: (item) {
            _selectOrderBook(context, item);
          },
          mode: EmrPickerMode.inline,
          validator: Validators.required,
        ),
      ],
    );
  }

  Future<void> _selectOrderBook(
    BuildContext context,
    OrderBook item,
  ) async {
    {
      final settingsController =
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController;
      widget.controller.setOrderBook(item);
      final obDefaults = await widget.controller.loadDataForOrderBook(
        item.id,
        settingsController,
      );
      if (obDefaults != null) {
        widget.controller.model!.contractType = MockData.getContractTypes()
            .firstWhere((x) => x.id == obDefaults.contractTypeId);
        widget.controller.model!.currencyCode = obDefaults.currencyCode;
        widget.controller.model!.priceType =
            MockData.getPriceTypes().firstWhere(
          (element) => element.id == obDefaults.priceTypeId,
        );
        widget.controller.model!.defaultUom = obDefaults.targetTonnageUomID;
      }
      widget.formKey.currentState!.reset();
    }
  }
}
