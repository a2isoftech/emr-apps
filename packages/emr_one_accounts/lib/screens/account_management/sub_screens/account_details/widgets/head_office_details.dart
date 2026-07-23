import 'dart:math';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/permissions/account_management_permissions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HeadOfficeDetails extends EmrTabBarVerticalViewItem {
  const HeadOfficeDetails({
    required this.controller,
    required this.formKey,
    required super.title,
    super.key,
  }) : super(
         allowedPermissions: const [
           AccountManagementPermissions.headOfficeView,
         ],
       );

  final ManageHeadOfficeDetailsController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    if (!context.userHasPermission(
      AccountManagementPermissions.headOfficeView,
    )) {
      return const SizedBox(height: AccountSettings.scrollableCardMinHeight);
    }

    return _HeadOfficeDetailsBody(controller: controller, formKey: formKey);
  }
}

class _HeadOfficeDetailsBody extends StatefulWidget {
  const _HeadOfficeDetailsBody({
    required this.controller,
    required this.formKey,
  });

  final ManageHeadOfficeDetailsController controller;
  final GlobalKey<FormState> formKey;

  @override
  State<_HeadOfficeDetailsBody> createState() => _HeadOfficeDetailsBodyState();
}

class _HeadOfficeDetailsBodyState extends State<_HeadOfficeDetailsBody> {
  int _formGeneration = 0;
  EditHeadOfficeDetailsFormData? _trackedData;

  @override
  void initState() {
    super.initState();
    _trackedData = widget.controller.data;
  }

