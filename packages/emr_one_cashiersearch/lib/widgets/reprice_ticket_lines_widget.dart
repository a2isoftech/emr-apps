import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_cashiersearch/controllers/reprice_ticket_controller.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_cashiersearch/widgets/ticket_lines_price_breakup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' as shared;
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RepriceTicketLinesWidget extends StatefulWidget {
  const RepriceTicketLinesWidget({
    required this.lines,
    required this.repriceController,
    required this.ticket,
    this.currency,
    this.territoryId,
    super.key,
  });
  final List<TicketLine> lines;
  final RepriceTicketController repriceController;
  final Ticket ticket;
  final String? currency;
  final String? territoryId;

  @override
  State<RepriceTicketLinesWidget> createState() =>
      _RepriceTicketLinesWidgetState();
}

class _RepriceTicketLinesWidgetState extends State<RepriceTicketLinesWidget> {
  late RepriceTicketController repriceController;
  late UserInfoService userInfoService;
  late ScrollController _headerScrollController;
  late ScrollController _bodyScrollController;
  late shared.Uom uom;
  late double totalWeight;
  bool dirtPresent = false;

  Future<void> initializeNotifiers() async {
    repriceController.repriceFormData = ValueNotifier([]);
    repriceController.territoryId = widget.territoryId;
    dirtPresent = widget.lines
        .expand((x) => x.deductions)
        .any((x) => x.typeId == CashierConstants.kDeductionTypeDirt);
    repriceController.repriceFormData.value = widget.lines
        .map(RepriceFormData.fromLine)
        .toList();
    repriceController.ticketAccount = ValueNotifier(widget.ticket.account);

    repriceController.selectedAccount = ValueNotifier(
      widget.ticket.account.details,
    );
    repriceController.selectedArisingPoint = ValueNotifier(
      widget.ticket.account.details?.locations?.firstWhereOrNull(
        (location) => location.code == widget.ticket.account.locationId,
      ),
    );
    repriceController.arisingPoints =
        widget.ticket.account.details?.locations ?? [];
    repriceController.selectedAccount.addListener(
      repriceController.onAccountSelected,
    );
    repriceController.selectedAccount.addListener(() {
      unawaited(recalculateRate());
    });
    repriceController.selectedArisingPoint.addListener(
      repriceController.onArisingPointSelected,
    );
    repriceController.formKey = GlobalKey<FormState>();
    if (widget.ticket.extendedProperties[CashierConstants
            .kExtendedPropertyWeighbridgeProfileId] !=
        null) {
      final profileId =
          widget.ticket.extendedProperties[CashierConstants
                  .kExtendedPropertyWeighbridgeProfileId]
              as String;
      await repriceController.updateWeighbridgeProfile(profileId);
    }
  }

  @override
  void initState() {
    super.initState();
    uom = widget.lines.first.netWeight!.uom;
    totalWeight = widget.lines
        .map((x) => x.netWeight?.value ?? 0)
        .reduce((value, element) => value + element)
        .roundOff(uom);
    repriceController = widget.repriceController;
    _headerScrollController = ScrollController();
    _bodyScrollController = ScrollController();

    _headerScrollController.addListener(() {
      if (_bodyScrollController.hasClients &&
          _bodyScrollController.offset != _headerScrollController.offset) {
        _bodyScrollController.jumpTo(_headerScrollController.offset);
      }
    });

    _bodyScrollController.addListener(() {
      if (_headerScrollController.hasClients &&
          _bodyScrollController.offset != _headerScrollController.offset) {
        _headerScrollController.jumpTo(_bodyScrollController.offset);
      }
    });

    initializeNotifiers();
  }

