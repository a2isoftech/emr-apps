import 'dart:async';

import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_core_api/models/api_response.dart';
import 'package:emr_one_cashiersearch/controllers/reprice_ticket_controller.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart' hide Account;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

mixin TicketSearchMixin<T extends StatefulWidget> on State<T> {
  late ITicketPaymentController paymentController;
  late final String mediaBaseUrl;
  late RepriceTicketController repriceController;

  @override
  void initState() {
    paymentController = Provider.of<ITicketPaymentController>(
      context,
      listen: false,
    );

    repriceController = RepriceTicketController(
      repriceService: Provider.of<IRepriceTicketService>(
        context,
        listen: false,
      ),
      coreApiService: context.coreApi,
    );

    mediaBaseUrl = Provider.of<AppConfig>(context, listen: false).mediaApi;
    super.initState();
  }

  Future<void> onTicketLineIconClick(Ticket ticket) {
    return TicketsUtility.isSmallScreen(context)
        ? showModalBottomSheet<void>(
            context: context,
            builder: (context) => _ticketLineInfoWidget(ticket),
          )
        : EmrDialog.modal<void>(
            context,
            titleText:
                '${context.l10n.totalLines} ('
                '${ticket.lines!.where((line) => line.isActive).length})',
            builder: (p0) => _ticketLineInfoWidget(ticket),
            onAccept: () => onAccept(context),
            acceptLabel: context.l10n.ok,
          );
  }

  Widget _ticketLineInfoWidget(Ticket ticket) {
    final mobileView = TicketsUtility.isSmallScreen(context);
    final activeLines = ticket.lines!.where((line) => line.isActive).toList();
    return SizedBox(
      width: mobileView
          ? double.infinity
          : MediaQuery.sizeOf(context).width * 0.4,
      height: TicketsUtility.isSmallScreen(context)
          ? MediaQuery.sizeOf(context).height * 0.8
          : MediaQuery.sizeOf(context).height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.l10n.productInfo,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: Insets.gutter),
          Flexible(
            child: SingleChildScrollView(
              child: _getTicketDetails(ticket, activeLines),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> getAgreementModel(
    ValidationFlags validationFlags,
    Account account,
  ) async {
    if (account.accountStatus != AccountStatus.live) {
      await _getDraftAccountPopup(account);
      return;
    }
    var currContext = context;
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.agreement,
      builder: (p0) {
        currContext = p0;
        return ShowUserAgreements(
          validationFlags: validationFlags,
          celAgreement: paymentController.getCelAgreement(account),
          secoreAgreement: paymentController.getSecoreAgreement(account),
          onUploadAgreement: () async =>
              _navigateToUploadAgreements(account.code),
          onViewAgreement: (agreement, agreementType) {
            EmrDialog.modal<void>(
              context,
              titleText: agreementType.displayName(context),
              builder: (p0) {
                var agreementDate = '-';
                var expiryDate = '-';

                if (agreement.agreementDate != null) {
                  agreementDate = DateFormat(
                    CashierConstants.dateOnlyFormat,
                  ).format(agreement.agreementDate!);
                }
                if (agreement.expiryDate != null) {
                  expiryDate = DateFormat(
                    CashierConstants.dateOnlyFormat,
                  ).format(agreement.expiryDate!);
                }
                return SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RowWithTitleValue(
                        label: context.l10n.agreementDate,
                        value: agreementDate,
                      ),
                      RowWithTitleValue(
                        label: context.l10n.expiryDate,
                        value: expiryDate,
                      ),
                    ],
                  ),
                );
              },
              onAccept: () => onAccept(currContext),
              acceptLabel: context.l10n.ok,
            );
          },
        );
      },
      onAccept: () => onAccept(currContext),
      acceptLabel: context.l10n.ok,
    );
  }

  Future<void> getIdentiesModel(
    ValidationFlags validationFlags,
    Account account,
  ) async {
    if (account.accountStatus != AccountStatus.live) {
      await _getDraftAccountPopup(account);
      return;
    }

    final identifications = paymentController.getIdentifications(account) ?? [];
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.identities,
      builder: (p0) => ShowUserIdentities(
        identities: identifications,
        validationFlags: validationFlags,
        onUploadIdentity: ({required isPhotoId}) =>
            _navigateToUploadDetail(account.code, isPhotoId),
        onViewIdentity: (identity, {required isPhotoId}) {
          EmrDialog.modal<void>(
            context,
            dialogMode: DialogMode.compact,
            titleText: identity.subType,
            builder: (p0) => documentImage(
              identity.media.url.contains('https')
                  ? identity.media.url
                  : '$mediaBaseUrl/i/${identity.media.url}',
              account,
              isPhotoId: isPhotoId,
            ),
            onAccept: () => onAccept(context),
            acceptLabel: context.l10n.ok,
          );
        },
      ),
      onAccept: () => onAccept(context),
      acceptLabel: context.l10n.ok,
    );
  }

  Future<void> _getDraftAccountPopup(Account account) async {
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.accountInactive,
      builder: (p0) => SizedBox(
        width: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(context.l10n.activateAccountInfo),
            FilledButton(
              onPressed: () async {
                await onAccept(context);
                if (!mounted) return;
                await context.pushNamed(
                  RoutingPathName.accountRegistration,
                  extra: {
                    'accountCode': account.code,
                    'navigateTo': signup.SignupStep.contactInfo.name,
                    'contractId': account.accountContacts.first.key ?? '',
                  },
                );
              },
              style: EmrButtonStyles.cta(),
              child: Text(context.l10n.activateNow),
            ),
          ],
        ),
      ),
      onAccept: () => onAccept(context),
      acceptLabel: context.l10n.ok,
    );
  }

  Future<void> _navigateToUploadDetail(
    String accountCode,
    bool isPhotoId,
  ) async {
    await onAccept(context);

    if (!mounted) return;

    await context.pushNamed(
      RoutingPathName.accountRegistration,
      extra: {
        'accountCode': accountCode,
        'navigateTo': isPhotoId
            ? signup.SignupStep.selectIdentityProofType.name
            : signup.SignupStep.selectAddressProofType.name,
      },
    );
  }

  Future<void> _navigateToUploadAgreements(String accountCode) async {
    await onAccept(context);

    if (!mounted) return;

    await context.pushNamed(
      RoutingPathName.accountRegistration,
      extra: {
        'accountCode': accountCode,
        'navigateTo': signup.SignupStep.paymentDetails.name,
      },
    );
  }

  Widget getLineChips(Ticket ticket) {
    final uniqueProducts = ticket.lines!
        .where((line) => line.isActive)
        .map((line) => line.product?.code.toUpperCase())
        .whereType<String>()
        .toSet();

    if (uniqueProducts.length == 1) {
      return _getProductChip(ticket.ticketType, uniqueProducts.first);
    }

    if (uniqueProducts.length == 2) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getProductChip(ticket.ticketType, uniqueProducts.first),
          const Text(' '),
          _getProductChip(ticket.ticketType, uniqueProducts.last),
        ],
      );
    }
    return _getProductChip(ticket.ticketType, context.l10n.multi.toUpperCase());
  }

  Widget _getProductChip(TicketType type, String productCode) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: type == TicketType.inwards
            ? CashierSearchColors.primaryColor
            : CashierSearchColors.secondaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
        child: Text(
          style: TextStyle(
            color: type == TicketType.inwards
                ? CashierSearchColors.background
                : CashierSearchColors.foreground,
          ),
          textAlign: TextAlign.center,
          productCode,
        ),
      ),
    );
  }

  Future<void> onAccept(BuildContext currContext) async {
    await Navigator.maybePop(currContext);
  }

  Widget _getTicketDetails(Ticket ticket, List<TicketLine> lines) {
    if (lines.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
        child: Text(context.l10n.noDataFound),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < lines.length; i++) ...[
          _getListItem(ticket, lines[i]),
          if (i != lines.length - 1)
            Divider(color: CashierSearchColors.disabledBackground),
        ],
      ],
    );
  }

  Widget _getListItem(Ticket ticket, TicketLine line) {
    final currency = ticket.currency ?? '';
    final lineTitle =
        '${context.l10n.heap}: '
        '${line.location == null ? '?' : '${line.location!.code.toUpperCase()}'
                  ' - ${line.location!.description.toTitleCase()}'}'
        ' (${line.product?.description.toTitleCase() ?? '?'})';
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      horizontalTitleGap: Insets.gutter / 2,
      minLeadingWidth: 5,
      leading: SizedBox(
        width: 50,
        child: Text(
          '${line.lineNumber ?? 0}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        lineTitle,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: Theme.of(
                          context,
                        ).textTheme.headlineLarge!.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Visibility(
                      visible: (line.grossWeight?.value ?? 0) > 0,
                      child: Text(
                        style: Theme.of(context).textTheme.bodySmall,
                        '${context.l10n.grossWeight}: '
                        '''${TicketsUtility.formatUomValue(context, line.grossWeight!)}  ''',
                      ),
                    ),
                    Visibility(
                      visible: (line.totalTareWeight?.value ?? 0) > 0,
                      child: Text(
                        style: Theme.of(context).textTheme.bodySmall,
                        '${context.l10n.tareWeight}: '
                        '''${TicketsUtility.formatUomValue(context, line.totalTareWeight!)}  ''',
                      ),
                    ),
                    Text(
                      style: Theme.of(context).textTheme.bodySmall,
                      '''${context.l10n.netWeight}: ${TicketsUtility.formatUomValue(context, line.netWeight!)}  ''',
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Visibility(
                      visible: (line.rate?.value ?? 0) > 0,
                      child: Text(
                        style: Theme.of(context).textTheme.bodySmall,
                        '''${context.l10n.price}: ${TicketsUtility.formatUomValue(context, line.rate!)}  ''',
                      ),
                    ),
                    Visibility(
                      visible: (line.totalDirtDeduction?.value ?? 0) > 0,
                      child: Text(
                        style: Theme.of(context).textTheme.bodySmall,
                        '${context.l10n.dirtDeduction}: '
                        '''${TicketsUtility.formatUomValue(context, line.totalDirtDeduction!)}  ''',
                      ),
                    ),
                    Visibility(
                      visible: (line.totalCostDeduction ?? 0) > 0,
                      child: Text(
                        style: Theme.of(context).textTheme.bodySmall,
                        '${context.l10n.costDeduction}: '
                        '''${TicketsUtility.formatCurrency(context, currency, line.totalCostDeduction!)}''',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    TicketsUtility.formatCurrency(
                      context,
                      currency,
                      line.price,
                    ),
                    style: Theme.of(
                      context,
                    ).textTheme.headlineLarge!.copyWith(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: ticket.ticketType == TicketType.inwards
                          ? CashierSearchColors.primaryColor
                          : CashierSearchColors.secondaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 6,
                      ),
                      child: Text(
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ticket.ticketType == TicketType.inwards
                              ? CashierSearchColors.background
                              : CashierSearchColors.foreground,
                        ),
                        textAlign: TextAlign.center,
                        line.product?.code ?? '?',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> showDialogOrBottomSheet({
    required BuildContext context,
    required Widget content,
    required String title,
    List<Widget>? actions,
    bool? isExpanded,
    double? height,
    double? width,
    bool showCloseIcon = true,
  }) {
    final useMobileView = TicketsUtility.isSmallScreen(context);
    if (!useMobileView) {
      return showDialog<void>(
        context: context,
        builder: (context) {
          return TicketDialog(
            showCloseIcon: showCloseIcon,
            content: SizedBox(width: width, height: height, child: content),
            onClosePressed: () => context.pop(),
            titleText: title,
            actions: actions,
          );
        },
      );
    } else {
      return showModalBottomSheet<void>(
        isScrollControlled: isExpanded ?? false,
        context: context,
        builder: (context) {
          return SizedBox(
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Expanded(child: content),
                  if (actions != null) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: actions
                          .map(
                            (e) => Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: e,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      );
    }
  }

  Future<void> getRePriceModal(Ticket ticket, {bool isReadonly = false}) async {
    final isSmallScreen = TicketsUtility.isSmallScreen(context);
    final activeLines =
        ticket.lines?.where((line) => line.isActive).toList() ?? [];

    if (!isSmallScreen) {
      await EmrDialog.modal<void>(
        context,
        titleText: context.l10n.editTicketWithNumber(ticket.ticketNumber),
        builder: (p0) {
          return RepriceTicketLinesWidget(
            lines: activeLines,
            ticket: ticket,
            currency: ticket.currency,
            repriceController: repriceController,
            territoryId: paymentController.yard!.territoryId,
          );
        },
        buttons: {
          EmrDialogButton.cancel,
          if (!isReadonly) EmrDialogButton.accept,
        },
        onAccept: () async {
          if (!(repriceController.formKey?.currentState?.validate() ?? true)) {
            return;
          }
          final validatorResponse = updatedRecordsValid(ticket);
          if (!validatorResponse.success) {
            await TicketsUtility.errorDialogWidget(
              context,
              validatorResponse.message,
            );
            return;
          }
          await TicketsUtility.infoDialogWidget(
            context,
            title: context.l10n.warning,
            message: context.l10n.changesConfirmation,
            onAccept: () async {
              await repriceTicketLines(ticket.id);
            },
          );
        },
      );
    } else {
      return showModalBottomSheet<void>(
        context: context,
        builder: (context) {
          return RepriceTicketLinesWidget(
            lines: activeLines,
            ticket: ticket,
            currency: ticket.currency,
            repriceController: repriceController,
            territoryId: paymentController.yard!.territoryId,
          );
        },
      );
    }
  }

  Future<void> repriceTicketLines(String ticketId) async {
    final saveResponse = await repriceController.saveTicket(ticketId);
    if (!saveResponse.success && mounted) {
      await TicketsUtility.errorDialogWidget(context, saveResponse.message);
      return;
    }
    if (saveResponse.success) {
      if (mounted) {
        context.pop(false);
        await TicketsUtility.infoDialogWidget(
          context,
          title: context.l10n.success,
          message: context.l10n.ticketRepricedSuccessful,
          onAccept: () async {
            refresh();
          },
        );
      }
    }
  }

  //To be implemented by class implementing this mixin if needed.
  void refresh() {}

  String updatedRecordsNetWeightValid(Ticket ticket) {
    final uom = ticket.lines!.first.netWeight!.uom;
    final totalUpdatedNetWeight = repriceController.repriceFormData.value
        .map((x) => x.netWeight.value.value)
        .reduce((value, element) => value + element)
        .roundOff(uom);
    final existingNetWeight = ticket.lines!
        .where((line) => line.isActive)
        .map((x) => x.netWeight?.value ?? 0)
        .reduce((value, element) => value + element)
        .roundOff(uom);
    return totalUpdatedNetWeight == existingNetWeight
        ? ''
        : '''${existingNetWeight.toStringAsFixed(uom.displayFormatFractionalDigits)} ${uom.uomCode}''';
  }

  ApiResponse<void> updatedRecordsValid(Ticket ticket) {
    if (repriceController.ticketAccount.value == null) {
      return ApiResponse(
        success: false,
        message: context.l10n.errInvalidAccountSelected,
      );
    }

    final updatedRecords = repriceController.repriceFormData.value;
    final weight = updatedRecordsNetWeightValid(ticket);
    if (weight.isNotEmpty) {
      return ApiResponse(
        success: false,
        message: context.l10n.totalWeightError(weight),
      );
    }
    if (updatedRecords.any((x) => x.netWeight.value.value == 0)) {
      return ApiResponse(
        success: false,
        message: context.l10n.netWeightNotValid,
      );
    } else if (updatedRecords.any(
      (x) => x.rate.value == null || x.rate.value!.value <= 0,
    )) {
      return ApiResponse(success: false, message: context.l10n.rateNotValid);
    } else if (updatedRecords.any(
      (x) =>
          !RegularExpressions.amount.hasMatch(x.rate.value!.value.toString()),
    )) {
      return ApiResponse(success: false, message: context.l10n.rateNotValid);
    } else if (updatedRecords.any((x) => x.product.value == null)) {
      return ApiResponse(
        success: false,
        message: context.l10n.productNotSelected,
      );
    } else if (updatedRecords.any((x) => x.location.value == null)) {
      return ApiResponse(
        success: false,
        message: context.l10n.locationNotSelected,
      );
    }

    return ApiResponse();
  }

  Widget documentImage(String url, Account account, {required bool isPhotoId}) {
    return Column(
      spacing: Insets.gutter / 2,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: TicketsUtility.isSmallScreen(context)
              ? MediaQuery.sizeOf(context).height * 0.8
              : MediaQuery.sizeOf(context).height * 0.4,
          child: CashierSearchFileProvider(url: url),
        ),
        FilledButton(
          onPressed: () async {
            await onAccept(context);
            await _navigateToUploadDetail(account.code, isPhotoId);
          },
          style: EmrButtonStyles.danger(),
          child: Text(context.l10n.reupload),
        ),
      ],
    );
  }

  Future<void> showPaymentDetails(
    PaymentRecord? paymentRecord,
    String currency,
  ) async {
    if (paymentRecord == null) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.paymentDetailsNotFound,
      );
    } else {
      await EmrDialog.modal<void>(
        context,
        titleText: context.l10n.paymentDetails,
        builder: (context1) =>
            PaymentInfo(paymentRecord: paymentRecord, currency: currency),
        acceptLabel: context.l10n.ok,
        onAccept: () async => Navigator.of(context).pop(),
      );
    }
  }

  Future<void> showTicketGallery(Ticket ticket) async {
    await EmrDialog.modal<void>(
      context,
      titleText:
          '${context.l10n.ticketWithNumber(ticket.ticketNumber)} '
          '${context.l10n.mediaGallery}',
      builder: (context1) => TicketMediaGalleryPopup(ticket: ticket),
      acceptLabel: context.l10n.ok,
      buttons: {EmrDialogButton.accept},
      onAccept: () async => Navigator.of(context).pop(),
    );
  }
}