  @override
  void didUpdateWidget(covariant _HeadOfficeDetailsBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newData = widget.controller.data;
    if (!identical(_trackedData, newData)) {
      _trackedData = newData;
      _formGeneration++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: KeyedSubtree(
        key: ValueKey<int>(_formGeneration),
        child: EmrTabBarVerticalViewCard(
          title: '',
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _HeadOfficeSection(
                title: context.l10n.general,
                fields: _generalFields(context),
              ),
              _SalesInvoiceSection(
                title: '${context.l10n.sales} - ${context.l10n.invoice}',
                fields: _salesInvoiceFields(context),
              ),
              _HeadOfficeSection(
                title: context.l10n.selfBilling,
                fields: _selfBillingFields(context),
              ),
              _HeadOfficeSection(
                title: context.l10n.creditControl,
                fields: _creditControlFields(context),
              ),
              _HeadOfficeSection(
                title: context.l10n.paymentTerms,
                fields: _paymentTermsFields(context),
              ),
              _HeadOfficeSection(
                title: '${context.l10n.sales} - ${context.l10n.creditTerms}',
                fields: _salesCreditTermsFields(context),
              ),
              _HeadOfficeSection(
                title: context.l10n.reporting1099,
                fields: _reportingFields(context),
              ),
              _HeadOfficeSection(
                title: context.l10n.financialGroups,
                fields: _financialGroupFields(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _generalFields(BuildContext context) {
    final data = widget.controller.data;
    return [
      EmrTextFormField(
        labelText: context.l10n.companyRegNo,
        binding: data.companyRegistrationNumber,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.companyRegistrationNumberMaxLength,
          ),
        ],
        validator: (value) => Validators.length(
          value,
          max: HeadOfficeLayoutConstants.companyRegistrationNumberMaxLength,
        ),
      ),
      EmrTextFormField(
        labelText: context.l10n.vatReg,
        binding: data.vatNumber,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.vatRegistrationMaxLength,
          ),
        ],
        validator: (value) => Validators.length(
          value,
          max: HeadOfficeLayoutConstants.vatRegistrationMaxLength,
        ),
      ),
      EmrTextFormField(
        labelText: context.l10n.eoriNumber,
        binding: data.eoriNumber,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.eoriNumberMaxLength,
          ),
        ],
        validator: (value) => Validators.length(
          value,
          max: HeadOfficeLayoutConstants.eoriNumberMaxLength,
        ),
      ),
      EmrTextFormField(
        labelText: context.l10n.website,
        binding: data.website,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.websiteMaxLength,
          ),
        ],
        validator: (value) => Validators.join([
          Validators.url(value),
          Validators.length(
            value,
            max: HeadOfficeLayoutConstants.websiteMaxLength,
          ),
        ]),
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.isTradingCompany,
        nullableBinding: data.isTradingCompany,
      ),
    ];
  }

  List<Widget> _salesInvoiceFields(BuildContext context) {
    final data = widget.controller.data;
    return [
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.bulkPod,
        nullableBinding: data.bulkPod,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.multiLoad,
        nullableBinding: data.multiLoad,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.multiDepot,
        nullableBinding: data.multiDepot,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.multiGrade,
        nullableBinding: data.multiGrade,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.multiTicketDate,
        nullableBinding: data.multiTicketDate,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.multiLocation,
        nullableBinding: data.multiLocation,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.useDeliveryAddress,
        nullableBinding: data.useDeliveryAddress,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.suppressInvoice,
        nullableBinding: data.suppressInvoice,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.suppressStatement,
        nullableBinding: data.suppressStatement,
      ),
    ];
  }

  List<Widget> _selfBillingFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;
    return [
      EmrDateFormField(
        labelText: '${context.l10n.selfBilling} ${context.l10n.date}',
        binding: data.selfBillingDate,
      ),
      EmrPickerFormField(
        labelText: context.l10n.frequency,
        items: controller.selfBillingfrequency,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.frequency,
      ),
      EmrTextFormField(
        labelText: context.l10n.doNotpayTicketsOlderThan,
        binding: data.doNotPayTicketsOlderThan,
        validator: (value) => Validators.decimal(
          value,
          min: HeadOfficeLayoutConstants.selfBillingTicketAgeMinDays,
          max: HeadOfficeLayoutConstants.selfBillingTicketAgeMaxDays,
        ),
      ),
      EmrTextFormField(
        labelText: context.l10n.payTicketsOlderThan,
        binding: data.payTicketsOlderThan,
        validator: (value) => Validators.decimal(
          value,
          min: HeadOfficeLayoutConstants.selfBillingTicketAgeMinDays,
          max: HeadOfficeLayoutConstants.selfBillingTicketAgeMaxDays,
        ),
      ),
      EmrPickerFormField(
        labelText: context.l10n.payCentre,
        items: controller.getDepots,
        itemTitleText: (item) => item,
        binding: data.payCentre,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.autoApprove,
        nullableBinding: data.autoApprove,
      ),
    ];
  }

  List<Widget> _creditControlFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;
    return [
      EmrPickerFormField(
        labelText: context.l10n.insurerPolicy,
        items: controller.insurerPolicy,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.insurerPolicyName,
      ),
      EmrTextFormField(
        labelText: context.l10n.creditLimit,
        binding: data.creditLimit,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.creditLimitMaxLength,
          ),
        ],
        validator: Validators.decimal,
      ),
      EmrTextFormField(
        labelText: context.l10n.overrideLimit,
        binding: data.overrideLimit,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.creditLimitMaxLength,
          ),
        ],
        validator: Validators.decimal,
      ),
      EmrTextFormField(
        labelText: context.l10n.decisionLimit,
        binding: data.decisionLimit,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.creditLimitMaxLength,
          ),
        ],
        validator: Validators.decimal,
      ),
      EmrDateFormField(
        labelText: context.l10n.creditReportDate,
        binding: data.creditReportDate,
      ),
      EmrTextFormField(
        labelText: context.l10n.creditReportValue,
        binding: data.creditReportValue,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.creditLimitMaxLength,
          ),
        ],
        validator: Validators.decimal,
      ),
      EmrDateFormField(
        labelText: context.l10n.creditLimitReviewDate,
        binding: data.creditLimitReviewDate,
      ),
      EmrPickerFormField(
        labelText: context.l10n.currency,
        items: StandingDataService.currencyCodes,
        itemTitleText: (item) => item,
        binding: data.currencyId,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.contraAgreed,
        nullableBinding: data.contraAgreed,
      ),
    ];
  }

  List<Widget> _paymentTermsFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;
    return [
      EmrPickerFormField(
        labelText: context.l10n.traderPaymentTerms,
        items: controller.paymentTerms,
        itemTitleText: (item) => item,
        binding: data.paymentTermTypeName,
      ),
      EmrPickerFormField(
        labelText: context.l10n.financialPaymentMethod,
        items: controller.financialPaymentMethodsGroups,
        itemTitleText: (item) => item,
        binding: data.financialPaymentMethod,
      ),
      EmrPickerFormField(
        labelText: context.l10n.documentHoldStatusType,
        items: controller.documentHoldStatusType,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.documentHoldStatusType,
      ),
      EmrPickerFormField(
        labelText: context.l10n.discount,
        items: controller.discountTypes,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.discount,
      ),
      EmrPickerFormField(
        labelText: context.l10n.taxMethod,
        items: controller.taxMethods,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.taxMethod,
      ),
      EmrTextFormField(
        labelText: context.l10n.discountTerms,
        binding: data.discountTerms,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.discountTermsMaxLength,
          ),
        ],
        validator: (value) => Validators.length(
          value,
          max: HeadOfficeLayoutConstants.discountTermsMaxLength,
        ),
      ),
      EmrTextFormField(
        labelText: context.l10n.discountPercentage,
        binding: data.discountPercentage,
        validator: Validators.decimal,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.adjustTax,
        nullableBinding: data.adjustTax,
      ),
    ];
  }

  List<Widget> _salesCreditTermsFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;
    return [
      EmrPickerFormField(
        labelText: context.l10n.customerPaymentTerms,
        items: controller.paymentTerms,
        itemTitleText: (item) => item,
        binding: data.creditPaymentTermTypeName,
      ),
      EmrPickerFormField(
        labelText: context.l10n.dueDateFrom,
        items: controller.dueDateFrom,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.dueDateFrom,
      ),
      EmrPickerFormField(
        labelText: context.l10n.invoicePeriodicity,
        items: controller.invoicePeriodicity,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.invoicePeriodicity,
      ),
      EmrPickerFormField(
        labelText: context.l10n.invoicePeriodicityDays,
        items: controller.invoicePeriodicityDays,
        itemTitleText: (item) => item,
        binding: data.invoicePeriodicityDays,
      ),
      EmrPickerFormField(
        labelText: context.l10n.vatClass,
        items: controller.vatClass,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.vatClass,
      ),
      EmrPickerFormField(
        labelText: context.l10n.limitDecisionType,
        items: controller.limitDecisionType,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.limitDecisionType,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.onStop,
        nullableBinding: data.onStop,
      ),
    ];
  }

  List<Widget> _reportingFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;
    return [
      EmrPickerFormField(
        labelText: context.l10n.taxIdType,
        items: controller.taxIdTypes,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.taxIdType,
      ),
      EmrPickerFormField(
        labelText: context.l10n.nameFor1099,
        items: controller.namesToUseOn1099,
        itemTitleText: (item) => item,
        binding: data.nameFor1099,
      ),
      EmrDateFormField(
        labelText: context.l10n.reportingDate,
        binding: data.reportingDate,
      ),
      EmrDateFormField(
        labelText: context.l10n.cashPaymentLimitExemptionDate,
        binding: data.cashPaymentLimitExemptionDate,
      ),
      EmrTextFormField(
        labelText: context.l10n.doingBusinessAs,
        binding: data.doingBusinessAs,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            HeadOfficeLayoutConstants.doingBusinessAsMaxLength,
          ),
        ],
        validator: (value) => Validators.length(
          value,
          max: HeadOfficeLayoutConstants.doingBusinessAsMaxLength,
        ),
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.checkForW9,
        nullableBinding: data.checkForW9,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.w9Received,
        nullableBinding: data.w9Received,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.foreignIndicator,
        nullableBinding: data.foreignEntityIndicator,
      ),
      _HeadOfficeEmrSwitchForNullableBool(
        labelText: context.l10n.secondTin,
        nullableBinding: data.secondTin,
      ),
    ];
  }

  List<Widget> _financialGroupFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;
    return [
      EmrPickerFormField(
        labelText: context.l10n.financialCustomerGroup,
        items: controller.financialCustomerGroups,
        itemTitleText: (item) => item,
        binding: data.financialCustomerGroup,
      ),
      EmrPickerFormField(
        labelText: context.l10n.financialSupplierGroup,
        items: controller.financialSupplierGroups,
        itemTitleText: (item) => item,
        binding: data.financialSupplierGroup,
      ),
    ];
  }
}