  @override
  void dispose() {
    _headerScrollController.dispose();
    _bodyScrollController.dispose();
    for (final notifier in repriceController.repriceFormData.value) {
      notifier.dispose();
    }
    repriceController.repriceFormData.dispose();
    repriceController.ticketAccount.dispose();
    repriceController.selectedAccount.dispose();
    repriceController.selectedArisingPoint.dispose();
    repriceController.arisingPoints = [];
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    userInfoService = Provider.of<UserInfoService>(context);
    final listviewHeight = MediaQuery.sizeOf(context).height * .7;
    final listviewWidth = MediaQuery.sizeOf(context).width * .7;

    final columnWidths = <int, TableColumnWidth>{
      0: const FlexColumnWidth(),
      1: const FlexColumnWidth(),
      2: const FlexColumnWidth(2),
      3: const FlexColumnWidth(3),
      4: const FlexColumnWidth(3),
      5: const FlexColumnWidth(2),
      6: const FlexColumnWidth(2),
      7: const FlexColumnWidth(2),
      8: const FlexColumnWidth(3),
      9: const FlexColumnWidth(2),
      //10: const FlexColumnWidth(2),
      //11: const FlexColumnWidth(2),
    };

    const totalPadding = Insets.gutter * 2;
    const borderWidth = 2; // left + right
    final gridContainerSize = listviewWidth - totalPadding - borderWidth;
    return SizedBox(
      height: listviewHeight,
      width: listviewWidth,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: ValueListenableBuilder(
          valueListenable: repriceController.repriceFormData,
          builder: (context, value, child) => Column(
            children: [
              Expanded(
                child: Form(
                  key: repriceController.formKey,
                  child: Row(
                    spacing: Insets.gutter,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: EmrPickerFormField<Account>(
                          binding: repriceController.selectedAccount,
                          labelText: context.l10n.account,
                          itemTitleText: (a) => '${a.code} - ${a.name}',
                          items: (query) async {
                            if (query.length < 2) {
                              return Future.value([]);
                            }
                            return widget.repriceController.searchAccounts(
                              query,
                            );
                          },
                          validator: Validators.required,
                        ),
                      ),
                      ValueListenableBuilder(
                        valueListenable: repriceController.selectedAccount,
                        builder: (context, value, child) {
                          return Expanded(
                            child: EmrPickerFormField<AccountLocation>(
                              key: ValueKey(value?.id ?? ''),
                              binding: repriceController.selectedArisingPoint,
                              labelText: context.l10n.arisingPoint,
                              itemTitleText: (a) => a.fts,
                              items: (query) async {
                                return value == null
                                    ? []
                                    : widget.repriceController
                                          .searchAccountLocations(query);
                              },
                              validator: Validators.required,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Insets.gutter / 2),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        controller: _headerScrollController,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: listviewWidth < 768
                                ? 768.00
                                : gridContainerSize,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: Insets.gutter / 2,
                              bottom: Insets.gutter / 2,
                            ),
                            child: Table(
                              columnWidths: columnWidths,
                              border: const TableBorder(),
                              children: [repriceHeaderRow()],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: SingleChildScrollView(
                            controller: _bodyScrollController,
                            scrollDirection: Axis.horizontal,
                            physics: const ClampingScrollPhysics(),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: listviewWidth < 768
                                    ? 768.00
                                    : gridContainerSize,
                              ),
                              child: ValueListenableBuilder(
                                valueListenable: repriceController.disabledRows,
                                builder: (context, value, child) {
                                  return Table(
                                    columnWidths: columnWidths,
                                    border: const TableBorder(),
                                    children: repriceController
                                        .repriceFormData
                                        .value
                                        .mapIndexed(inputRepriceRow)
                                        .toList(),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                heightFactor: 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: repriceFooterRow(
                        Listenable.merge(
                          repriceController.repriceFormData.value.expand(
                            (l) => [l.netWeightValue, l.rate, l.dirtValue],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: FilledButton(
                            onPressed: () {
                              repriceController.addNewRow(
                                userInfoService.userInfo,
                                uom,
                                dirtPresent: dirtPresent,
                              );
                            },
                            child: Text(context.l10n.addNewLine),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: Insets.gutter / 2,
                              ),
                              child: ListenableBuilder(
                                listenable: Listenable.merge(
                                  repriceController.repriceFormData.value
                                      .expand(
                                        (l) => [
                                          l.netWeightValue,
                                          l.rate,
                                          l.dirtValue,
                                        ],
                                      ),
                                ),
                                builder: (context, child) {
                                  return LinkText(
                                    label:
                                        '''${context.l10n.payableAfterCostAndDeduction}: ${TicketsUtility.formatCurrency(context, widget.currency ?? '', _getTotalPayable())}''',
                                    labelDefaultStyle: Theme.of(
                                      context,
                                    ).primaryTextTheme.bodyLarge,
                                    onTap: () async => _showBreakup(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showBreakup() async {
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.ticketLinePriceBreakup,
      builder: (context1) => TicketLinesPriceBreakup(
        totalAmount: _getPayableBeforeCostAndDeductions(),
        cashDeduction: _getCashDeductions(),
        roundingAdjustment: _getRoundingAdjustment(),
        haulageCharges: widget.ticket.haulagePrice,
        totalPayable: _getTotalPayable(),
        currency: widget.ticket.currency,
      ),
      acceptLabel: context.l10n.ok,
      onAccept: () async => Navigator.of(context).pop(),
    );
  }

  double _getPayableBeforeCostAndDeductions() {
    final lines = repriceController.repriceFormData.value;
    return lines
        .fold<double>(
          0,
          (previousValue, element) => previousValue + element.price.value,
        )
        .roundAwayFromZero();
  }

  double _getCashDeductions() {
    final lines = repriceController.repriceFormData.value;
    return lines
        .fold<double>(
          0,
          (previousValue, element) =>
              previousValue + (element.cashAndDeduction.value ?? 0),
        )
        .roundAwayFromZero();
  }

  double _getRoundingAdjustment() {
    return widget.ticket.deductions
            .firstWhereOrNull(
              (x) => x.typeId == 'deductionTypes/RoundingAdjustment',
            )
            ?.value ??
        0;
  }

  double _getTotalPayable() {
    return _getPayableBeforeCostAndDeductions() -
        _getCashDeductions() -
        _getRoundingAdjustment() -
        widget.ticket.haulagePrice;
  }

  Widget _cell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  TableRow repriceHeaderRow() {
    final weightUomName = repriceController
        .repriceFormData
        .value
        .first
        .netWeight
        .value
        .uom
        .name
        .toUpperCase();
    final currencySymbol = TicketsUtility.getCurrencySymbol(
      context,
      widget.currency ?? '',
    );
    return TableRow(
      children: [
        _cell('', isHeader: true),
        _cell(context.l10n.line, isHeader: true),
        _cell(context.l10n.autoPrice, isHeader: true),
        _cell(context.l10n.product, isHeader: true),
        _cell(context.l10n.location, isHeader: true),
        _cell('${context.l10n.weight} ($weightUomName)', isHeader: true),
        _cell('${context.l10n.dirt} ($weightUomName)', isHeader: true),
        _cell(context.l10n.payableWeight, isHeader: true),
        _cell(
          '${context.l10n.rate} ($currencySymbol / $weightUomName)',
          isHeader: true,
        ),
        _cell('${context.l10n.value} ($currencySymbol)', isHeader: true),
        // _cell(context.l10n.cashAndDeduction, isHeader: true),
        // _cell(context.l10n.payable, isHeader: true),
      ],
    );
  }

  TableRow inputRepriceRow(int index, RepriceFormData line) {
    final enabled = repriceController.disabledRows.value.contains(
      line.lineNumber.value,
    );

    final exisitingLine = widget.lines
        .where((x) => x.lineNumber == line.lineNumber.value)
        .firstOrNull;
    return TableRow(
      key: ValueKey(line.lineNumber),
      decoration: BoxDecoration(
        color: index.isEven
            ? Theme.of(context).colorScheme.outlineVariant
            : Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.transparent,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            bottom: Insets.gutter / 2,
          ),
          child: IconButton(
            onPressed: exisitingLine != null
                ? null
                : () {
                    TicketsUtility.infoDialogWidget(
                      context,
                      title: context.l10n.warning,
                      message: context.l10n.deleteLineConfirmation(
                        line.lineNumber.value.toString(),
                      ),
                      onCancel: () {},
                      onAccept: () async {
                        repriceController.deleteRow(line);
                      },
                    );
                  },
            icon: const Icon(Icons.delete),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            bottom: Insets.gutter / 2,
          ),
          child: _cell('${line.lineNumber.value}'),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            bottom: Insets.gutter / 2,
          ),
          child: autoPrice(
            enabled: enabled,
            line: line,
            exisitingLine: exisitingLine,
          ),
        ),
        product(
          enabled: true,
          line: line,
          binding: line.product,
          location: line.location,
        ),
        location(enabled: true, line: line, binding: line.location),
        netWeight(line),
        dirt(line),
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            bottom: Insets.gutter,
          ),
          child: ValueListenableBuilder(
            valueListenable: line.payableWeight,
            builder: (context, value, child) => _cell(value.toWeightString()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            bottom: Insets.gutter / 2,
          ),
          child: rate(enabled: enabled || exisitingLine == null, line: line),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter,
            bottom: Insets.gutter,
            left: Insets.gutter / 2,
          ),
          child: ValueListenableBuilder(
            valueListenable: line.price,
            builder: (context, value, child) => _cell(
              TicketsUtility.formatCurrency(
                context,
                widget.currency ?? '',
                value,
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: Insets.gutter,
        //     bottom: Insets.gutter,
        //   ),
        //   child: ValueListenableBuilder(
        //     valueListenable: line.cashAndDeduction,
        //     builder: (context, value, child) => _cell(
        //       TicketsUtility.formatCurrency(
        //         context,
        //         widget.currency ?? '',
        //         value ?? 0.00,
        //         2,
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: Insets.gutter,
        //     bottom: Insets.gutter,
        //   ),
        //   child: ValueListenableBuilder(
        //     valueListenable: line.payable,
        //     builder: (context, value, child) => _cell(
        //       TicketsUtility.formatCurrency(
        //         context,
        //         widget.currency ?? '',
        //         value,
        //         2,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget repriceFooterRow(Listenable footerSignals) {
    return ListenableBuilder(
      listenable: footerSignals,
      builder: (context, child) {
        final lines = repriceController.repriceFormData.value;
        final totalLinesPayable = _getPayableBeforeCostAndDeductions();

        final updatedNetWeightSum = lines
            .map((l) => l.netWeightValue.value ?? 0)
            .sum
            .roundOff(uom);
        return Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.all(Insets.gutter / 2),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.outline,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      labelBox(
                        isBackground: true,
                        label:
                            '''${context.l10n.psnopPlannedMovementsTotalWeight}: ${updatedNetWeightSum.toStringAsFixed(uom.displayFormatFractionalDigits)} ${widget.lines.firstOrNull?.netWeight?.uom.name.toUpperCase()}''',
                        style: Theme.of(context).primaryTextTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      labelBox(
                        label:
                            '''${context.l10n.payableBeforeCostAndDeduction}: ${TicketsUtility.formatCurrency(context, widget.currency ?? '', totalLinesPayable)}''',
                        isBackground: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget autoPrice({
    required bool enabled,
    required RepriceFormData line,
    required TicketLine? exisitingLine,
  }) {
    return SizedBox(
      width: 100,
      child: SwitchListTile(
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero,
        dense: true,
        value: !enabled && exisitingLine != null,
        onChanged: exisitingLine != null
            ? (value) async {
                if (value) {
                  final account =
                      repriceController.ticketAccount.value ??
                      widget.ticket.account;
                  if (line.product.value != null) {
                    final fetchedRate = await repriceController.getBaseRate(
                      line.product.value!.id,
                      widget.ticket,
                      account.accountNumber!,
                      account.accountId!,
                      uom,
                    );
                    if (fetchedRate.value == 0 && mounted) {
                      await TicketsUtility.errorDialogWidget(
                        context,
                        context.l10n.priceFetchFailed,
                      );
                      return;
                    } else {
                      line.rate.value = fetchedRate;
                      repriceController.rateUpdated.value =
                          !repriceController.rateUpdated.value;
                    }
                  }
                }
                repriceController.updateDisabledRows(line.lineNumber.value);
              }
            : null,
      ),
    );
  }

  String? _validateNetWeightValue(
    double? parsed,
    BuildContext context,
    RepriceFormData line,
  ) {
    if (parsed == null || parsed <= 0) {
      return context.l10n.invalidWeight;
    }

    final fractionDigits =
        line.netWeight.value.uom.displayFormatFractionalDigits;

    final pattern = fractionDigits == 0
        ? r'^[0-9]{0,6}?$'
        : r'^[0-9]{0,6}(\.[0-9]{1,' + fractionDigits.toString() + r'})?$';
    final wieghtRegx = RegExp(pattern);

    if (!wieghtRegx.hasMatch(parsed.toString())) {
      return context.l10n.invalidWeight;
    }

    return null;
  }

  String? _validateDirtValue(
    double? parsed,
    BuildContext context,
    RepriceFormData line,
  ) {
    if (parsed == null || parsed < 0) {
      return context.l10n.invalidWeight;
    }

    final fractionDigits =
        line.netWeight.value.uom.displayFormatFractionalDigits;

    final pattern = fractionDigits == 0
        ? r'^[0-9]{0,6}?$'
        : r'^[0-9]{0,6}(\.[0-9]{1,' + fractionDigits.toString() + r'})?$';
    final wieghtRegx = RegExp(pattern);

    if (!wieghtRegx.hasMatch(parsed.toString())) {
      return context.l10n.invalidWeight;
    }

    return null;
  }

  Widget dirt(RepriceFormData line) {
    return inputBox<String>(
      binding: line.dirtController,
      enabled: true,
      inputType: TextInputType.number,
      validator: (value) {
        final dirt = value?.trim() ?? '';
        if (dirt.isEmpty) {
          return context.l10n.netWeightRequired;
        }
        final parsed = double.tryParse(dirt);

        final error = _validateDirtValue(parsed, context, line);
        if (error != null) {
          return error;
        }

        if ((line.netWeightValue.value ?? 0) <= line.dirtValue.value) {
          return context.l10n.invalidWeight;
        }

        return null;
      },
      onChange: (updatedNetWeight) {
        final parsed = double.tryParse(updatedNetWeight.trim());
        line.dirtValue.value = parsed ?? 0;
      },
    );
  }

  Widget netWeight(RepriceFormData line) {
    return inputBox<String>(
      binding: line.netWeightController,
      enabled: true,
      inputType: TextInputType.number,
      validator: (value) {
        final netWeight = value?.trim() ?? '';
        if (netWeight.isEmpty) {
          return context.l10n.netWeightRequired;
        }
        final parsed = double.tryParse(netWeight);

        return _validateNetWeightValue(parsed, context, line);
      },
      onChange: (updatedNetWeight) {
        final parsed = double.tryParse(updatedNetWeight.trim());
        line.netWeightValue.value = parsed;
      },
    );
  }

  Widget rate({required bool enabled, required RepriceFormData line}) {
    return ValueListenableBuilder(
      valueListenable: repriceController.rateUpdated,
      builder: (context, value, child) {
        return UomInputField(
          enabled: enabled,
          key: UniqueKey(),
          isRate: true,
          values: const [shared.Uom.mt, shared.Uom.kg],
          initialValue: shared.ValueUomPair(
            value: line.rate.value?.value ?? 0,
            uom: line.rate.value?.uom ?? uom,
            isRate: true,
          ),
          onChanged: (value) {
            line.rate.value = UomValue.fromValue(
              value.value.roundAwayFromZero(),
              value.uom,
              isRate: true,
            );
          },
        );
      },
    );
  }

  Widget price({
    required bool enabled,
    required RepriceFormData line,
    required ValueNotifier<UomValue?> rateC,
    required ValueNotifier<double> priceC,
    required ValueNotifier<double> payableC,
  }) {
    return inputBox<double>(
      binding: priceC,
      enabled: enabled,
      inputType: TextInputType.number,
    );
  }

  Widget smallBlankWidth() {
    return const SizedBox(width: Insets.gutter / 2);
  }

  Widget labelAndBlankSpace() {
    return const SizedBox(width: 150 + (Insets.gutter / 2));
  }

  Widget product({
    required bool enabled,
    required RepriceFormData line,
    required ValueNotifier<Product?> binding,
    required ValueNotifier<Location?> location,
  }) {
    binding.addListener(() async {
      line.product.value = binding.value;
      line.modified.value = Modified(
        userInfoId: userInfoService.userInfo.id,
        userName: userInfoService.userInfo.name,
        at: DateTime.now(),
      );
      final locations = await repriceController.getLocations(
        binding.value?.code ?? '',
        widget.ticket.yardCode,
        binding.value?.code,
      );
      final matchedLocation = locations.firstWhereOrNull(
        (x) => x.code == binding.value?.code,
      );
      line.location.value = matchedLocation;
      location.value =
          matchedLocation ?? Location(id: '', code: '', description: '');

      final account =
          repriceController.ticketAccount.value ?? widget.ticket.account;

      if (line.product.value != null) {
        line.rate.value = await repriceController.getBaseRate(
          line.product.value!.id,
          widget.ticket,
          account.accountNumber!,
          account.accountId!,
          uom,
        );
        repriceController.rateUpdated.value =
            !repriceController.rateUpdated.value;
      }
    });
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: SizedBox(
        width: 150,
        child: EmrPickerFormField<Product>(
          binding: binding,
          itemTitleText: (p0) => p0.code,
          enabled: ValueNotifier(enabled),
          items: (search) {
            if (search.isEmpty || search.length < 2) {
              return Future.value([]);
            }
            return repriceController.getProducts(search);
          },
        ),
      ),
    );
  }

  Widget location({
    required bool enabled,
    required RepriceFormData line,
    required ValueNotifier<Location?> binding,
  }) {
    binding.addListener(() async {
      line.location.value = binding.value;
      line.modified.value = Modified(
        userInfoId: userInfoService.userInfo.id,
        userName: userInfoService.userInfo.name,
        at: DateTime.now(),
      );
    });
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: SizedBox(
        width: 150,
        child: EmrPickerFormField<Location>(
          binding: binding,
          itemTitleText: (p0) => p0.code,
          enabled: ValueNotifier(enabled),
          items: (search) {
            if (search.isEmpty || search.length < 2) {
              return Future.value([]);
            }
            return repriceController.getLocations(
              search,
              widget.ticket.yardCode,
              null,
            );
          },
        ),
      ),
    );
  }

  Widget inputBox<T>({
    required ValueNotifier<T> binding,
    required bool enabled,
    TextInputType inputType = TextInputType.text,
    void Function(T)? onChange,
    String? Function(String?)? validator,
  }) {
    final enabled0 = ValueNotifier(enabled);
    binding.addListener(() {
      onChange?.call(binding.value);
    });
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: SizedBox(
        width: 150,
        child: EmrTextFormField(
          binding: binding,
          enabled: enabled0,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }

  Widget labelBox({
    required String label,
    bool isBackground = false,
    TextStyle? style,
  }) {
    return Text(
      label,
      style:
          style ??
          (isBackground
              ? Theme.of(context).primaryTextTheme.bodyLarge
              : Theme.of(context).textTheme.bodyLarge),
    );
  }

  Future<void> recalculateRate() async {
    if (repriceController.selectedAccount.value == null) {
      return;
    }
    final formData = repriceController.repriceFormData.value;

    final productIds = formData
        .map((line) => line.product.value?.id)
        .whereType<String>()
        .where((id) => id.isNotEmpty)
        .toSet()
        .toList();

    if (productIds.isEmpty) return;

    final baseRates = await repriceController.getBaseRates(
      productIds,
      widget.ticket,
      repriceController.selectedAccount.value!.code,
      repriceController.selectedAccount.value!.id!,
      uom,
    );

    for (final line in formData) {
      final productId = line.product.value?.id;
      if (productId == null) continue;

      final newRate = baseRates[productId];
      if (newRate != null && newRate.value > 0) {
        line.rate.value = newRate;
      }
    }

    repriceController.rateUpdated.value = !repriceController.rateUpdated.value;
  }
}
