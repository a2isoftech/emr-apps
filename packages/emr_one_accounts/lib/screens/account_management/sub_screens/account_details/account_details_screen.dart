import 'dart:async';

import 'package:emr_core_api/extensions/account_type_enum_extension.dart';
import 'package:emr_core_api/extensions/extensions.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/account_team_access_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/bank_accounts_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/contacts_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/locations_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/loyalty_cards_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/product_ewc_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/publications_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/account_details/widgets/responsibilities_details.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_team_access/manage_team_access.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide AccountSettings;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({required this.encodedAccountId, super.key});

  final String? encodedAccountId;

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  Future<(Account?, String?, String?)>? _accountFuture;
  AccountDetailsController? _controller;

  void _loadAccount() {
    final accountId = widget.encodedAccountId != null
        ? Uri.decodeComponent(widget.encodedAccountId!)
        : null;
    if (accountId != null && accountId.isNotEmpty && _controller != null) {
      _accountFuture = _controller!.getAccount(accountId).then((result) {
        if (mounted && result.$1 != null) {
          _controller!.currentAccount.value = result.$1;
        }
        return result;
      });
    }
  }

  void _onControllerChanged() {
    setState(_loadAccount);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final controller = context.read<AccountDetailsController>();
    if (_controller != controller) {
      _controller?.removeListener(_onControllerChanged);
      _controller = controller;
      _controller!.addListener(_onControllerChanged);
      _loadAccount();
    }
  }

  final _mainDetailsFormKey = GlobalKey<FormState>();
  final _headOfficeDetailsFormKey = GlobalKey<FormState>();
  final _licenceExemptionFormKey = GlobalKey<FormState>();

  String? _loadedMainDetailsAccountId;
  String? _loadedHeadOfficeAccountId;
  String? _loadedLicenceExemptionAccountId;

  bool _isSaving = false;
  bool _isResetting = false;

  final ValueNotifier<bool> _hasChanged = ValueNotifier(false);

  EditMainDetailsFormData? _mainFormData;
  EditHeadOfficeDetailsFormData? _hoFormData;
  EditLicenceExemptionFormData? _leFormData;

  void _onFieldChanged() {
    if (!_isResetting) _hasChanged.value = true;
  }

  //Future<(Account?, String?, String?)>? _accountFuture;
  Future<void>? _mainDetailsReferenceDataFuture;

  @override
  void dispose() {
    _controller?.removeListener(_onControllerChanged);
    _mainFormData?.removeAllListeners(_onFieldChanged);
    _hoFormData?.removeAllListeners(_onFieldChanged);
    _leFormData?.removeAllListeners(_onFieldChanged);
    _hasChanged.dispose();
    super.dispose();
  }

  Future<void> _prepareMainDetailsAccount(
    Account account,
    ManageMainDetailsController controller,
  ) async {
    if (_loadedMainDetailsAccountId == account.id) {
      return;
    }

    _mainFormData?.removeAllListeners(_onFieldChanged);
    controller.setAccount(account);
    await controller.loadReferenceData();
    _loadedMainDetailsAccountId = account.id;
    _mainFormData = controller.data;
    _mainFormData?.addAllListeners(_onFieldChanged);
  }

  void _setHeadOfficeAccount(
    Account account,
    ManageHeadOfficeDetailsController controller,
  ) {
    if (_loadedHeadOfficeAccountId == account.id) {
      return;
    }

    _hoFormData?.removeAllListeners(_onFieldChanged);
    controller.setAccount(account);
    _loadedHeadOfficeAccountId = account.id;
    _hoFormData = controller.data;
    _hoFormData?.addAllListeners(_onFieldChanged);
  }

  void _setLicenceExemptionAccount(
    Account account,
    ManageLicenceExemptionController controller,
  ) {
    if (_loadedLicenceExemptionAccountId == account.id) {
      return;
    }

    _leFormData?.removeAllListeners(_onFieldChanged);
    controller.setAccount(account);
    _loadedLicenceExemptionAccountId = account.id;
    _leFormData = controller.data;
    _leFormData?.addAllListeners(_onFieldChanged);
  }

  @override
  Widget build(BuildContext context) {
    final accountId = widget.encodedAccountId != null
        ? Uri.decodeComponent(widget.encodedAccountId!)
        : null;
    if (accountId == null || accountId.isEmpty) {
      return SizedBox(
        width: context.screenWidth(),
        height: context.screenHeight(),
        child: Text(context.l10n.accountNotFound),
      );
    }

    return FutureBuilder<(Account?, String?, String?)>(
      future: _accountFuture,
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<(Account?, String?, String?)> snapshot,
          ) {
            if (snapshot.hasData) {
              if (snapshot.data?.$2 ==
                  AccountAccessConstants.accountNotAuthorized) {
                return Center(
                  child: Text(context.l10n.doNotHaveAccessToAccount),
                );
              }
              if (snapshot.data?.$1 == null &&
                  _controller!.currentAccount.value == null) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.search_off, size: 128),
                      Text(
                        context.l10n.accountDetailsNotFound(
                          accountId.split('/').last,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                final account =
                    _controller!.currentAccount.value ?? snapshot.data?.$1;
                final mainDetailsController = context
                    .read<ManageMainDetailsController>();
                final headOfficeDetailsController = context
                    .read<ManageHeadOfficeDetailsController>();
                final licenceExemptionController = context
                    .read<ManageLicenceExemptionController>();
                _setHeadOfficeAccount(account!, headOfficeDetailsController);
                _setLicenceExemptionAccount(
                  account,
                  licenceExemptionController,
                );

                final mainDetailsReadyFuture =
                    _mainDetailsReferenceDataFuture ??=
                        _prepareMainDetailsAccount(
                          account,
                          mainDetailsController,
                        );

                return FutureBuilder<void>(
                  future: mainDetailsReadyFuture,
                  builder: (context, mainDetailsReadySnapshot) {
                    if (mainDetailsReadySnapshot.connectionState !=
                        ConnectionState.done) {
                      return processingIndicator();
                    }

                    return _buildAccountDetailsContent(
                      context: context,
                      controller: _controller!,
                      account: account,
                      mainDetailsController: mainDetailsController,
                      headOfficeDetailsController: headOfficeDetailsController,
                      licenceExemptionController: licenceExemptionController,
                    );
                  },
                );
              }
            } else {
              return processingIndicator();
            }
          },
    );
  }

  Widget _buildAccountDetailsContent({
    required BuildContext context,
    required AccountDetailsController controller,
    required Account account,
    required ManageMainDetailsController mainDetailsController,
    required ManageHeadOfficeDetailsController headOfficeDetailsController,
    required ManageLicenceExemptionController licenceExemptionController,
  }) {
    final children = [
      MainDetails(
        controller: mainDetailsController,
        formKey: _mainDetailsFormKey,
        title: context.l10n.mainDetails,
      ),
      HeadOfficeDetails(
        title: context.l10n.headOfficeDetails,
        controller: headOfficeDetailsController,
        formKey: _headOfficeDetailsFormKey,
      ),
      LicenceExemptionDetails(
        context: context,
        controller: licenceExemptionController,
        formKey: _licenceExemptionFormKey,
      ),
      ContactDetails(
        context,
        title: context.l10n.contact,
        account: account,
        manageContactController: context.read<ManageContactController>(),
        manageContactFormKey: GlobalKey<FormState>(),
      ),
      LocationDetails(
        context,
        manageLocationController: context.read<ManageLocationController>(),
        accountService: context.coreApi.accountService,
        manageLocationFormKey: GlobalKey<FormState>(),
        account: account,
        title: context.l10n.location,
      ),
      PublicationDetails(
        context,
        managePublicationController: context
            .read<ManagePublicationsController>(),
        managePublicationFormKey: GlobalKey<FormState>(),
        account: account,
        title: context.l10n.publications,
      ),
      ResponsibilitiesDetails(
        context,
        manageResponsibilityController: context
            .read<ManageResponsibilitiesController>(),
        manageResponsibilityFormKey: GlobalKey<FormState>(),
        account: account,
        onRefresh: () {
          _controller!.refreshScreen();
        },
        title: context.l10n.responsibilities,
      ),
      LoyaltyCardDetails(
        context,
        loyaltyCardController: context.read<ManageLoyaltyCardsController>(),
        loyaltyCardFormKey: GlobalKey<FormState>(),
        account: account,
        title: context.l10n.loyaltyCards,
      ),
      EmrTabBarVerticalViewCard(
        maxHeight: getMaxHeight(account.prepaymentCards),
        title: context.l10n.prePayCards,
        child: Builder(
          builder: (context) {
            return Consumer<ManagePrepaymentCardsController>(
              builder: (context, prepayCardsController, child) {
                return PrepaymentCardsGrid(
                  account: account,
                  controller: prepayCardsController,
                );
              },
            );
          },
        ),
      ),
      BankAccountsDetails(
        context,
        account: account,
        title: context.l10n.bankAccount,
        bankAccountDetailsFormKey: GlobalKey<FormState>(),
        bankAccountController: context
            .read<ManageBankAccountDetailsController>(),
      ),
      ProductEwcDetails(
        context,
        productEwcController: context.read<ManageProductEWCController>(),
        productEwcFormKey: GlobalKey<FormState>(),
        account: account,
        title: context.l10n.productEwc,
      ),
      AccountTeamAccessDetails(
        context,
        accountTeamController: context.read<ManageTeamAccessController>(),
        accountTeamFormKey: GlobalKey<FormState>(),
        account: account,
        title: context.l10n.accountAccess,
      ),
      DocumentsDetails(
        context,
        title: context.l10n.identifications,
        account: account,
        onRefresh: () {
          _controller!.refreshScreen();
        },
      ),
    ];

    return Stack(
      children: [
        Column(
          children: [
            _AccountDetailsHeader(
              account: account,
              preferredYard: mainDetailsController.data.preferredYard,
            ),

            Expanded(
              child: ListenableBuilder(
                listenable: _hasChanged,

                builder: (_, __) => EmrTabBarVerticalView(
                  key: const ValueKey('handling-waste'),

                  onSave: _hasChanged.value
                      ? () => unawaited(_saveAccountDetails())
                      : null,

                  onCancel: () =>
                      context.goNamed(AccountNamedRoutes.accountManagement),

                  buttons: [
                    TextButton(
                      onPressed: _hasChanged.value
                          ? _resetAccountDetails
                          : null,

                      child: Text(context.l10n.reset),
                    ),
                  ],

                  children: children,
                ),
              ),
            ),
          ],
        ),

        if (_isSaving)
          Positioned.fill(
            child: AbsorbPointer(
              child: ColoredBox(
                color: Colors.white.withValues(alpha: 0.2),

                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Future<void> _saveAccountDetails() async {
    if (_mainDetailsFormKey.currentState?.validate() == false) {
      _scrollToFirstFormError(_mainDetailsFormKey);
      if (!mounted) return;
      await EmrModal.showMessageBar(
        context,
        context.l10n.requiredFieldsErrorMsg,
        messageType: MessageBarTypes.error,
      );
      return;
    }

    if (_headOfficeDetailsFormKey.currentState?.validate() == false) {
      _scrollToFirstFormError(_headOfficeDetailsFormKey);
      if (!mounted) return;
      await EmrModal.showMessageBar(
        context,
        context.l10n.requiredFieldsErrorMsg,
        messageType: MessageBarTypes.error,
      );
      return;
    }

    if (_licenceExemptionFormKey.currentState?.validate() == false) {
      _scrollToFirstFormError(_licenceExemptionFormKey);
      if (!mounted) return;
      await EmrModal.showMessageBar(
        context,
        context.l10n.requiredFieldsErrorMsg,
        messageType: MessageBarTypes.error,
      );
      return;
    }

    setState(() => _isSaving = true);

    final mainDetailsController = context.read<ManageMainDetailsController>();
    final headOfficeDetailsController = context
        .read<ManageHeadOfficeDetailsController>();
    final licenceExemptionController = context
        .read<ManageLicenceExemptionController>();

    final (mainOk, mainErr) = await mainDetailsController.update();
    if (!mounted) return;

    if (!mainOk) {
      setState(() => _isSaving = false);
      await EmrModal.showMessageBar(
        context,
        mainErr.isNotEmpty ? mainErr : context.l10n.requiredFieldsErrorMsg,
        messageType: MessageBarTypes.error,
      );
      return;
    }

    final (hoOk, hoErr) = await headOfficeDetailsController.update();
    if (!mounted) return;

    if (!hoOk) {
      setState(() => _isSaving = false);
      await EmrModal.showMessageBar(
        context,
        hoErr.isNotEmpty ? hoErr : context.l10n.requiredFieldsErrorMsg,
        messageType: MessageBarTypes.error,
      );
      return;
    }

    final (leOk, leErr) = await licenceExemptionController.update();
    if (!mounted) return;

    if (!leOk) {
      setState(() => _isSaving = false);
      await EmrModal.showMessageBar(
        context,
        leErr.isNotEmpty ? leErr : context.l10n.requiredFieldsErrorMsg,
        messageType: MessageBarTypes.error,
      );
      return;
    }

    _hasChanged.value = false;

    setState(() => _isSaving = false);

    unawaited(EmrModal.showMessageBar(context, context.l10n.successfullySaved));
  }

  void _resetAccountDetails() {
    _isResetting = true;
    context.read<ManageMainDetailsController>().resetFields();
    context.read<ManageHeadOfficeDetailsController>().resetFields();
    final leController = context.read<ManageLicenceExemptionController>();
    if (leController.account != null) {
      _leFormData?.removeAllListeners(_onFieldChanged);
      leController.setAccount(leController.account);
      _leFormData = leController.data;
      _leFormData?.addAllListeners(_onFieldChanged);
    }
    _isResetting = false;
    _hasChanged.value = false;
  }

  void _scrollToFirstFormError(GlobalKey<FormState> formKey) {
    final formContext = formKey.currentContext;
    if (formContext == null) return;

    final firstError = _findFirstFormFieldWithError(formContext);
    if (firstError == null) return;

    final errorContext = firstError.context;
    unawaited(
      Scrollable.ensureVisible(
        errorContext,
        duration: const Duration(milliseconds: 300),
        alignment: 0.1,
        curve: Curves.easeInOut,
      ),
    );

    FocusScope.of(errorContext).requestFocus();
  }

  FormFieldState<dynamic>? _findFirstFormFieldWithError(BuildContext form) {
    FormFieldState<dynamic>? result;
    void visit(Element element) {
      if (result != null) return;
      if (element is StatefulElement && element.state is FormFieldState) {
        final state = element.state as FormFieldState;
        if (state.hasError) {
          result = state;
          return;
        }
      }
      element.visitChildren(visit);
    }

    form.visitChildElements(visit);
    return result;
  }
}

Widget processingIndicator() {
  return const Center(
    child: SizedBox(
      height: Insets.gutter * 2,
      width: Insets.gutter * 2,
      child: CircularProgressIndicator(),
    ),
  );
}

class _AccountDetailsHeader extends StatelessWidget {
  const _AccountDetailsHeader({
    required this.account,
    required this.preferredYard,
  });

  final Account account;
  final ValueNotifier<Yard?> preferredYard;

  @override
  Widget build(BuildContext context) {
    final accountCode = account.code?.trim();
    final accountName = account.name?.trim();
    final hasCode = accountCode != null && accountCode.isNotEmpty;
    final hasName = accountName != null && accountName.isNotEmpty;

    final activeSubTypes = (account.accountSubTypes ?? [])
        .where((subType) => subType.value)
        .map((subType) => subType.key.headerChipLabel)
        .toList();

    return SizedBox(
      width: double.infinity,
      child: ColoredBox(
        color: AccountAccessConstants.bannerColour,
        child: Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: Colors.white),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    ValueListenableBuilder<Yard?>(
                      valueListenable: preferredYard,
                      builder: (context, yard, _) {
                        final yardCode = yard != null
                            ? yard.yardCode
                            : account.preferredYard?.trim();
                        if (yardCode == null || yardCode.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _PreferredYardLabel(yardCode: yardCode),
                            const SizedBox(width: Insets.gutter),
                          ],
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: EmrStatusChip(
                        text: account.accountType
                            .displayString(context)
                            .toUpperCase(),
                      ),
                    ),
                    for (final label in activeSubTypes) ...[
                      const SizedBox(width: Insets.gutter / 2),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: EmrStatusChip(text: label),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: Insets.gutter),
              DefaultTextStyle(
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    if (hasCode) Text(accountCode),
                    if (hasCode && hasName) const _AccountHeaderBullet(),
                    if (hasName) Text(accountName),
                    if ((account.accountStatus ?? '').isNotEmpty) ...[
                      const SizedBox(width: Insets.gutter),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: EmrStatusChip(
                          text: account.accountStatus!.toUpperCase(),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AccountHeaderBullet extends StatelessWidget {
  const _AccountHeaderBullet();

  @override
  Widget build(BuildContext context) => const SizedBox(
    width: Insets.gutter * 2,
    child: Text('•', textAlign: TextAlign.center),
  );
}

class _PreferredYardLabel extends StatelessWidget {
  const _PreferredYardLabel({required this.yardCode});

  final String yardCode;

  static const _iconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.location_on_outlined,
          size: _iconSize,
          color: Colors.white,
        ),
        const SizedBox(width: Insets.gutter / 4),
        Text(yardCode),
      ],
    );
  }
}