class _HeadOfficeSection extends StatelessWidget {
  const _HeadOfficeSection({required this.title, required this.fields});

  final String title;
  final List<Widget> fields;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
            top: Insets.gutter,
            bottom: Insets.gutter / 2,
          ),
          child: Text(title, style: EmrOneConstants.kOpenSans18BoldTextStyle),
        ),

        Theme(
          data: theme.copyWith(dividerColor: Colors.transparent),
          child: EmrTabBarVerticalViewResponsiveColumnsCard(
            title: '',
            children: fields,
          ),
        ),
      ],
    );
  }
}

class _SalesInvoiceSection extends StatelessWidget {
  const _SalesInvoiceSection({required this.title, required this.fields});

  final String title;
  final List<Widget> fields;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
            top: Insets.gutter,
            bottom: Insets.gutter / 2,
          ),
          child: Text(title, style: EmrOneConstants.kOpenSans18BoldTextStyle),
        ),
        Theme(
          data: theme.copyWith(dividerColor: Colors.transparent),
          child: EmrTabBarVerticalViewCard(
            title: '',
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Wrap(
                spacing: Insets.gutter,
                runSpacing: Insets.gutter / 2,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: fields,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _HeadOfficeEmrSwitchForNullableBool extends StatefulWidget {
  const _HeadOfficeEmrSwitchForNullableBool({
    required this.labelText,
    required this.nullableBinding,
  });

  final String labelText;
  final ValueNotifier<bool?> nullableBinding;

  @override
  State<_HeadOfficeEmrSwitchForNullableBool> createState() =>
      _HeadOfficeEmrSwitchForNullableBoolState();
}

class _HeadOfficeEmrSwitchForNullableBoolState
    extends State<_HeadOfficeEmrSwitchForNullableBool> {
  late ValueNotifier<bool> _nonNullBinding;

  @override
  void initState() {
    super.initState();
    _nonNullBinding = ValueNotifier(widget.nullableBinding.value ?? false);
    widget.nullableBinding.addListener(_syncFromNullable);
    _nonNullBinding.addListener(_syncToNullable);
  }

  @override
  void didUpdateWidget(
    covariant _HeadOfficeEmrSwitchForNullableBool oldWidget,
  ) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.nullableBinding, widget.nullableBinding)) {
      oldWidget.nullableBinding.removeListener(_syncFromNullable);
      _nonNullBinding.removeListener(_syncToNullable);
      _nonNullBinding.dispose();
      _nonNullBinding = ValueNotifier(widget.nullableBinding.value ?? false);
      widget.nullableBinding.addListener(_syncFromNullable);
      _nonNullBinding.addListener(_syncToNullable);
    }
  }

  void _syncFromNullable() {
    if (!mounted) return;
    final next = widget.nullableBinding.value ?? false;
    if (_nonNullBinding.value != next) {
      _nonNullBinding.value = next;
    }
  }

  void _syncToNullable() {
    final coalescedNullable = widget.nullableBinding.value ?? false;
    if (coalescedNullable != _nonNullBinding.value) {
      widget.nullableBinding.value = _nonNullBinding.value;
    }
  }

  @override
  void dispose() {
    widget.nullableBinding.removeListener(_syncFromNullable);
    _nonNullBinding.removeListener(_syncToNullable);
    _nonNullBinding.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EmrSwitchFormField(
      labelText: widget.labelText,
      binding: _nonNullBinding,
    );
  }
}

double getMaxHeight<T>(List<T> list) {
  return list.isEmpty
      ? double.infinity
      // Show 5.5 ticket rows to give
      // the user a hint that there are
      // more tickets to scroll to.
      : min(list.length + 1, 6.5) * 70;
}
