import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart' hide Ticket;
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide Created;
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvanceForm extends StatefulWidget {
  const AdvanceForm({required this.advancesId, this.tickets, super.key});

  final String advancesId;
  final List<Ticket>? tickets;

  @override
  State<AdvanceForm> createState() => _AdvanceForm();
}

class _AdvanceForm extends State<AdvanceForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AdvanceFormData? _model;

  bool fromTicket = false;
  final ticketAccount = ValueNotifier(false);
  late UserInfoService userInfoService;
  late IAdvancesPaymentService advancesPaymentService;
  late final Future<void> _loadFuture;
  final tickets = ValueNotifier<List<Ticket>?>(null);
  final saving = ValueNotifier<bool>(false);
  final editing = ValueNotifier<bool>(false);

  @override
  void initState() {
    userInfoService = Provider.of<UserInfoService>(context, listen: false);
    advancesPaymentService = Provider.of<IAdvancesPaymentService>(
      context,
      listen: false,
    );

    _loadTicket();
    _loadFuture = _loadAdvances();
    super.initState();
  }

  @override
  void dispose() {
    _removeListeners();
    ticketAccount.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    final colorScheme = Theme.of(context).colorScheme;
    return FutureBuilder(
      future: _loadFuture,
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              // Loading.
              ? const Center(child: CircularProgressIndicator())
              : (_model == null)
              ? Center(child: Text(context.l10n.advanceNotFound))
              // Form.
              : ValueListenableBuilder(
                  valueListenable: _model!.termType,
                  builder: (context, value, child) => SingleChildScrollView(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    AccountCheckCard(
                                      model: _model!,
                                      userInfoService: userInfoService,
                                      advancesPaymentService:
                                          advancesPaymentService,
                                      fixedAccount:
                                          tickets.value != null ||
                                          editing.value,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: Insets.gutter,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Divider(
                                              color: colorScheme.outlineVariant,
                                              thickness: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    YardCard(
                                      model: _model!,
                                      userInfoService: userInfoService,
                                      advancesPaymentService:
                                          advancesPaymentService,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: Insets.gutter,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Divider(
                                              color: colorScheme.outlineVariant,
                                              thickness: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PaymentTermsSection(
                                      model: _model!,
                                      userInfoService: userInfoService,
                                      advancesPaymentService:
                                          advancesPaymentService,
                                      fromTicket: fromTicket,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: Insets.gutter),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AccountAdvancesSection(
                                      model: _model!,
                                      advancesPaymentService:
                                          advancesPaymentService,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: Insets.gutter,
                                      ),
                                      child: Container(),
                                    ),
                                    PartialPayTicketsCard(
                                      model: _model!,
                                      advancesPaymentService:
                                          advancesPaymentService,
                                      tickets: tickets.value,
                                    ),
                                    const SizedBox(height: Insets.gutter),
                                    CommentsContent(
                                      existingComments: _model!.comments,
                                      newComments: _model!.newComments,
                                      currentUserId:
                                          userInfoService.userInfo.id,
                                      currentUserName:
                                          userInfoService.userInfo.name,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: Insets.gutter),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Theme.of(context).dividerColor,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(Insets.gutter),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    spacing: Insets.gutter / 2,
                                    children: [
                                      TextButton(
                                        onPressed: () => context.pop(),
                                        child: Text(context.l10n.cancel),
                                      ),
                                      TextButton(
                                        style: EmrButtonStyles.cta(),
                                        onPressed:
                                            _model == null ||
                                                _model!.status.value ==
                                                    AdvanceStatus.draft
                                            ? () async {
                                                if (!saving.value) {
                                                  saving.value = true;
                                                  try {
                                                    await _onAdvancesSave(
                                                      context,
                                                    );
                                                  } finally {
                                                    saving.value = false;
                                                  }
                                                }
                                              }
                                            : null,
                                        child: Text(context.l10n.save),
                                      ),
                                      FilledButton(
                                        style: EmrButtonStyles.cta(),
                                        onPressed:
                                            _model == null ||
                                                _model!.status.value ==
                                                    AdvanceStatus.draft
                                            ? () async {
                                                if (!saving.value) {
                                                  saving.value = true;
                                                  try {
                                                    await _onAdvancesSave(
                                                      context,
                                                      navigateToBasket: true,
                                                    );
                                                  } finally {
                                                    saving.value = false;
                                                  }
                                                }
                                              }
                                            : null,
                                        child: const Text(
                                          'Save and go to Basket',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }

  Future<void> _onAdvancesSave(
    BuildContext context, {
    bool navigateToBasket = false,
  }) async {
    if (_formKey.currentState?.validate() == false) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.correctTheValidationErrors,
      );
      return;
    }

    final advance = _model!.toAdvance(
      Created(
        userInfoId: userInfoService.userInfo.id,
        userName: userInfoService.userInfo.name,
        at: DateTime.now(),
      ),
    );

    final result = await advancesPaymentService.saveAdvances(advance);

    if (result.success == false) {
      if (!context.mounted) {
        return;
      }

      await TicketsUtility.errorDialogWidget(
        context,
        result.data != null && result.data!.isNotEmpty
            ? context.advanceError(
                advance,
                AdvanceErrorCodes.fromJson(result.data!),
              )
            : result.message,
      );

      return;
    }

    if (!context.mounted) {
      return;
    }

    if (!navigateToBasket) {
      await TicketsUtility.infoDialogWidget(
        context,
        title: context.l10n.success,
        message: context.l10n.successfullySaved,
      );
    }

    if (!context.mounted) {
      return;
    }

    if (navigateToBasket) {
      final response = await advancesPaymentService.getAdvances(result.data!);

      if (!context.mounted) {
        return;
      }

      if (response.success) {
        final basketController = Provider.of<PaymentBasketController<Advance>>(
          context,
          listen: false,
        );

        basketController.clearBasketItems();
        basketController.addBasketItem(response.data!);
        context.pop();
        await context.pushNamed(RoutingPathName.advancePaymentBasket);
      }
    }

    if (!context.mounted) return;
    context.pop();
  }

  Future<void> _loadAdvances() async {
    Company? company;
    final companyCode = userInfoService.userInfo.getDefaultCompany();
    if (companyCode != null && companyCode.isNotEmpty) {
      company = (await context.coreApi.referenceData.companies(
        companyCode,
      )).firstOrNull;
    }
    if (!mounted) return;
    if (widget.advancesId.startsWith(TicketConstants.kEmptyId)) {
      final defaultYard = userInfoService.userInfo.getDefaultYard();
      final payableYard = (await context.coreApi.referenceData.yards(
        userInfoService.userInfo.getDefaultYard(),
      )).firstWhereOrNull((yard) => yard.yardCode == defaultYard);

      _model = AdvanceFormData.fromNew(defaultYard, company, payableYard);
      if (fromTicket && context.mounted) {
        final accountId = tickets.value?.firstOrNull?.account.accountId ?? '';
        final account = await advancesPaymentService.getAccountById(accountId);
        if (account != null) {
          _model!.account.value = AccountFormData.fromAccount(account);
          ticketAccount.value = true;
          _accountListener();
        }
        _model!.termType.value = AdvanceTermType.partialPay;
      }
    } else if (context.mounted) {
      final response = await advancesPaymentService.getAdvances(
        widget.advancesId,
      );

      if (response.success && response.data != null) {
        _model = AdvanceFormData.fromAdvance(response.data!);
        editing.value = true;
      } else if (mounted) {
        await TicketsUtility.errorDialogWidget(context, response.message);
        return;
      }
    }
    if (mounted) {
      addListeners(context);
    }
  }

  void _loadTicket() {
    tickets.value = widget.tickets;
    fromTicket = tickets.value != null;
  }

  void addListeners(BuildContext context) {
    if (_model == null) {
      return;
    }
    _model!.handlingYard.addListener(_onHandlingYardChange);
    _model!.payableYard.addListener(_onPayableYardChange);
    _model!.percentageTermDetails.value.percentage.addListener(
      _onTermDetailsPercentageChange,
    );
    _model!.paymentAmount.value.amount.addListener(_onAdvanceValueChange);

    _model!.account.addListener(_accountListener);

    _model!.termType.addListener(_addTermListener);
  }

  void _removeListeners() {
    _model?.handlingYard.removeListener(_onHandlingYardChange);
    _model?.percentageTermDetails.value.percentage.removeListener(
      _onTermDetailsPercentageChange,
    );
    _model?.paymentAmount.value.amount.removeListener(_onAdvanceValueChange);
    _model?.account.removeListener(_accountListener);
    _model?.termType.removeListener(_addTermListener);
  }

  void _addTermListener() {
    if (_model!.termType.value == AdvanceTermType.percentage &&
        _model!.percentageTermDetails.value.percentage.value == 0.0) {
      _model!.percentageTermDetails.value.percentage.value = 100.00;
    }
    if (_model!.termType.value == AdvanceTermType.fixed &&
        _model!.fixedTermDetails.value.amount.value == 0) {
      _model!.fixedTermDetails.value.amount.value =
          _model!.paymentAmount.value.amount.value;
    }
  }

  void _onHandlingYardChange() {
    if (_model!.handlingYard.value != null) {
      _model!.payableYard.value = _model!.handlingYard.value;
    }

    if (_model!.handlingYard.value?.company.value != null) {
      _model!.company.value = _model!.handlingYard.value?.company.value;
    }

    if (_model!.handlingYard.value?.defaultPaymentMethod.value != null &&
        (_model!.paymentMethod.value == PaymentMethod.none ||
            _model!.paymentMethod.value ==
                _model!.payableYard.value?.defaultPaymentMethod.value)) {
      _model!.paymentMethod.value =
          _model!.handlingYard.value!.defaultPaymentMethod.value!;
    }
  }

  void _onPayableYardChange() {
    if (_model!.payableYard.value?.defaultPaymentMethod.value != null &&
        _model!.paymentMethod.value == PaymentMethod.none) {
      _model!.paymentMethod.value =
          _model!.payableYard.value!.defaultPaymentMethod.value!;
    }
  }

  void _onTermDetailsPercentageChange() {
    _model!.percentageTermDetails.value.amount.value = _calculateAmount();
  }

  void _onAdvanceValueChange() {
    _model!.percentageTermDetails.value.amount.value = _calculateAmount();
  }

  void _accountListener() {
    final account = _model?.account.value;
    final businessDetail = account?.businessDetail.value;
    final paymentTerm = businessDetail?.paymentTerm.value;
    final newPaymentMethod = paymentTerm?.paymentMethod.value;

    if (newPaymentMethod == null || newPaymentMethod == PaymentMethod.none) {
      return;
    }

    final currentPaymentMethod = _model!.paymentMethod.value;

    final handlingDefault =
        _model!.handlingYard.value?.defaultPaymentMethod.value;
    final payableDefault =
        _model!.payableYard.value?.defaultPaymentMethod.value;

    final shouldUpdate =
        currentPaymentMethod == PaymentMethod.none ||
        currentPaymentMethod == handlingDefault ||
        currentPaymentMethod == payableDefault;

    if (shouldUpdate) {
      _model!.paymentMethod.value = newPaymentMethod;
    }
  }

  double _calculateAmount() {
    final percent = _model!.percentageTermDetails.value.percentage.value;
    final advance = _model!.paymentAmount.value.amount.value ?? 0.0;
    final computedAmount = (percent * advance) / 100.0;
    return computedAmount;
  }
}
