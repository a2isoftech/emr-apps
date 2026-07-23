import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/common/textbox.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';

class QuickQuotesCreateAccount extends StatefulWidget {
  const QuickQuotesCreateAccount({required this.controller, super.key});

  final QuickQuoteController controller;

  @override
  State<QuickQuotesCreateAccount> createState() =>
      _QuickQuotesCreateAccountState();
}

class _QuickQuotesCreateAccountState extends State<QuickQuotesCreateAccount> {
  late final TextEditingController textEditingController;
  final focusDoB = FocusNode();
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    focusDoB.addListener(onFocusChange);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    focusDoB.removeListener(onFocusChange);
    focusDoB.dispose();
    super.dispose();
  }

  Future<void> onFocusChange() async {
    if (focusDoB.hasFocus) {
      final dob = await datePicker(context);
      if (dob != null) {
        widget.controller.newAccountUpdateDateOfBirth(dob);
        textEditingController.text = widget.controller.activeTerritory
            .dateFormat(dob);
      }
      focusDoB.nextFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return StatefulBuilder(
      builder: (context, setState) => SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: Insets.gutter / 2,
                      bottom: Insets.gutter / 4,
                    ),
                    child: FormLabel(context.l10n.title),
                  ),
                  EmrPicker<String>(
                    items: (_) => Future.value(ElvConstants().titleItems),
                    itemTitleText: (e) {
                      return e;
                    },
                    initialValue:
                        widget.controller.baseState.newAccountState.title,
                    onItemSelected: widget.controller.newAccountUpdateTitle,
                    mode: EmrPickerMode.search,
                  ),
                  Textbox(
                    label: context.l10n.firstName,
                    maxLength: 30,
                    validator: (value) => (value ?? '').isEmpty
                        ? context.l10n.pleaseEnterAFirstName
                        : null,
                    value:
                        widget.controller.baseState.newAccountState.firstName ??
                        '',
                    onChanged: (value) =>
                        widget.controller.newAccountUpdateFirstName(value!),
                    mandatory: true,
                  ),
                  Textbox(
                    label: context.l10n.lastName,
                    maxLength: 30,
                    validator: (value) => (value ?? '').isEmpty
                        ? context.l10n.pleaseEnterLastName
                        : null,
                    value:
                        widget.controller.baseState.newAccountState.lastName ??
                        '',
                    onChanged: (value) =>
                        widget.controller.newAccountUpdateLastName(value!),
                    mandatory: true,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: Insets.gutter / 2,
                          bottom: Insets.gutter / 4,
                        ),
                        child: FormLabel('${context.l10n.dateOfBirth}*'),
                      ),
                      TextFormField(
                        focusNode: focusDoB,
                        key: const Key('dob'),
                        decoration: const InputDecoration(hintText: ''),
                        controller: textEditingController,
                        mouseCursor: SystemMouseCursors.click,
                        readOnly: true,
                        validator: (value) => (value ?? '').isEmpty
                            ? context.l10n.pleaseEnterADoB
                            : null,
                      ),
                    ],
                  ),
                  Textbox(
                    label: context.l10n.email,
                    maxLength: 120,
                    validator: Validators.email,
                    value:
                        widget.controller.baseState.newAccountState.email ?? '',
                    onChanged: (value) =>
                        widget.controller.newAccountUpdateEmail(value!),
                    mandatory: true,
                  ),
                  Textbox(
                    label: context.l10n.mobile,
                    maxLength: 30,
                    value:
                        widget.controller.baseState.newAccountState.mobile ??
                        '',
                    validator: Validators.mobileNumber,
                    onChanged: (value) =>
                        widget.controller.newAccountUpdateMobile(value!),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: Insets.gutter / 2,
                      bottom: Insets.gutter / 4,
                    ),
                    child: FormLabel(context.l10n.yardCode, mandatory: true),
                  ),
                  EmrPicker<Yard>(
                    items: (_) async {
                      return widget.controller.baseState.otherYards;
                    },
                    itemTitleText: (yard) => '${yard.name} (${yard.yardCode})',
                    initialValue:
                        widget.controller.baseState.newAccountState.yardCode,
                    onItemSelected: widget.controller.newAccountUpdateYardCode,
                    validator: Validators.required,
                    mode: EmrPickerMode.search,
                  ),
                  const SizedBox(height: Insets.gutter),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!widget
                          .controller
                          .baseState
                          .newAccountState
                          .isManualAddress) ...{
                        AddressLookup(
                          emitAddress: (addressId) {
                            widget.controller.newAccountUpdateAddress(
                              addressId!,
                            );
                            setState(() {});
                          },
                          onManualClick: () {
                            widget.controller.newAccountUpdateAddress(
                              Address(
                                line1: '',
                                postCode: '',
                                country: widget.controller.activeTerritory
                                    .getCountry(context),
                              ),
                            );
                            widget.controller.newAccountUpdateIsManualAddress(
                              isManualAddress: true,
                            );
                            setState(() {});
                          },
                          value: widget
                              .controller
                              .baseState
                              .newAccountState
                              .address
                              ?.shortAddress,
                          service: widget.controller.addressService,
                        ),
                      },
                      if (widget
                          .controller
                          .baseState
                          .newAccountState
                          .isManualAddress) ...[
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          value: widget
                              .controller
                              .baseState
                              .newAccountState
                              .isManualAddress,
                          title: Text(context.l10n.manualAddress),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (value) {
                            widget.controller.newAccountUpdateAddress(
                              Address(
                                line1: '',
                                postCode: '',
                                country: widget.controller.activeTerritory
                                    .getCountry(context),
                              ),
                            );
                            widget.controller.newAccountUpdateIsManualAddress(
                              isManualAddress: false,
                            );
                            setState(() {});
                          },
                        ),
                        const SizedBox(height: Insets.gutter),
                        Textbox(
                          label: context.l10n.addressLine1,
                          maxLength: 35,
                          value:
                              widget
                                  .controller
                                  .baseState
                                  .newAccountState
                                  .address
                                  ?.line1 ??
                              '',
                          validator: (value) {
                            if ((value ?? '').isEmpty) {
                              return context.l10n.errMsgPleaseEnterAddressLine1;
                            }
                            if (value!.length < 3 || value.length > 35) {
                              return context.l10n.errMsgAddressLine1Length;
                            }
                            return null;
                          },
                          onChanged: (value) =>
                              widget
                                      .controller
                                      .baseState
                                      .newAccountState
                                      .address
                                      ?.line1 =
                                  value ?? '',
                        ),
                        const SizedBox(height: Insets.gutter),
                        Textbox(
                          label: context.l10n.addressLine2Optional,
                          maxLength: 35,
                          value:
                              widget
                                  .controller
                                  .baseState
                                  .newAccountState
                                  .address
                                  ?.line2 ??
                              '',
                          validator: (value) {
                            if ((value ?? '').isEmpty) return null;

                            if (value!.length < 3 || value.length > 35) {
                              return context.l10n.errMsgAddressLine2Length;
                            }
                            return null;
                          },
                          onChanged: (value) =>
                              widget
                                      .controller
                                      .baseState
                                      .newAccountState
                                      .address
                                      ?.line2 =
                                  value ?? '',
                        ),
                        const SizedBox(height: Insets.gutter),
                        Textbox(
                          label: context.l10n.townOrCity,
                          maxLength: 35,
                          value:
                              widget
                                  .controller
                                  .baseState
                                  .newAccountState
                                  .address
                                  ?.line4 ??
                              '',
                          validator: (value) {
                            if ((value ?? '').isEmpty) {
                              return context.l10n.pleaseEnterCity;
                            }
                            if (value!.length < 3 || value.length > 35) {
                              return context.l10n.errMsgCityLength;
                            }
                            return null;
                          },
                          onChanged: (value) =>
                              widget
                                      .controller
                                      .baseState
                                      .newAccountState
                                      .address
                                      ?.line4 =
                                  value ?? '',
                        ),
                        const SizedBox(height: Insets.gutter),
                        Textbox(
                          label: context.l10n.country,
                          maxLength: 35,
                          value:
                              widget
                                  .controller
                                  .baseState
                                  .newAccountState
                                  .address
                                  ?.country ??
                              '',
                          validator: (value) {
                            return null;
                          },
                          onChanged: (value) =>
                              widget
                                      .controller
                                      .baseState
                                      .newAccountState
                                      .address
                                      ?.country =
                                  value ?? '',
                        ),
                        const SizedBox(height: Insets.gutter),
                        Textbox(
                          label: context.l10n.postCode,
                          maxLength: 12,
                          value:
                              widget
                                  .controller
                                  .baseState
                                  .newAccountState
                                  .address
                                  ?.postCode ??
                              '',
                          validator: (value) {
                            if ((value ?? '').isEmpty) {
                              return context.l10n.pleaseEnterPostcode;
                            }
                            if (value!.length < 3 || value.length > 12) {
                              return context.l10n.errMsgPostcodeLength;
                            }
                            return null;
                          },
                          onChanged: (value) =>
                              widget
                                      .controller
                                      .baseState
                                      .newAccountState
                                      .address
                                      ?.postCode =
                                  value ?? '',
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: Insets.gutter),
                ],
              ),
            ),
            Text(
              context.l10n.marketingPreferences,
              style: EmrOneConstants.kTinyHeadingTextStyle,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.withAlpha(26),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Insets.gutter * 2,
                  vertical: Insets.gutter,
                ),
                child: Column(
                  children: [
                    TitledCheckbox(
                      label:
                          '${context.l10n.allowContactBy}'
                          ' ${context.l10n.email}',
                      value:
                          widget.controller.baseState.newAccountState.canEmail,
                      onChanged: ({required bool value}) {
                        widget.controller.newAccountUpdateCanEmail(
                          canEmail: value,
                        );
                        setState(() {});
                      },
                    ),
                    TitledCheckbox(
                      label:
                          '${context.l10n.allowContactBy} ${context.l10n.post}',
                      value:
                          widget.controller.baseState.newAccountState.canPost,
                      onChanged: ({required bool value}) {
                        widget.controller.newAccountUpdateCanPost(
                          canPost: value,
                        );
                        setState(() {});
                      },
                    ),
                    TitledCheckbox(
                      label:
                          '${context.l10n.allowContactBy} ${context.l10n.sms}',
                      value: widget.controller.baseState.newAccountState.canSms,
                      onChanged: ({required bool value}) {
                        widget.controller.newAccountUpdateCanSms(canSms: value);
                        setState(() {});
                      },
                    ),
                    TitledCheckbox(
                      label:
                          '${context.l10n.allowContactBy}'
                          ' ${context.l10n.phone}',
                      value:
                          widget.controller.baseState.newAccountState.canPhone,
                      onChanged: ({required bool value}) {
                        widget.controller.newAccountUpdateCanPhone(
                          canPhone: value,
                        );
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter * 2),
              child: OutlinedButton(
                onPressed: () {
                  if ((formKey.currentState?.validate() ?? false) &&
                      widget.controller.baseState.newAccountState.dateOfBirth !=
                          null) {
                    EmrDialog.busy(
                      context,
                      titleText: context.l10n.pleaseWaitSavingAccountDetails,
                    );
                    widget.controller
                        .isValidPostcode(
                          widget
                              .controller
                              .baseState
                              .newAccountState
                              .address!
                              .postCode,
                        )
                        .then((validPostcode) {
                          if (!validPostcode) {
                            if (context.mounted) {
                              context.pop();
                              EmrDialog.ok(
                                context,
                                titleText: context.l10n.errInvalidPostcode,
                                contentText: context.l10n.errPostcodeIsNotValid,
                              );
                            }
                            return;
                          }
                          if (context.mounted) {
                            widget.controller
                                .newAccountCreateAccount(context: context)
                                .then((value) {
                                  if (context.mounted) {
                                    context.pop(); // Dialog
                                    context.pop(); // Account flyout
                                  }
                                });
                          }
                        });
                  }
                },
                child: Text(context.l10n.create),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<DateTime?> datePicker(BuildContext context) {
    return showDatePicker(
      context: context,
      initialDate:
          widget.controller.baseState.newAccountState.dateOfBirth ??
          DateTime.now().subtract(const Duration(days: 365 * 30)),
      firstDate: DateTime(1930),
      lastDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
      cancelText: context.l10n.cancel,
      currentDate: DateTime.now(),
      locale: Locale(
        'en',
        widget.controller.activeTerritory.addressLookupCountryCode(),
      ),
      initialEntryMode: DatePickerEntryMode.input,
    );
  }
}
