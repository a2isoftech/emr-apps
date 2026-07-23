import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/yards/yard_form_data.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:flutter/material.dart';

class PaymentYardCard extends EmrTabBarVerticalViewCard {
  PaymentYardCard({
    required BuildContext context,
    required super.title,
    required YardFormData model,
    super.key,
  }) : super(
         child: Column(
           children: [
             Row(
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       EmrPickerFormField<PaymentMethod>(
                         validator: Validators.required,
                         labelText: 'Default Payment Method',
                         binding: model.defaultPaymentMethod,
                         items: (searchText) => context.coreApi.referenceData
                             .getAvailablePaymentMethods(),
                         itemTitleText: (item) => item.name,
                         itemSubtitleText: (item) => item.name,
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 const Expanded(child: Column()),
               ],
             ),
             const Divider(),

             AtmSettings(model: model),
             const Divider(),

             AutoChequeSettings(model: model),
             const Divider(),

             AutoChequeWithEncashmentCashSettings(model: model),
             const Divider(),

             /// Auto Cheque With Encashment ATM Payment Method
             AutoChequeWithEncashmentAtmSettings(model: model),
             const Divider(),

             /// Fasterpay Payment Method
             FasterpaySettings(model: model),
             const Divider(),

             /// Overnight Fasterpay Payment Method
             OvernightFasterpaySettings(model: model),
             const Divider(),

             /// Cash Payment Method
             CashSettings(model: model),
             const Divider(),

             /// Secore Payment Method
             SecoreSettings(model: model),
             const Divider(),

             /// Split Payment Method
             SplitPaymentSettings(model: model),
             const Divider(),

             /// Manual Cheque Payment Method
             ManualChequeSettings(model: model),
             const Divider(),

             /// Digital Wallet with ATM Payment Method
             DigitalWalletAtmSettings(model: model),
             const Divider(),

             /// Digital Wallet with Cash Payment Method
             DigitalWalletCashSettings(model: model),
           ],
         ),
       );
}

class ManualChequeSettings extends StatelessWidget {
  const ManualChequeSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.manualChequeEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Manual Cheque Payment Method'),
                    value: model.manualChequeEnabled.value,
                    onChanged: (bool? value) {
                      model.manualChequeEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: EmrTextFormField(
                  labelText: context.l10n.maxUpperLimit,
                  binding: model.manualChequeMaxUpperLimit,
                  enabled: model.manualChequeEnabled,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: Insets.gutter),
        const Spacer(),
      ],
    );
  }
}

