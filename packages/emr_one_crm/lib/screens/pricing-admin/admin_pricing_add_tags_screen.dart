import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/pricing-admin/admin_pricing_add_tags_template_dialog.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdminPricingAddTagsScreen extends StatefulWidget {
  const AdminPricingAddTagsScreen({
    required this.coreapiService,
    required this.accountPrices,
    required this.settingsController,
    super.key,
  });

  final CoreApiService coreapiService;
  final List<AccountPrice> accountPrices;
  final SettingsController settingsController;

  @override
  State<AdminPricingAddTagsScreen> createState() =>
      _AdminPricingAddTagsScreenState();
}

class _AdminPricingAddTagsScreenState extends State<AdminPricingAddTagsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late _FormModel _formData;
  static const defaultCollectedRate = -5.0;
  static const defaultHaulageRate = 5.0;

  late TextEditingController _locationController;

  @override
  void initState() {
    super.initState();
    _locationController = TextEditingController();

    _formData = _FormModel(
      validFrom: DateTime.now(),
      rate: UomValue.rate(0, widget.accountPrices.first.rate?.uom ?? Uom.mt),
      haulageCharge: UomValue.rate(
        0,
        widget.accountPrices.first.rate?.uom ?? Uom.mt,
      ),
    );
    _formData.locations.addListener(() {
      _locationController.text = _formData.locations.value.join(', ');
    });

    _formData.rate.addListener(() {
      final current = _formData.rate.value;
      //Max value set as per DB limit.
      if (current?.value != null && current!.value > 99999999999999.99) {
        _formData.errorMessage.value = context.l10n.tagRateError;
        _formData.loading.value = true;
      } else {
        _formData.loading.value = false;
        _formData.errorMessage.value = null;
      }
    });
  }

  @override
  void dispose() {
    _locationController.dispose();
    _formData.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedUom = widget.accountPrices.first.rate?.uom;
    final pricingService = widget.coreapiService.pricingService;
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                child: FormHeadingRow(
                  headings: [
                    context.l10n.addTagsToPrices(widget.accountPrices.length),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: EmrPickerFormField(
                      labelText: context.l10n.availableTags,
                      validator: Validators.required,
                      binding: _formData.tagTemplate,
                      itemTitleText: (template) => template.reason,
                      items: (item) {
                        return pricingService.getTagTemplates(
                          territoryIds: [
                            'territories/${widget.settingsController.territory}',
                          ],
                          query: item,
                        );
                      },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () async {
                      final output = await _showAddTagTemplateDialog(context);
                      _formData.tagTemplate.value = output;
                    },
                  ),
                ],
              ),
              ValueListenableBuilder(
                valueListenable: _formData.isCollected,
                builder: (context, isCollected, _) {
                  if (isCollected) {
                    return Row(
                      children: [
                        Switch(
                          value: _formData.fullyCharged.value ?? false,
                          onChanged: (val) {
                            setState(() {
                              _formData.fullyCharged.value = val;
                              if (val == true) {
                                _formData.showToCustomer.value = false;
                              }
                            });
                          },
                        ),
                        Text(context.l10n.fullyCharged),
                        const SizedBox(width: Insets.gutter),
                        ValueListenableBuilder(
                          valueListenable: _formData.rate,
                          builder: (context, rate, _) {
                            return Switch(
                              value:
                                  _formData.showToCustomer.value! ||
                                  _formData.fullyCharged.value! ||
                                  (rate != null && rate.uom != selectedUom),
                              onChanged:
                                  _formData.fullyCharged.value! ||
                                      (rate != null && rate.uom != selectedUom)
                                  ? null
                                  : (val) {
                                      setState(() {
                                        _formData.showToCustomer.value = val;
                                        if (val == true) {
                                          _formData.fullyCharged.value = false;
                                        }
                                      });
                                    },
                            );
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: [
                              TextSpan(text: context.l10n.showHaulageCharge),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Tooltip(
                                  message: context.l10n.collectedLessCharge,
                                  child: Icon(
                                    Icons.info_outline,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.tertiary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    _formData.showToCustomer.value = false;
                    _formData.fullyCharged.value = false;
                    return const SizedBox();
                  }
                },
              ),
              ValueListenableBuilder(
                valueListenable: _formData.isCollected,
                builder: (context, isCollected, _) {
                  if (!isCollected) {
                    final today = DateTime.now().dateOnly;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EmrDateFormField(
                          labelText: context.l10n.validFrom,
                          binding: _formData.validFrom,
                          validator: Validators.required,
                          firstDate: today,
                        ),
                        ValueListenableBuilder(
                          valueListenable: _formData.validFrom,
                          builder: (context, value, _) {
                            final validFromDate = DateTime(
                              value.year,
                              value.month,
                              value.day,
                            );
                            final validToMinDate = validFromDate.add(
                              const Duration(days: 1),
                            );

                            if (_formData.validTo.value != null &&
                                _formData.validTo.value!.isBefore(
                                  validToMinDate,
                                )) {
                              _formData.validTo.value = null;
                            }

                            return EmrDateFormField(
                              labelText: context.l10n.validTo,
                              binding: _formData.validTo,
                              firstDate: validToMinDate,
                            );
                          },
                        ),
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              ValueListenableBuilder(
                valueListenable: _formData.isCollected,
                builder: (context, isCollected, _) {
                  _formData.isCollectedFullyCharged =
                      isCollected && (_formData.fullyCharged.value ?? false);
                  if (isCollected &&
                      ((_formData.rate.value == null ||
                              _formData.rate.value?.value == 0.00) ||
                          _formData.isCollectedFullyCharged)) {
                    _formData.rate.value = UomValue.fromValue(
                      _formData.isCollectedFullyCharged
                          ? 0
                          : defaultCollectedRate,
                      widget.accountPrices.first.rate!.uom,
                    );
                  } else {
                    _formData.rate.value = UomValue.fromValue(
                      defaultCollectedRate,
                      widget.accountPrices.first.rate!.uom,
                    );
                  }
                  if (!_formData.isCollectedFullyCharged) {
                    return EmrUomFormField(
                      binding: _formData.rate,
                      defaultUom: _formData.rate.value?.uom ?? selectedUom,
                      labelText:
                          _formData.isCollected.value &&
                              (_formData.showToCustomer.value ?? false)
                          ? context.l10n.collectedDelta
                          : context.l10n.rate,
                      allowNegative: true,
                      uomList: [Uom.ld, selectedUom!],
                      priceableElement: EmrUomPriceableElement.commodityRate,
                      readOnlyUnit: _formData.isCollected.value
                          ? ValueNotifier(false)
                          : ValueNotifier(true),
                      readOnlySign:
                          _formData.tagTemplate.value?.category.toLowerCase() ==
                              CrmDeliveryMethod.collected.name
                          ? ValueNotifier(true)
                          : ValueNotifier(false),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              ValueListenableBuilder(
                valueListenable: _formData.isCollected,
                builder: (context, isCollected, _) {
                  _formData.isCollectedFullyCharged =
                      isCollected && (_formData.fullyCharged.value ?? false);
                  if (_formData.isCollectedFullyCharged) {
                    _formData.haulageCharge.value = null;
                  } else if (isCollected &&
                      (_formData.haulageCharge.value == null ||
                          _formData.haulageCharge.value?.value == 0.00)) {
                    _formData.haulageCharge.value = UomValue.fromValue(
                      defaultHaulageRate,
                      widget.accountPrices.first.rate!.uom,
                    );
                  }
                  if (_formData.showToCustomer.value ?? false) {
                    return EmrUomFormField(
                      binding: _formData.haulageCharge,
                      validator: Validators.required,
                      defaultUom:
                          _formData.haulageCharge.value?.uom ?? selectedUom,
                      labelText: context.l10n.haulageCharge,
                      uomList: [Uom.ld, selectedUom!],
                      priceableElement: EmrUomPriceableElement.commodityRate,
                      readOnlyUnit: _formData.isCollected.value
                          ? ValueNotifier(false)
                          : ValueNotifier(true),
                      readOnlySign:
                          _formData.tagTemplate.value?.category.toLowerCase() ==
                              CrmDeliveryMethod.collected.name
                          ? ValueNotifier(true)
                          : ValueNotifier(false),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              ValueListenableBuilder(
                valueListenable: _formData.isCollected,
                builder: (context, uomValue, _) {
                  final isCollected = _formData.isCollected.value;

                  _formData.isCollectedFullyCharged =
                      isCollected && (_formData.fullyCharged.value ?? false);

                  if (isCollected) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ValueListenableBuilder(
                          valueListenable: _formData.locations,
                          builder: (context, uomValue, _) {
                            return _formData.isCollectedFullyCharged
                                ? EmrPickerFormField(
                                    labelText: context.l10n.location,
                                    items: (query) async {
                                      return Future.value(
                                        widget.accountPrices.first.locations,
                                      );
                                    },
                                    itemTitleText: (item) => item,
                                    binding: _formData.location,
                                    validator: Validators.required,
                                  )
                                : EmrMultiPickerFormField(
                                    labelText: context.l10n.location,
                                    items: (query) async {
                                      return Future.value(
                                        widget.accountPrices.first.locations,
                                      );
                                    },
                                    itemTitleText: (item) => item,
                                    binding: _formData.locations,
                                    validator: Validators.required,
                                  );
                          },
                        ),
                      ],
                    );
                  } else {
                    _formData.showToCustomer.value = false;
                    _formData.fullyCharged.value = false;
                    _formData.isCollectedFullyCharged = false;
                    return const SizedBox();
                  }
                },
              ),
              ValueListenableBuilder(
                valueListenable: _formData.errorMessage,
                builder: (context, value, _) {
                  if (value == null) return Container();

                  return Padding(
                    padding: const EdgeInsets.only(top: Insets.gutter),
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                },
              ),
              Row(
                children: [
                  EmrSwitchFormField(
                    labelText: context.l10n.expireTagOnNextPublication,
                    binding: _formData.expireOnNextPublicationIssue,
                  ),

                  const SizedBox(width: Insets.gutter),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: context.pop,
                    child: Text(context.l10n.cancel),
                  ),
                  const SizedBox(width: Insets.gutter / 2),
                  ValueListenableBuilder(
                    valueListenable: _formData.loading,
                    builder: (context, isLoading, _) {
                      return FilledButton(
                        style: EmrButtonStyles.cta(),
                        onPressed: isLoading
                            ? null
                            : () {
                                EmrDialog.busy(
                                  context,
                                  titleText: context.l10n.addingTags,
                                );

                                if (_formData.tagTemplate.value == null) {
                                  _showErrorAndPop(
                                    context,
                                    'INVALID_TAG_TEMPLATE',
                                  );
                                  return;
                                }
                                final rateValue = _formData.rate.value?.value;
                                final isCollectedDelta =
                                    _formData.isCollected.value &&
                                    (_formData.showToCustomer.value ?? false);
                                if (rateValue == null) {
                                  _showErrorAndPop(context, 'INVALID_RATE');
                                  return;
                                }
                                if (!isCollectedDelta &&
                                    rateValue == 0 &&
                                    !_formData.isCollectedFullyCharged) {
                                  _showErrorAndPop(context, 'INVALID_RATE');
                                  return;
                                }

                                if (_formData.isCollected.value &&
                                    !_formData.fullyCharged.value! &&
                                    (_formData.showToCustomer.value ?? false)) {
                                  final haulage = _formData.haulageCharge.value;

                                  if (haulage == null || haulage.value == 0) {
                                    _showErrorAndPop(
                                      context,
                                      'INVALID_HAULAGE',
                                    );
                                    return;
                                  }
                                }

                                _createTags(context).then((result) {
                                  if (result.$1) {
                                    if (context.mounted) {
                                      context.pop();
                                      context.pop();
                                    }
                                  } else {
                                    if (context.mounted) {
                                      _getTagRangeError(context, result.$2!);
                                      context.pop();
                                    }
                                  }
                                });
                              },
                        child: Text(
                          context.l10n.save,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      );
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

  Future<TagTemplateOutput?> _showAddTagTemplateDialog(BuildContext context) {
    return showDialog<TagTemplateOutput>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AdminPricingAddTagsTemplateDialog(
          coreapiService: widget.coreapiService,
          accountPrices: widget.accountPrices,
          settingsController: widget.settingsController,
        );
      },
    );
  }

  Future<(bool, List<String?>?)> _createTags(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      final selectedUom = widget.accountPrices.first.rate?.uom.name;
      final userEnteredUom = _formData.rate.value?.uom.name;
      if (selectedUom != userEnteredUom) {
        return (false, ['UOM_MISMATCH']);
      }

      var output = true;
      if (_formData.isCollected.value) {
        output =
            await _showMessageDialog(
              context,
              context.l10n.replicateCollectedTagForYards,
            ) ??
            false;
      }
      if (output) {
        final (isSucceful, error) = await widget.coreapiService.pricingService
            .createTags(
              tagTemplateId: _formData.tagTemplate.value!.id,
              input: widget.accountPrices,
              validFrom: _formData.validFrom.value,
              validTo: _formData.validTo.value,
              tagRate: _formData.rate.value,
              showToCustomer: _formData.showToCustomer.value ?? false,
              fullyCharged: _formData.fullyCharged.value ?? false,
              accountLocationsKeys: _formData.locations.value,
              isCollected: _formData.isCollected.value,
              expireOnNextPublicationIssue:
                  _formData.expireOnNextPublicationIssue.value,
              haulageCharge: _formData.haulageCharge.value,
            );
        return (isSucceful, error);
      }
    }
    if (context.mounted) {
      context.pop();
    }
    return (false, null);
  }

  void _getTagRangeError(BuildContext context, List<String?> errors) {
    for (final ext in errors) {
      final errorCode = ext;

      switch (errorCode) {
        case 'INVALID_TAG_RANGE':
          if (_formData.tagTemplate.value!.reason.toLowerCase() !=
              DeliveryMethod.collected.name) {
            _formData.errorMessage.value = context.l10n.tagRangeError
                .replaceFirst(
                  '[tagReason]',
                  _formData.tagTemplate.value!.reason,
                )
                .replaceFirst(
                  '[EffectiveFrom]',
                  DateFormat('dd/MM/yyyy').format(_formData.validFrom.value),
                )
                .replaceFirst(
                  '[EffectiveTo]',
                  _formData.validTo.value != null
                      ? DateFormat(
                          'dd/MM/yyyy',
                        ).format(_formData.validTo.value!)
                      : '',
                );
          } else {
            _formData.errorMessage.value = context.l10n.tagAlreadyExist
                .replaceFirst(
                  '[tagReason]',
                  _formData.tagTemplate.value!.reason,
                );
          }
        case 'UOM_MISMATCH':
          _formData.errorMessage.value = context.l10n.uomMismatchError;
        case 'INVALID_RATE':
          _formData.errorMessage.value = context.l10n.errMsgRateRequired;
        case 'INVALID_TAG_TEMPLATE':
          _formData.errorMessage.value = context.l10n.errMsgTagTemplateRequired;
        case 'INVALID_HAULAGE':
          _formData.errorMessage.value =
              context.l10n.errMsgHaulageRateRequiredForCollectedTag;
        default:
          _formData.errorMessage.value = context.l10n.createTagError;
      }
    }
  }

  void _showErrorAndPop(BuildContext context, String errorCode) {
    _getTagRangeError(context, [errorCode]);
    context.pop();
  }

  Future<bool?> _showMessageDialog(BuildContext context, String message) async {
    final screenWidth = MediaQuery.of(context).size.width;
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(context.l10n.warningAddCollectedTag),
          content: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: screenWidth < 500 ? screenWidth * 0.9 : 400,
            ),
            child: Text(message),
          ),
          actions: [
            TextButton(
              child: Text(context.l10n.no),
              onPressed: () {
                Navigator.of(context).pop(false); // Close the dialog
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // Close the dialog
              },
              child: Text(context.l10n.yes),
            ),
          ],
        );
      },
    );
  }
}

class _FormModel {
  _FormModel({
    required DateTime validFrom,
    TagTemplateOutput? tagTemplate,
    DateTime? validTo,
    UomValue? rate,
    UomValue? haulageCharge,
    bool? showToCustomer,
    bool? fullyCharged,
    bool expireOnNextPublicationIssue = false,
  }) {
    this.rate = ValueNotifier(rate);
    this.haulageCharge = ValueNotifier(haulageCharge);
    this.tagTemplate = ValueNotifier(tagTemplate);
    this.validFrom = ValueNotifier(validFrom);
    this.validTo = ValueNotifier(validTo);
    this.tagTemplate.addListener(() {
      enableDateFields.value = this.tagTemplate.value != null;
      showErrorForHaulageCharge.value = false;
      isCollected.value =
          this.tagTemplate.value?.category.toLowerCase() ==
          CrmDeliveryMethod.collected.name;
      this.rate.value = null;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        this.haulageCharge.value = null;
      });
    });
    this.showToCustomer = ValueNotifier(showToCustomer);
    this.fullyCharged = ValueNotifier(fullyCharged);
    this.expireOnNextPublicationIssue = ValueNotifier(
      expireOnNextPublicationIssue,
    );
    location = ValueNotifier('');
    location.addListener(() {
      final current = List<String>.from(locations.value);
      if (!current.contains(location.value)) {
        if (isCollectedFullyCharged) {
          current.clear();
        }
        current.add(location.value!);
        locations.value = current;
      }
    });
  }

  late final ValueNotifier<TagTemplateOutput?> tagTemplate;
  late final ValueNotifier<DateTime> validFrom;
  late final ValueNotifier<DateTime?> validTo;
  late final ValueNotifier<UomValue?> rate;
  late final ValueNotifier<UomValue?> haulageCharge;
  late final ValueNotifier<bool?> fullyCharged;
  late final ValueNotifier<bool?> showToCustomer;
  late final ValueNotifier<bool> expireOnNextPublicationIssue;
  late final ValueNotifier<String?> location;
  late final ValueNotifier<bool> showErrorForHaulageCharge = ValueNotifier(
    false,
  );
  late ValueNotifier<List<String>> locations = ValueNotifier<List<String>>([]);
  final ValueNotifier<bool> isCollected = ValueNotifier(false);

  final enableDateFields = ValueNotifier(false);
  final loading = ValueNotifier(false);
  late bool isCollectedFullyCharged = false;
  late ValueNotifier<String?> errorMessage = ValueNotifier<String?>(null);

  void dispose() {
    tagTemplate.dispose();
    validFrom.dispose();
    validTo.dispose();
    rate.dispose();
    enableDateFields.dispose();
    loading.dispose();
    haulageCharge.dispose();
  }
}
