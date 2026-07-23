import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/country_helper.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainDetails extends EmrTabBarVerticalViewItem {
  const MainDetails({
    required this.controller,
    required this.formKey,
    required super.title,
    super.key,
  }) : super(allowedPermissions: const []);

  final ManageMainDetailsController controller;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return _MainDetailsBody(controller: controller, formKey: formKey);
  }
}

class _MainDetailsBody extends StatefulWidget {
  const _MainDetailsBody({required this.controller, required this.formKey});

  final ManageMainDetailsController controller;
  final GlobalKey<FormState> formKey;

  @override
  State<_MainDetailsBody> createState() => _MainDetailsBodyState();
}

class _MainDetailsBodyState extends State<_MainDetailsBody> {
  int _formGeneration = 0;
  EditMainDetailsFormData? _trackedData;

  late final ValueNotifier<bool> _validFromAlwaysDisabled;

  @override
  void initState() {
    super.initState();
    _validFromAlwaysDisabled = ValueNotifier<bool>(false);
    _trackedData = widget.controller.data;
  }

  @override
  void didUpdateWidget(covariant _MainDetailsBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newData = widget.controller.data;
    if (!identical(_trackedData, newData)) {
      _trackedData = newData;
      _formGeneration++;
    }
  }

  @override
  void dispose() {
    _validFromAlwaysDisabled.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: KeyedSubtree(
        key: ValueKey<int>(_formGeneration),
        child: EmrTabBarVerticalViewResponsiveColumnsCard(
          title: '',
          children: _buildFields(context),
        ),
      ),
    );
  }

  List<Widget> _buildFields(BuildContext context) {
    final controller = widget.controller;
    final data = controller.data;

    final accountType = controller.account?.accountType ?? AccountTypeEnum.none;

    return [
      EmrTextFormField(
        labelText: context.l10n.accountName,
        binding: data.name,
        enabled: ValueNotifier(false),
        readOnly: ValueNotifier(true),
        autovalidateMode: AutovalidateMode.always,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            MainDetailsLayoutConstants.accountNameMaxLength,
          ),
        ],
        validator: (value) => Validators.join([
          Validators.required(value),
          Validators.length(
            value,
            max: MainDetailsLayoutConstants.accountNameMaxLength,
          ),
        ]),
      ),
      EmrPickerFormField(
        labelText: context.l10n.traderIndustryGroup,
        items: controller.industryGroups,
        itemTitleText: (item) => item,
        binding: data.traderIndustryGroup,
        autovalidateMode: accountType.isTraderIndustryGroupRequired
            ? AutovalidateMode.always
            : AutovalidateMode.onUserInteraction,
        validator: accountType.isTraderIndustryGroupRequired
            ? Validators.required
            : null,
      ),
      EmrPickerFormField(
        labelText: context.l10n.supplierIndustryGroup,
        items: controller.industryGroups,
        itemTitleText: (item) => item,
        binding: data.supplierIndustryGroup,
        validator: accountType.isSupplierIndustryGroupRequired
            ? Validators.required
            : null,
      ),
      EmrPickerFormField(
        labelText: context.l10n.sicCode,
        items: _searchSicCodes,
        itemTitleText: widget.controller.sicCodeDisplay,
        binding: data.sicCodeId,
      ),
      EmrDateFormField(
        labelText: context.l10n.celAgreementDate,
        binding: data.celAgreementStartDate,
      ),
      EmrDateFormField(
        labelText: context.l10n.celAgreementExpiryDate,
        binding: data.celAgreementExpiryDate,
      ),
      EmrDateFormField(
        labelText: context.l10n.cfcAgreementDate,
        binding: data.cfcAgreementStartDate,
      ),
      EmrDateFormField(
        labelText: context.l10n.cfcAgreementExpiryDate,
        binding: data.cfcAgreementExpiryDate,
      ),
      EmrPickerFormField(
        labelText: context.l10n.supplierVatGroup,
        items: controller.vatGroups,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.supplierVatGroupType,
      ),
      EmrPickerFormField(
        labelText: context.l10n.customerVatGroup,
        items: controller.vatGroups,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.customerVatGroupType,
      ),
      EmrPickerFormField(
        labelText: context.l10n.country,
        items: controller.countries,
        itemTitleText: (item) => getCountryTitle(item.value),
        binding: data.originatingCountry,
        validator: Validators.required,
      ),
      EmrPickerFormField(
        labelText: context.l10n.currencyCode,
        items: StandingDataService.currencyCodes,
        itemTitleText: (item) => item,
        binding: data.currencyId,
        validator: Validators.required,
      ),
      EmrPickerFormField<Yard>(
        labelText: context.l10n.preferredYard,
        items: _searchYards,
        itemTitleText: (item) => item.displayLabel,
        binding: data.preferredYard,
      ),
      EmrPickerFormField(
        labelText: context.l10n.preferredPaymentMethod,
        items: controller.paymentMethods,
        itemTitleText: (item) => item.key.displayString(context),
        binding: data.preferredPaymentMethod,
      ),
      EmrTextFormField(
        labelText: context.l10n.vihbNumber,
        binding: data.vihbNumber,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [
          LengthLimitingTextInputFormatter(
            MainDetailsLayoutConstants.vihbNumberMaxLength,
          ),
        ],
        validator: (value) => Validators.length(
          value,
          max: MainDetailsLayoutConstants.vihbNumberMaxLength,
        ),
      ),
      EmrTextFormField(
        labelText: context.l10n.amiceCompanyNumber,
        binding: data.amiceCompanyNumber,
        validator: Validators.decimal,
      ),
      EmrPickerFormField<Account>(
        labelText: context.l10n.parentAccount,
        items: _searchParentAccounts,
        itemTitleText: (item) => (item.name?.isNotEmpty ?? false)
            ? '${item.code} - ${item.name}'
            : item.code ?? '',
        binding: data.parentAccount,
      ),
      EmrPickerFormField(
        labelText: context.l10n.reportingFrequency,
        items: controller.reportingFrequencies,
        itemTitleText: (item) => item.reportingFrequencyDisplayString(context),
        binding: data.reportingFrequency,
      ),
      EmrPickerFormField(
        labelText: context.l10n.visitFrequency,
        items: controller.visitingFrequencies,
        itemTitleText: (item) => item.key.visitFrequencyDisplayString(context),
        binding: data.visitingFrequency,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.annualWtnSsaRequired,
        binding: data.annualWtnSsaRequired,
      ),
      _WtnSsaExpiryField(
        annualWtnSsaRequired: data.annualWtnSsaRequired,
        wtnSsaExpiryDate: data.wtnSsaExpiryDate,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.transformationEnabled,
        binding: data.transformationEnabled,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.marketingIndicatorEnabled,
        binding: data.marketIndicatorEnabled,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.stateReportingEnabled,
        binding: data.stateReportingEnabled,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.negativeInwardsEnabled,
        binding: data.negativeInwardsEnabled,
      ),

      EmrSwitchFormField(
        labelText: context.l10n.digitalWalletActivated,
        binding: data.isDigitalWalletActivated,
      ),
      EmrSwitchFormField(
        labelText: context.l10n.hasHazardousWasteConsignmentNote,
        binding: data.hasHazardousWasteConsignmentNote,
      ),

      _ValidDateSlot(
        validFrom: data.validFrom,
        label: context.l10n.validFrom,
        binding: data.validFrom,
        enabled: _validFromAlwaysDisabled,
      ),
      _ValidDateSlot(
        validFrom: data.validFrom,
        label: context.l10n.validTo,
        binding: data.validTo,
      ),
    ];
  }

  Future<List<Yard>> _searchYards(String query) {
    return widget.controller.coreApiService.referenceData.yards(query);
  }

  Future<List<String>> _searchSicCodes(String query) async {
    try {
      final nodes = await widget.controller.coreApiService.accountService
          .searchSicCodes(query);
      widget.controller.cacheSicCodeNodes(nodes);
      return nodes.map((node) => node.code).toList()..sort();
    } catch (_) {
      return [];
    }
  }

  Future<List<Account>> _searchParentAccounts(String query) async {
    final q = query.isNotEmpty ? query : '*';
    final result = await widget.controller.coreApiService.accountService
        .searchAccounts(query: q, territories: const []);
    final accounts = result.accounts.whereType<Account>().toList()
      ..sort((a, b) => (a.code ?? '').compareTo(b.code ?? ''));
    return accounts;
  }
}