class SecoreSettings extends StatelessWidget {
  const SecoreSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.secorePrepaidEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Secore Payment Method'),
                    value: model.secorePrepaidEnabled.value,
                    onChanged: (bool? value) {
                      model.secorePrepaidEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Row(
                  children: [
                    Expanded(
                      child: EmrTextFormField(
                        labelText: 'Commission Percent',
                        binding: model.secorePrepaidCommissionPercent,
                        enabled: model.secorePrepaidEnabled,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    Expanded(
                      child: EmrTextFormField(
                        labelText: context.l10n.maxUpperLimit,
                        binding: model.secoreMaxUpperLimit,
                        enabled: model.secorePrepaidEnabled,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SplitPaymentSettings extends StatelessWidget {
  const SplitPaymentSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.splitPaymentEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Split Payment Method'),
                    value: model.splitPaymentEnabled.value,
                    onChanged: (bool? value) {
                      model.splitPaymentEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: EmrTextFormField(
                  labelText: context.l10n.maxUpperLimit,
                  binding: model.splitPaymentMaxUpperLimit,
                  enabled: model.splitPaymentEnabled,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: Insets.gutter),
        const Spacer(),
      ],
    );
  }
}

class OvernightFasterpaySettings extends StatelessWidget {
  const OvernightFasterpaySettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.overnightFasterpayEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Overnight Fasterpay Payment Method'),
                    value: model.overnightFasterpayEnabled.value,
                    onChanged: (bool? value) {
                      model.overnightFasterpayEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Row(
                  children: [
                    Expanded(
                      child: EmrTextFormField(
                        labelText: 'Bank Code',
                        binding: model.overnightfasterpayBankCode,
                        enabled: model.overnightFasterpayEnabled,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    Expanded(
                      child: EmrTextFormField(
                        labelText: context.l10n.maxUpperLimit,
                        binding: model.overnightFasterpayMaxUpperLimit,
                        enabled: model.overnightFasterpayEnabled,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CashSettings extends StatelessWidget {
  const CashSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.cashEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Cash Payment Method'),
                    value: model.cashEnabled.value,
                    onChanged: (bool? value) {
                      model.cashEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Row(
                  children: [
                    Expanded(
                      child: EmrTextFormField(
                        labelText: 'Number Of Remittances To Print',
                        binding: model.cashNumberOfRemittancesToPrint,
                        enabled: model.cashEnabled,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    Expanded(
                      child: EmrTextFormField(
                        labelText: context.l10n.maxUpperLimit,
                        binding: model.cashMaxUpperLimit,
                        enabled: model.cashEnabled,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AutoChequeSettings extends StatelessWidget {
  const AutoChequeSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.chequeEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Auto Cheque Payment Method'),
                    value: model.chequeEnabled.value,
                    onChanged: (bool? value) {
                      model.chequeEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: EmrTextFormField(
                            labelText: 'Logo Path',
                            binding: model.chequeLogoPath,
                            enabled: model.chequeEnabled,
                          ),
                        ),
                        const SizedBox(width: Insets.gutter),
                        Expanded(
                          child: EmrTextFormField(
                            labelText: context.l10n.maxUpperLimit,
                            binding: model.autoChequeMaxUpperLimit,
                            enabled: model.chequeEnabled,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: EmrTextFormField(
                            labelText: 'Bank Code',
                            binding: model.chequeBankCode,
                          ),
                        ),
                        const SizedBox(width: Insets.gutter),
                        const Spacer(),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: EmrSwitchFormField(
                            labelText: 'Enforce Identification',
                            binding: model.chequeEnforceId,
                            enabled: model.chequeEnabled,
                          ),
                        ),
                        const SizedBox(width: Insets.gutter),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AtmSettings extends StatelessWidget {
  const AtmSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.atmEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('ATM Payment Method'),
                    value: model.atmEnabled.value,
                    onChanged: (bool? value) {
                      model.atmEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Row(
                  children: [
                    Expanded(
                      child: EmrTextFormField(
                        labelText: 'Rounding Value',
                        binding: model.atmRoundingValue,
                        enabled: model.atmEnabled,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    Expanded(
                      child: EmrTextFormField(
                        labelText: context.l10n.maxUpperLimit,
                        binding: model.atmMaxUpperLimit,
                        enabled: model.atmEnabled,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Row(
                  children: [
                    Expanded(
                      child: EmrPickerFormField<RoundingType>(
                        validator: Validators.required,
                        enabled: model.atmEnabled,
                        labelText: 'Rounding Type',
                        binding: model.atmRoundingType,
                        items: (searchText) => context.coreApi.referenceData
                            .getAvailableRoundingType(),
                        itemTitleText: (item) => item.name,
                        itemSubtitleText: (item) => item.name,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FasterpaySettings extends StatelessWidget {
  const FasterpaySettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: model.fasterpayEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Fasterpay Payment Method'),
                    value: model.fasterpayEnabled.value,
                    onChanged: (bool? value) {
                      model.fasterpayEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: EmrTextFormField(
                        labelText: 'Flat Fee Value',
                        binding: model.fasterpayFlatFeeValue,
                        enabled: model.fasterpayEnabled,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    Expanded(
                      child: EmrTextFormField(
                        labelText: context.l10n.maxUpperLimit,
                        binding: model.fasterpayMaxUpperLimit,
                        enabled: model.fasterpayEnabled,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Row(
                  children: [
                    Expanded(
                      child: EmrTextFormField(
                        labelText: 'Bank Code',
                        binding: model.fasterpayBankCode,
                      ),
                    ),
                    const SizedBox(width: Insets.gutter),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DigitalWalletCashSettings extends StatelessWidget {
  const DigitalWalletCashSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: model.digitalWalletCashEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      'Digital Wallet with Cash Payment Method',
                    ),
                    value: model.digitalWalletCashEnabled.value,
                    onChanged: (bool? value) {
                      model.digitalWalletCashEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Column(
                  children: [
                    Wrap(
                      spacing: Insets.gutter,
                      runSpacing: Insets.gutter,
                      children: [
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Rounding Value',
                            binding: model.digitalWalletCashRoundingValue,
                            enabled: model.digitalWalletCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrPickerFormField<RoundingType>(
                            validator: Validators.required,
                            enabled: model.digitalWalletCashEnabled,
                            labelText: 'Rounding Type',
                            binding: model.digitalWalletCashRoundingType,
                            items: (searchText) => context.coreApi.referenceData
                                .getAvailableRoundingType(),
                            itemTitleText: (item) => item.name,
                            itemSubtitleText: (item) => item.name,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Commission Percent',
                            binding: model.digitalWalletCashCommissionPercent,
                            enabled: model.digitalWalletCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: context.l10n.maxUpperLimit,
                            binding: model.digitalWalletCashMaxUpperLimit,
                            enabled: model.digitalWalletCashEnabled,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DigitalWalletAtmSettings extends StatelessWidget {
  const DigitalWalletAtmSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: model.digitalWalletAtmEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Digital Wallet with ATM Payment Method'),
                    value: model.digitalWalletAtmEnabled.value,
                    onChanged: (bool? value) {
                      model.digitalWalletAtmEnabled.value = value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Column(
                  children: [
                    Wrap(
                      spacing: Insets.gutter,
                      runSpacing: Insets.gutter,
                      children: [
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Rounding Value',
                            binding: model.digitalWalletAtmRoundingValue,
                            enabled: model.digitalWalletAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrPickerFormField<RoundingType>(
                            validator: Validators.required,
                            enabled: model.digitalWalletAtmEnabled,
                            labelText: 'Rounding Type',
                            binding: model.digitalWalletAtmRoundingType,
                            items: (searchText) => context.coreApi.referenceData
                                .getAvailableRoundingType(),
                            itemTitleText: (item) => item.name,
                            itemSubtitleText: (item) => item.name,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Commission Percent',
                            binding: model.digitalWalletAtmCommissionPercent,
                            enabled: model.digitalWalletAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: context.l10n.maxUpperLimit,
                            binding: model.digitalWalletAtmMaxUpperLimit,
                            enabled: model.digitalWalletAtmEnabled,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AutoChequeWithEncashmentAtmSettings extends StatelessWidget {
  const AutoChequeWithEncashmentAtmSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: model.autoChequeEncashmentAtmEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      'Auto Cheque With Encashment'
                      ' ATM Payment Method',
                    ),
                    value: model.autoChequeEncashmentAtmEnabled.value,
                    onChanged: (bool? value) {
                      model.autoChequeEncashmentAtmEnabled.value =
                          value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Column(
                  children: [
                    Wrap(
                      spacing: Insets.gutter,
                      runSpacing: Insets.gutter,
                      children: [
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Agent',
                            binding: model.autoChequeEncashmentAtmAgent,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Commission Percent',
                            binding:
                                model.autoChequeEncashmentAtmCommissionPercent,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Min Commission',
                            binding: model.autoChequeEncashmentAtmMinCommission,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Min Denomination',
                            binding:
                                model.autoChequeEncashmentAtmMinDenomination,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Flat Fee Threshold',
                            binding:
                                model.autoChequeEncashmentAtmFlatFeeThreshold,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Flat Fee Value',
                            binding: model.autoChequeEncashmentAtmFlatFeeValue,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Logo Path',
                            binding: model.autoChequeEncashmentAtmLogoPath,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrSwitchFormField(
                            labelText: 'Enforce Identification',
                            binding: model
                                .autoChequeEncashmentAtmEnforceIdentification,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Bank Code',
                            binding: model.autoChequeEncashmentAtmBankCode,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: context.l10n.maxUpperLimit,
                            binding: model.autoChequeEncashmentAtmMaxUpperLimit,
                            enabled: model.autoChequeEncashmentAtmEnabled,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AutoChequeWithEncashmentCashSettings extends StatelessWidget {
  const AutoChequeWithEncashmentCashSettings({required this.model, super.key});

  final YardFormData model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: model.autoChequeEncashmentCashEnabled,
                builder: (context, value, child) {
                  return SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      'Auto Cheque With Encashment'
                      ' Cash Payment Method',
                    ),
                    value: model.autoChequeEncashmentCashEnabled.value,
                    onChanged: (bool? value) {
                      model.autoChequeEncashmentCashEnabled.value =
                          value ?? false;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter * 5),
                child: Column(
                  children: [
                    Wrap(
                      spacing: Insets.gutter,
                      runSpacing: Insets.gutter,
                      children: [
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Agent',
                            binding: model.autoChequeEncashmentCashAgent,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Commission Percent',
                            binding:
                                model.autoChequeEncashmentCashCommissionPercent,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Min Commission',
                            binding:
                                model.autoChequeEncashmentCashMinCommission,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Min Denomination',
                            binding:
                                model.autoChequeEncashmentCashMinDenomination,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Flat Fee Threshold',
                            binding:
                                model.autoChequeEncashmentCashFlatFeeThreshold,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Flat Fee Value',
                            binding: model.autoChequeEncashmentCashFlatFeeValue,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Logo Path',
                            binding: model.autoChequeEncashmentCashLogoPath,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrSwitchFormField(
                            labelText: 'Enforce Identification',
                            binding: model
                                .autoChequeEncashmentCashEnforceIdentification,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: 'Bank Code',
                            binding: model.autoChequeEncashmentCashBankCode,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: EmrTextFormField(
                            labelText: context.l10n.maxUpperLimit,
                            binding:
                                model.autoChequeEncashmentCashMaxUpperLimit,
                            enabled: model.autoChequeEncashmentCashEnabled,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
