import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ElvQuoteDetail extends EmrTabBarVerticalViewCard {
  const ElvQuoteDetail({required super.title, required super.height, super.key})
    : super(child: const ElvQuoteDetailsWidget());
}

class ElvQuoteDetailsWidget extends StatefulWidget {
  const ElvQuoteDetailsWidget({super.key});

  @override
  State<ElvQuoteDetailsWidget> createState() => _ElvQuoteDetailsWidgetState();
}

class _ElvQuoteDetailsWidgetState extends State<ElvQuoteDetailsWidget> {
  late final QuickQuotesNewController controller;
  late final ValueNotifier<AccountModel?> _accountNotifier;
  late final ValueNotifier<AccountLocation?> _locationNotifier;
  late final ValueNotifier<Yard?> _yardNotifier;
  late final ValueNotifier<String> _postCodeText;
  late final ValueNotifier<String> _firstNameText;
  late final ValueNotifier<String> _lastNameText;
  late final ValueNotifier<String> _emailAddressText;
  late final ValueNotifier<String> _phoneNumberText;
  late final ValueNotifier<String?> _leadSourceText;
  late final FocusNode _focusNode;
  late final GlobalKey<FormState> _formKey;

  late final ValueNotifier<bool> _enableLocationCode;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<QuickQuotesNewController>(context, listen: false);
    _accountNotifier = ValueNotifier(null);
    _accountNotifier.addListener(_changeAccount);
    _locationNotifier = ValueNotifier(null);
    _yardNotifier = ValueNotifier(null);
    _postCodeText = ValueNotifier('');
    _firstNameText = ValueNotifier('');
    _lastNameText = ValueNotifier('');
    _emailAddressText = ValueNotifier('');
    _phoneNumberText = ValueNotifier('');
    _leadSourceText = ValueNotifier(null);
    _focusNode = FocusNode();
    _focusNode.addListener(_validatePostCode);
    _formKey = GlobalKey<FormState>();
    _enableLocationCode = ValueNotifier(false);
  }

  void _changeAccount() {
    final account = _accountNotifier.value;

    // Reset everything if no account selected
    if (account == null) {
      _resetAccountState();
      return;
    }

    final location = account.locations.firstOrNull;

    controller.state
      ..selectedAccount = account
      ..selectionLocation = location;

    _locationNotifier.value = location;
    _enableLocationCode.value = account.locations.isNotEmpty;

    _postCodeText.value = location?.address.postCode ?? '';

    final nameParts = _splitName(account.name);

    _firstNameText.value = nameParts.first;
    _lastNameText.value = nameParts.last;

    _emailAddressText.value = account.email ?? '';
    _phoneNumberText.value = account.mobilePhone ?? '';
  }

  void _resetAccountState() {
    controller.state
      ..selectedAccount = null
      ..selectionLocation = null;

    _locationNotifier.value = null;
    _enableLocationCode.value = false;

    _firstNameText.value = '';
    _lastNameText.value = '';
    _emailAddressText.value = '';
    _phoneNumberText.value = '';
    _postCodeText.value = '';
  }

  Future<void> _validatePostCode() async {
    if (_focusNode.hasFocus) return;

    final postCode = _postCodeText.value.trim();
    if (postCode.isEmpty) return;

    await isValidPostcode(postCode, context);
  }

  ({String first, String last}) _splitName(String? name) {
    if (name == null || name.trim().isEmpty) {
      return (first: '', last: '');
    }

    final parts = name.trim().split(RegExp(r'\s+'));

    return (
      first: parts.first,
      last: parts.length > 1 ? parts.sublist(1).join(' ') : '',
    );
  }

  @override
  void dispose() {
    _accountNotifier.removeListener(_changeAccount);
    _accountNotifier.dispose();
    _locationNotifier.dispose();
    _yardNotifier.dispose();
    _focusNode.removeListener(_validatePostCode);
    _focusNode.dispose();
    _postCodeText.dispose();
    _firstNameText.dispose();
    _lastNameText.dispose();
    _emailAddressText.dispose();
    _phoneNumberText.dispose();
    _enableLocationCode.dispose();
    _leadSourceText.dispose();
    _formKey.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EmrForm(
      key: _formKey,
      builder: (context) {
        return FocusTraversalGroup(
          policy: OrderedTraversalPolicy(),
          child: Wrap(
            spacing: Insets.gutter,
            children: [
              SizedBox(
                width: 280,
                child: EmrPickerFormField<AccountModel>(
                  items: (searchText) =>
                      controller.accountSearch(searchText: searchText),
                  itemTitleText: getAccountDetail,
                  binding: _accountNotifier,
                  labelText: context.l10n.quotingFor,
                  validator: (value) =>
                      Validators.join([Validators.required(value)]),
                ),
              ),
              SizedBox(
                width: 280,
                child: EmrPickerFormField<AccountLocation>(
                  items: (searchText) =>
                      Future.value(_accountNotifier.value?.locations ?? []),
                  itemTitleText: getLocationDetail,
                  itemSubtitleText: (location) =>
                      location.address.getShortAddress,
                  binding: _locationNotifier,
                  labelText: context.l10n.location,
                  enabled: _enableLocationCode,
                  validator: (value) =>
                      Validators.join([Validators.required(value)]),
                ),
              ),
              SizedBox(
                width: 280,
                child: EmrTextFormField(
                  binding: _postCodeText,
                  hintText: context.l10n.postCode,
                  labelText: context.l10n.postCode,
                  focusNode: _focusNode,
                  validator: (value) => Validators.join([
                    Validators.required(value),
                    Validators.ukPostcodeFormat(value),
                  ]),
                ),
              ),
              SizedBox(
                width: 280,
                child: EmrPickerFormField<Yard>(
                  items: (searchText) =>
                      Future.value(controller.state.otherYards),
                  itemTitleText: (yard) => yard.yardCode,
                  itemSubtitleText: (yard) => yard.name,
                  binding: _yardNotifier,
                  labelText: context.l10n.yard,
                  validator: (value) =>
                      Validators.join([Validators.required(value)]),
                ),
              ),
              SizedBox(
                width: 280,
                child: EmrTextFormField(
                  binding: _firstNameText,
                  hintText: context.l10n.firstName,
                  labelText: context.l10n.firstName,
                  validator: (value) => Validators.join([
                    Validators.required(
                      value,
                      () => context.l10n.msgEnterFirstName,
                    ),
                    Validators.length(value, min: 2),
                  ]),
                ),
              ),
              SizedBox(
                width: 280,
                child: EmrTextFormField(
                  binding: _lastNameText,
                  hintText: context.l10n.lastName,
                  labelText: context.l10n.lastName,
                  validator: (value) => Validators.length(value, min: 2),
                ),
              ),
              SizedBox(
                width: 280,
                child: EmrTextFormField(
                  binding: _emailAddressText,
                  hintText: context.l10n.email,
                  labelText: context.l10n.emailAddress,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) =>
                      Validators.join([Validators.email(value)]),
                ),
              ),
              SizedBox(
                width: 280,
                child: EmrTextFormField(
                  binding: _phoneNumberText,
                  hintText: context.l10n.phoneNo,
                  labelText: context.l10n.phoneNo,
                  keyboardType: TextInputType.phone,
                  validator: (value) =>
                      Validators.join([Validators.mobileNumber(value)]),
                ),
              ),

              SizedBox(
                width: 280,
                child: EmrPickerFormField(
                  items: (val) async => controller.state.leadSources.entries
                      .map((x) => x.value)
                      .toList(),
                  itemTitleText: (val) => val,
                  binding: _leadSourceText,
                  labelText: context.l10n.leadSource,
                ),
              ),

              SizedBox(
                width: 280,
                child: EmrTextFormField(
                  binding: ValueNotifier(''),
                  hintText: context.l10n.notes,
                  labelText: context.l10n.notes,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String getAccountDetail(AccountModel account) {
    return '${account.name} ${account.code}';
  }

  String getLocationDetail(AccountLocation location) {
    return '${location.name} ${location.code}';
  }

  Future<bool> isValidPostcode(String postcode, BuildContext context) async {
    final postCodeValid = await controller.isValidPostcode(postcode);

    if (!postCodeValid && context.mounted) {
      await EmrDialog.ok(
        context,
        titleText: context.l10n.validationFailed,
        contentText: context.l10n.invalidPostcode,
      );
    }
    return postCodeValid;
  }
}