class _WtnSsaExpiryField extends StatefulWidget {
  const _WtnSsaExpiryField({
    required this.annualWtnSsaRequired,
    required this.wtnSsaExpiryDate,
  });

  final ValueNotifier<bool> annualWtnSsaRequired;
  final ValueNotifier<DateTime?> wtnSsaExpiryDate;

  @override
  State<_WtnSsaExpiryField> createState() => _WtnSsaExpiryFieldState();
}

class _WtnSsaExpiryFieldState extends State<_WtnSsaExpiryField> {
  @override
  void initState() {
    super.initState();
    widget.annualWtnSsaRequired.addListener(_onRequiredChanged);
  }

  @override
  void didUpdateWidget(covariant _WtnSsaExpiryField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(
      oldWidget.annualWtnSsaRequired,
      widget.annualWtnSsaRequired,
    )) {
      oldWidget.annualWtnSsaRequired.removeListener(_onRequiredChanged);
      widget.annualWtnSsaRequired.addListener(_onRequiredChanged);
    }
  }

  @override
  void dispose() {
    widget.annualWtnSsaRequired.removeListener(_onRequiredChanged);
    super.dispose();
  }

  void _onRequiredChanged() {
    if (!widget.annualWtnSsaRequired.value &&
        widget.wtnSsaExpiryDate.value != null) {
      widget.wtnSsaExpiryDate.value = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return EmrDateFormField(
      labelText: context.l10n.wtnSsaExpiryDate,
      binding: widget.wtnSsaExpiryDate,
      enabled: widget.annualWtnSsaRequired,
    );
  }
}

class _ValidDateSlot extends StatelessWidget {
  const _ValidDateSlot({
    required this.validFrom,
    required this.label,
    required this.binding,
    this.enabled,
  });

  final ValueNotifier<DateTime?> validFrom;
  final String label;
  final ValueNotifier<DateTime?> binding;
  final ValueNotifier<bool>? enabled;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: validFrom,
      builder: (context, _) {
        if (validFrom.value == null) {
          return const SizedBox.shrink();
        }

        return EmrDateFormField(
          labelText: label,
          binding: binding,
          enabled: enabled,
        );
      },
    );
  }
}
