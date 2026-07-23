import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/models/haulage_price.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CwFreightRates extends StatefulWidget {
  const CwFreightRates({required this.controller, super.key});

  final ContractController controller;

  @override
  State<CwFreightRates> createState() => _CWFreightRatesMobileState();
}

class _CWFreightRatesMobileState extends State<CwFreightRates> {
  final cToFAdjustmentBinding = ValueNotifier<double?>(null);
  late VoidCallback _cToFAdjustmentChangeListener;
  late bool isCollected;
  HaulagePrice? internalRate;
  bool isLoading = false;
  HaulagePrice? externalRate;

  @override
  void initState() {
    super.initState();
    _cToFAdjustmentChangeListener = _onCToFAdjustmentChanged;
    cToFAdjustmentBinding.addListener(_cToFAdjustmentChangeListener);
    final cToFAdjustment = widget.controller.model!.cToFAdjustment;
    cToFAdjustmentBinding.addListener(_cToFAdjustmentChangeListener);
    isCollected = widget.controller.hasDeliveryMethod(
      CrmDeliveryMethod.collected,
    );
    if (cToFAdjustment != null) {
      cToFAdjustmentBinding.value = cToFAdjustment;
    }
    widget.controller.addListener(_onContractUpdated);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchHaulageRates();
    });
  }

  Future<void> _fetchHaulageRates() async {
    if ((widget.controller.model?.selectedDepots.isEmpty ?? true) ||
        (widget.controller.model?.selectedArisingPoints.isEmpty ?? true)) {
      return;
    }

    final start = widget.controller.model?.startDate;
    final end = widget.controller.model?.endDate;
    if (start == null || end == null) {
      return;
    }
    final formattedStart = _formatDateForApi(start);
    final formattedEnd = _formatDateForApi(end);
    if (mounted) {
      setState(() => isLoading = true);
    }
    try {
      final response = await widget.controller.getHaulagePrice(
        widget.controller.model?.selectedDepots.first.yardCode ?? '',
        widget.controller.model?.selectedArisingPoints.first.aliasCode ?? '',
        formattedStart,
        formattedEnd,
      );

      var isInternalRateAvalaible = false;
      var isExternalRateAvalaible = false;

      if (response != null && response.isNotEmpty) {
        for (final rate in response) {
          if (rate.haulierAccountNo.startsWith('L')) {
            internalRate = rate;
            isInternalRateAvalaible = true;
          } else if (rate.haulierAccountNo.startsWith('D')) {
            externalRate = rate;
            isExternalRateAvalaible = true;
          }
        }
      }
      if (!isInternalRateAvalaible) {
        internalRate = null;
      }
      if (!isExternalRateAvalaible) {
        externalRate = null;
      }
    } catch (e) {
      debugPrint('Error fetching haulage rates: $e');
    } finally {
      setState(() => isLoading = false);
    }
  }

  String _formatDate(DateTime date) {
    return DateFormat('MM-dd-yyyy').format(date);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onContractUpdated);
    cToFAdjustmentBinding.removeListener(_cToFAdjustmentChangeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isRequired = internalRate == null && externalRate == null;
    return Visibility(
      visible: isCollected,
      child: ChangeNotifierProvider.value(
        value: widget.controller,
        builder: (context, child) => FormField(
          validator: (value) {
            return null;
          },
          builder: (field) => Column(
            children: [
              FormHeadingRow(headings: ['${context.l10n.freightRates} :']),
              if (isLoading)
                const Padding(
                  padding: EdgeInsets.all(Insets.gutter / 2),
                  child: CircularProgressIndicator(),
                )
              else
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Insets.gutter / 4,
                    horizontal: Insets.gutter / 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (internalRate != null || externalRate != null) ...[
                        Text(
                          internalRate != null
                              ? _formatRate(internalRate!, 'Internal')
                              : context.l10n.internalNoRatesMsg,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          externalRate != null
                              ? _formatRate(externalRate!, 'External')
                              : context.l10n.externalNoRatesMsg,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ] else
                        Text(
                          context.l10n.noFreightMatrixMsg,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                    ],
                  ),
                ),
              FormHeadingRow(headings: ['${context.l10n.estimateHaulage} :']),
              FormRow(
                children: [
                  EmrTextFormField<double>(
                    binding: cToFAdjustmentBinding,
                    key: widget.controller.freightRateskey,
                    hintText: isRequired
                        ? context.l10n.estimatedHaulageCostMsg
                        : context.l10n.estimatedHaulageCostOptionalMsg,
                    enabled: ValueNotifier(isCollected),
                    validator: (_) {
                      if (isRequired &&
                          (cToFAdjustmentBinding.value ?? 0) <= 0) {
                        widget.controller.addInvalidKey(
                          widget.controller.freightRateskey!,
                        );
                        return context.l10n.required;
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updatecToFAdjustmentrate() {
    final value = cToFAdjustmentBinding.value;

    setState(() {
      widget.controller.model!.cToFAdjustment = (value ?? 0) > 0 ? value : null;
    });
  }

  String _formatRate(HaulagePrice rate, String label) {
    final formattedDate = _formatDate(rate.endDate!);
    final formattedValue = rate.rate?.toStringAsFixed(2);
    return '$label: \$$formattedValue / ${rate.uomCode} ($formattedDate)';
  }

  String _formatDateForApi(DateTime dateStr) {
    try {
      return DateFormat.yMd(
        Localizations.localeOf(context).toString(),
      ).format(dateStr);
    } catch (_) {
      return '';
    }
  }

  void _onContractUpdated() {
    if (!mounted) {
      return;
    }
    setState(_fetchHaulageRates);
  }

  void _onCToFAdjustmentChanged() {
    updatecToFAdjustmentrate();
  }
}
