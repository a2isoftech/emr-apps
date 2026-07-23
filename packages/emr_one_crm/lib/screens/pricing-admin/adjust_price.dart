import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/keys.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/models/tagging/adjust_tag.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_screen_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/striped_scroll.dart';
import 'package:emr_one_crm/screens/pricing-admin/tag_name_select.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:flutter/material.dart';

class AdjustPrice extends StatefulWidget {
  const AdjustPrice({
    required this.gridController,
    required this.controller,
    required this.title,
    required this.tagDetail,
    required this.priceListId,
    required this.productCode,
    super.key,
  });

  final EmrGridController<GuidePriceListLine> gridController;
  final GplScreenController controller;
  final String title;
  final ItemTags? tagDetail;
  final String priceListId;
  final String productCode;
  @override
  State<AdjustPrice> createState() => _AdjustPriceState();
}

class _AdjustPriceState extends State<AdjustPrice> {
  final textStyle = const TextStyle(fontWeight: FontWeight.w900);
  final errorMsg = ValueNotifier<String?>(null);
  DateTime? _endDate;
  DateTime? _startDate;
  @override
  void initState() {
    super.initState();
    widget.controller.adjustTag = AdjustTag('', ValueUomPair(), null, null);
    if (widget.tagDetail != null) {
      widget.controller.copyTag(widget.tagDetail!);
      _endDate = DateTime.now();
      _startDate = DateTime.now();
    } else {
      widget.controller.adjustTag?.tagDelta.uom =
          Uom.values[widget.controller.getDefaultUom()];
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(widget.title),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter / 2),
                    child: StripedScroll(items: formattedTextSpans(context)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter,
                bottom: Insets.gutter / 2,
              ),
              child: FormRow(
                children: [
                  TagNameSelect(
                    labelText: context.l10n.tagName,
                    controller: widget.controller,
                  ),
                  UomInputField.fromUOMDefaults(
                    key: K.tagDelta,
                    context: context,
                    initialValue: widget.controller.adjustTag?.tagDelta,
                    hintText: context.l10n.tagDelta,
                    labelText: context.l10n.tagDelta,
                    onChanged: (value) {
                      setState(() {
                        widget.controller.adjustTag?.tagDelta = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            FormRow(
              children: [
                TextFormField(
                  readOnly: true,
                  enabled: widget.priceListId == '',
                  controller: TextEditingController(
                    text: _startDate != null
                        ? '${_startDate!.day}/${_startDate!.month}/${_startDate!.year}'
                        : '',
                  ),
                  decoration: InputDecoration(
                    labelText: context.l10n.startDate,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () async {
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: _startDate ?? _endDate ?? DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: _endDate ?? DateTime(2100),
                        );
                        if (pickedDate != null && pickedDate != _startDate) {
                          setState(() {
                            _startDate = pickedDate;
                            widget.controller.adjustTag?.startDate = pickedDate;
                          });
                        }
                      },
                    ),
                  ),
                ),
                TextFormField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: _endDate != null
                        ? '${_endDate!.day}/${_endDate!.month}/${_endDate!.year}'
                        : '',
                  ),
                  decoration: InputDecoration(
                    labelText: context.l10n.endDate,
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () async {
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: _endDate ?? _startDate ?? DateTime.now(),
                          firstDate: _startDate ?? DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null && pickedDate != _endDate) {
                          setState(() {
                            _endDate = pickedDate;
                            widget.controller.adjustTag?.endDate = pickedDate;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
            ValueListenableBuilder<String?>(
              valueListenable: errorMsg,
              builder: (context, value, child) {
                if (value == null) {
                  return Container();
                } else {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                            Insets.gutter / 2,
                          ),
                          child: Text(
                            value,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            widget.controller.adjustTag =
                AdjustTag('', ValueUomPair(), null, null);
            context.pop();
          },
          child: Text(context.l10n.cancel),
        ),
        TextButton(
          onPressed: !validateFields(widget.controller.adjustTag)
              ? null
              : () async {
                  errorMsg.value = await widget.controller.saveTags(
                    priceListInput: Input$PriceListIdGradesInput(
                      priceListId: widget.priceListId,
                      gradeCode: widget.productCode,
                    ),
                    tagId: widget.tagDetail == null ? '' : widget.tagDetail!.id,
                  );
                  if (errorMsg.value == null && context.mounted) {
                    context.pop();
                  }
                },
          child: Text(context.l10n.save),
        ),
      ],
    );
  }

  List<List<TextSpan>> formattedTextSpans(BuildContext context) {
    return widget.priceListId == ''
        ? getFormattedList(context, widget.gridController.selectedRows.value)
        : getFormattedList(
            context,
            widget.gridController.data.value
                .where((x) => x.id == widget.priceListId)
                .toList(),
          );
  }

  List<List<TextSpan>> getFormattedList(
    BuildContext context,
    List<GuidePriceListLine> rows,
  ) {
    return rows.map((item) {
      return <TextSpan>[
        TextSpan(text: '${item.listItems.productCode}| '),
        TextSpan(
          text: '${context.l10n.partyAccountNo.toUpperCase()}: ',
          style: textStyle,
        ),
        TextSpan(text: '${item.accountNo}, '),
        TextSpan(
          text: '${context.l10n.yard.toUpperCase()}: ',
          style: textStyle,
        ),
        TextSpan(text: '${item.listItems.deltas.first.yard}, '),
        TextSpan(
          text: '${context.l10n.publication.toUpperCase()}: ',
          style: textStyle,
        ),
        TextSpan(text: item.listItems.publicationId.toString()),
      ];
    }).toList();
  }

  bool validateFields(AdjustTag? adjustTag) {
    if (adjustTag!.tagName.isEmpty) {
      return false;
    }
    if (adjustTag.tagDelta.value == 0) {
      return false;
    }
    if (adjustTag.startDate == null) {
      return false;
    }
    if (adjustTag.endDate == null) {
      return false;
    }
    return true;
  }
}
