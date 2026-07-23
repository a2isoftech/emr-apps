import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_dialog.dart';
import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_core/widgets/error_messaging.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyout_builder.dart';
import 'package:emr_one_elv_quotes/common/add_collection_operator_details.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/common/price_adjustment_dialog.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/dialogs/vehicle_lookup/vehicle_lookup_dialog.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/email_button.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/quick_quotes_widgets.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/row_or_column.dart';
import 'package:provider/provider.dart';

class QuickQuotesScreen extends StatefulWidget {
  const QuickQuotesScreen({required this.batchQuoteId, super.key});

  final String batchQuoteId;

  @override
  State<QuickQuotesScreen> createState() => _QuickQuotesScreenState();
}

class _QuickQuotesScreenState extends State<QuickQuotesScreen> {
  late final TextEditingController accountController;
  late final TextEditingController postcodeController;
  late final ValueNotifier<bool> _apiError;
  late final QuickQuoteController controller;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    controller = Provider.of<QuickQuoteController>(context, listen: false);
    controller.resetQuickQuoteState();

    final settingsController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;
    controller.asyncOnInit(settingsController);
    accountController = TextEditingController();
    postcodeController = TextEditingController();
    accountController.text =
        controller.baseState.temporaryAccountStore?.code ?? '';
    postcodeController.text = controller.model.postcode ?? '';
    _apiError = ValueNotifier(false);
    Future.microtask(() {
      if (mounted) {
        _cloneQuote(context, widget.batchQuoteId);
      }
    });
  }

  @override
  void dispose() {
    accountController.dispose();
    postcodeController.dispose();
    _apiError.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuickQuoteController>(context);
    final userInfoEmail = Provider.of<UserInfoService>(
      context,
    ).userInfo.emailAddress;
    final isCollectedQuote = controller.isCollectionQuote;

    _apiError.value = controller.baseState.apiError;

    if (loading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ElvScreenWrapper(
      header: const QuickQuotesHeader(),
      child: Column(
        children: [
          SizedBox(
            child: RowOrColumn(
              rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
                  child: Text(
                    context.l10n.newQuote,
                    style: EmrOneConstants.kSmallTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                ),
                if (controller.baseState.batchQuote != null)
                  AmountOffered(
                    batchQuote: controller.baseState.batchQuote!,
                    priceLoading: controller.model.priceLoading,
                    deliveredQuotes: controller.batchQuotesByPriceType(
                      QuoteTypeEnum.delivered,
                    ),
                    collectedQuotes: controller.batchQuotesByPriceType(
                      QuoteTypeEnum.collected,
                    ),
                    onTap: controller.swapBatchQuotes,
                  ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: controller.baseState.scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: Insets.gutter,
                        left: Insets.gutter * 2,
                        bottom: Insets.gutter / 2,
                      ),
                      child: Text(
                        context.l10n.quoteDetails,
                        textAlign: TextAlign.center,
                        style: EmrOneConstants.kSmallHeadingTextStyle,
                      ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: Insets.gutter / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: Insets.gutter),
                          child: AddAccountDetails(controller: controller),
                        ),
                      ],
                    ),
                  ),
                  if (isCollectedQuote)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: Insets.gutter,
                          left: Insets.gutter * 2,
                          bottom: Insets.gutter / 2,
                        ),
                        child: Text(
                          context.l10n.collectionDetails,
                          textAlign: TextAlign.center,
                          style: EmrOneConstants.kSmallHeadingTextStyle,
                        ),
                      ),
                    ),
                  if (isCollectedQuote) const Divider(),
                  if (isCollectedQuote)
                    const Padding(
                      padding: EdgeInsets.only(top: Insets.gutter / 2),
                      child: Padding(
                        padding: EdgeInsets.only(right: Insets.gutter),
                        child: AddCollectionOperatorDetails(),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: Insets.gutter / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ErrorMessaging(
                                apiError: _apiError,
                                contentBody:
                                    controller.baseState.apiErrorMessage,
                                then: controller.removeApiError,
                              ),
                              if (controller.model.loadingBatchQuote)
                                const Positioned(child: LoadingBatchQuotes()),
                              if (!controller.model.loadingBatchQuote)
                                if (controller.baseState.batchQuote != null)
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        controller
                                            .baseState
                                            .batchQuote
                                            ?.quoteSummaries
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) =>
                                        VehicleQuoteTile(
                                          quote: controller
                                              .baseState
                                              .batchQuote!
                                              .quotes[index],
                                          controller: controller,
                                          index: index,
                                        ),
                                  ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: Insets.gutter / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () => ElvDialog.action(
                    context,
                    titleText: context.l10n.priceAdjustment,
                    content: PriceAdjustmentDialogBody(
                      reasonAlwaysRequired: controller.activeTerritory
                          .priceAdjustmentReasonRequired(),
                      hidePriceAdjustment:
                          controller.activeTerritory == ElvTerritory.uk,
                      isBulkAdjustment: true,
                      cancel: () => Navigator.of(context).pop(),
                      onApply: (value) {
                        Navigator.of(context).pop();
                        EmrDialog.busy(
                          context,
                          titleText: context.l10n.savingPriceAdjustments,
                        );
                        controller
                            .bulkUpdatePriceAdjustments(priceAdjustment: value)
                            .then((v) {
                              if (context.mounted) {
                                context.pop();
                              }
                            });
                      },
                    ),
                  ),
                  child: Text(context.l10n.bulkPriceAdjustment),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: OutlinedButton(
                    onPressed: () {
                      if (controller.accountController.text.isEmpty) {
                        EmrDialog.ok(
                          context,
                          titleText: context.l10n.cannotAddVehicleToPrice,
                          contentText: context.l10n.selectAccountNumberForQuote,
                        );
                        return;
                      }
                      if (controller.model.selectedYard != null ||
                          (controller.postCodeController.text.isNotEmpty &&
                              controller.isPostCodeValid)) {
                        MediaQuery.of(context).size.width > 1200
                            ? ElvDialog.action(
                                context,
                                titleText: context.l10n.addVehicles,
                                content: VehicleLookUpFlyOut(
                                  controller: controller,
                                ),
                              )
                            : elvStandardFlyout(
                                context: context,
                                heading: context.l10n.addVehicles,
                                body: VehicleLookUpFlyOut(
                                  controller: controller,
                                ),
                              );
                      } else {
                        EmrDialog.ok(
                          context,
                          titleText: context.l10n.cannotAddVehicleToPrice,
                          contentText: context.l10n.selectYardOrEnterPostcode,
                        );
                        return;
                      }
                    },
                    child: Text(context.l10n.addVehicles),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: Insets.gutter),
                  child: EmailButton(
                    customersEmail:
                        controller.baseState.batchQuote?.accountModel!.email ??
                        '',
                    onSend: controller.emailCustomer,
                    enabled: _canEmail(),
                    quoteStatus:
                        controller.baseState.batchQuote?.quoteStatus ??
                        QuoteStatusEnum.draft,
                    showToolTip: _showToolTip(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: Insets.gutter),
                  child: OutlinedButton(
                    onPressed: controller.model.vehicleDescriptions.isEmpty
                        ? null
                        : () => _onSaveAsDraftPressed(context),
                    child: Text(context.l10n.saveAsDraft),
                  ),
                ),
                OutlinedButton(
                  onPressed: controller.model.canSubmit
                      ? () => _confirmQuote(
                          isCollectedQuote,
                          userInfoEmail,
                          context,
                        )
                      : null,
                  child: Text(context.l10n.complete),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onSaveAsDraftPressed(BuildContext context) async {
    unawaited(EmrDialog.busy(context, titleText: context.l10n.saving));
    final success = await controller.batchQuoteBundleOperations();
    if (context.mounted && Navigator.of(context).canPop()) {
      context.pop();
    }
    if (context.mounted) {
      if (success) {
        await EmrDialog.ok(context, titleText: context.l10n.successfullySaved);
      } else {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.anErrorOccurredTryAgain,
        );
      }
    }
  }

  Future<void> _confirmQuote(
    bool isCollectedQuote,
    String userInfoEmail,
    BuildContext context,
  ) async {
    if (_checkAccountForCollectedQuote(isCollectedQuote) ||
        _checkCollectionAddressForQuote(isCollectedQuote)) {
      return;
    }

    if (context.mounted) {
      unawaited(
        EmrDialog.busy(
          context,
          titleText:
              '${context.l10n.confirm} '
              '${context.l10n.quote}',
        ),
      );
    }

    if (controller.activeTerritory == ElvTerritory.uk) {
      final isBankAccountValid = await _validateUKBankAccount();
      if (!isBankAccountValid && context.mounted) {
        context.pop();
        await EmrDialog.ok(
          context,
          titleText: context.l10n.validationFailed,
          contentText: context.l10n.bankAccountDetailsAreNotValid,
        );
        return;
      }
      if (controller.postCodeController.text.isNotEmpty) {
        final isPostCodeValid = await controller.isValidPostcode(
          controller.postCodeController.text,
        );
        if (!isPostCodeValid && context.mounted) {
          context.pop();
          await EmrDialog.ok(
            context,
            titleText: context.l10n.validationFailed,
            contentText: context.l10n.invalidPostcode,
          );
          return;
        }
      }
    }

    if (context.mounted) {
      await controller.batchQuoteBundleOperations();
    }
    if (context.mounted) {
      await controller.submit(context: context, email: userInfoEmail).then((
        value,
      ) {
        if (context.mounted) {
          context.pop();
        }
        if (value) {
          if (context.mounted) {
            context.goNamed(
              NamedRoutes.elvQuotesSummary,
              params: {
                'batchQuoteId': controller.baseState.batchQuote!.id.toString(),
              },
            );
          }
        } else {
          controller.responseCheck<void>(ApiResponse.badRequest());
        }
      });
    }
  }

  bool _checkAccountForCollectedQuote(bool isCollectedQuote) {
    if (isCollectedQuote &&
        (controller.baseState.batchQuoteBundle?.partyAccountNo ==
            ElvConstants.ldecashAccountNumber)) {
      EmrDialog.ok(
        context,
        titleText:
            '${context.l10n.cannotConfirmCollectedQuote} '
            '${ElvConstants.ldecashAccountNumber} ${context.l10n.account}.',
      );
      return true;
    }
    return false;
  }

  bool _checkCollectionAddressForQuote(bool isCollectedQuote) {
    if (isCollectedQuote &&
        (controller.collectionAddressController.text.isEmpty)) {
      EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.pleaseSelectTheLocationForTheCollection,
      );
      return true;
    }
    return false;
  }

  void _cloneQuote(BuildContext context, String batchQuoteId) {
    final controller = Provider.of<QuickQuoteController>(
      context,
      listen: false,
    );

    if (batchQuoteId.contains('clone')) {
      final bundleID = batchQuoteId.replaceAll('clone', '');

      final controller = Provider.of<QuickQuoteController>(
        context,
        listen: false,
      );
      EmrDialog.busy(
        context,
        titleText: '${context.l10n.generatingNewQuoteFrom} $bundleID',
      );

      controller.cloneBundle(batchQuoteBundleId: bundleID).then((value) {
        if (context.mounted) {
          Navigator.of(context).pop();
        }
        setState(() {
          loading = false;
          controller.toggleCanSubmit();
        });
        if (!controller.model.cloneSuccessful) {
          setState(() {
            controller.model.apiFallen = true;
          });
          return;
        }
      });
    } else if (batchQuoteId.isNotEmpty && batchQuoteId.toLowerCase() != 'new') {
      EmrDialog.busy(context, titleText: context.l10n.loadingBatchQuote);

      controller.loadBatchQuoteBundle(batchQuoteId).then((value) {
        if (context.mounted) {
          Navigator.of(context).pop();
        }
        setState(() {
          loading = false;
          controller.toggleCanSubmit();
        });

        if (controller.baseState.batchQuoteBundle!.batchQuotes.any(
          (e) => e.quoteStatus == QuoteStatusEnum.confirmed,
        )) {
          if (context.mounted) {
            context.goNamed(
              NamedRoutes.elvQuotesSummary,
              params: {
                'batchQuoteId': controller
                    .baseState
                    .batchQuoteBundle!
                    .batchQuotes
                    .firstWhere(
                      (e) => e.quoteStatus == QuoteStatusEnum.confirmed,
                    )
                    .id
                    .toString(),
              },
            );
          }
        }

        controller.cloneVehicleDesc();
        return;
      });
    } else {
      setState(() {
        loading = false;
        controller.toggleCanSubmit();
      });
    }
  }

  /// For LDECASH quotes we allow sending of emails when no email exists so
  /// this shouldnt show. It should only show when the quote is Non-Cash account
  /// when there is a batch quote and when the account does not have a valid
  /// email address, which can also be nullable.
  bool _showToolTip() {
    final hasBatchQuote = controller.baseState.batchQuote != null;
    final hasInvalidEmailAddress =
        !(controller.baseState.batchQuote?.accountModel!.email ?? '')
            .isValidEmail();
    return hasBatchQuote && hasInvalidEmailAddress;
  }

  bool _canEmail() {
    return controller.baseState.batchQuote?.accountModel!.email != null &&
        controller.baseState.batchQuote!.accountModel!.email.isValidEmail();
  }

  Future<bool> _validateUKBankAccount() async {
    if (controller.bankSortCodeController.text.isNotEmpty &&
        controller.bankAccountNumberController.text.isNotEmpty) {
      final isBankAccountValid = await controller.isValidUKBankAccount(
        controller.bankSortCodeController.text,
        controller.bankAccountNumberController.text,
      );
      return isBankAccountValid;
    }
    return true;
  }
}
