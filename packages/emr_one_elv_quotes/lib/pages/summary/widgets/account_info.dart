import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/account_models/account_models.dart';
import 'package:emr_one_elv_core/models/quote_models/batch_quote_model.dart';
import 'package:emr_one_elv_quotes/pages/summary/dialogs/edit_dialogs.dart';
import 'package:emr_one_elv_quotes/pages/summary/summary_controller.dart';
import 'package:emr_one_elv_quotes/pages/summary/widgets/summary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    required this.showBankInputs,
    required this.allowEditBankDetails,
    super.key,
  });

  final bool showBankInputs;
  final bool allowEditBankDetails;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SummaryController>(context);

    final batchQuote = controller.batchQuote!;

    return SummarySectionWrapper(
      title: context.l10n.accountInformation,
      onEditButtonPressed: () {
        editBankDetailAndNotesDialog(
          context: context,
          bankAccountNumber:
              batchQuote.collectionAndBankDetail?.bankAccountNumber,
          bankSortCode: batchQuote.collectionAndBankDetail?.bankSortCode,
          notes: batchQuote.notes,
          allowEditBankDetails: allowEditBankDetails,
          onSaveButtonPressed: (bankSortCode, bankAccountNumber, notes) async {
            if (bankSortCode.isNotEmpty && bankAccountNumber.isNotEmpty) {
              final isBankAccountValid = await controller.isValidUKBankAccount(
                bankSortCode,
                bankAccountNumber,
              );
              if (!isBankAccountValid) {
                if (context.mounted) {
                  await EmrDialog.ok(
                    context,
                    titleText: context.l10n.validationFailed,
                    contentText: context.l10n.bankAccountDetailsAreNotValid,
                  );
                }
                return;
              }
            }

            await controller.updateBankDetailAndNotes(
              batchQuoteId: controller.batchQuoteID,
              bankSortCode: bankSortCode,
              bankAccountNumber: bankAccountNumber,
              notes: notes,
            );
          },
          showBankInputs: showBankInputs,
        );
      },
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Insets.gutter / 2,
            vertical: Insets.gutter / 2,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: Insets.gutter,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SummaryTextDisplay(
                          label: context.l10n.accountNumber,
                          text: _accountName(batchQuote.accountModel!),
                        ),
                        SummaryTextDisplay(
                          label: context.l10n.customer,
                          text: batchQuote.accountModel!.name,
                        ),
                        SummaryTextDisplay(
                          label: context.l10n.mobileNumber,
                          text: batchQuote.accountModel!.mobileNumber,
                        ),
                        SummaryTextDisplay(
                          label: context.l10n.landline,
                          text: batchQuote.accountModel!.landlineNumber,
                        ),
                        SummaryTextDisplay(
                          label: context.l10n.emailAddress,
                          text: batchQuote.accountModel!.email,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Insets.gutter),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          address(context, batchQuote),
                          if (showBankInputs) ...[
                            SummaryTextDisplay(
                              label: context.l10n.accountNumber,
                              text: batchQuote.collectionAndBankDetail
                                      ?.bankAccountNumber ??
                                  '',
                            ),
                            SummaryTextDisplay(
                              label: context.l10n.sortCode,
                              text: batchQuote
                                      .collectionAndBankDetail?.bankSortCode ??
                                  '',
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                SummaryTextDisplay(
                  label: context.l10n.notes,
                  text: batchQuote.notes ?? '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget address(BuildContext context, BatchQuoteModel batchQuote) {
    final postCode = batchQuote.accountModel!.address.postCode.length > 3
        ? batchQuote.accountModel!.address.postCode
        : null;

    final shortAddress = [
      batchQuote.accountModel!.address.line1,
      batchQuote.accountModel!.address.line2,
      batchQuote.accountModel!.address.line3,
      postCode,
    ];

    //Removes nulls and empty strings - as Line 1 in cam is required,
    //it can be empty. Post code can also not be null so can be not a valid PC.
    shortAddress.removeWhere((e) => e?.isEmpty ?? true);

    if (shortAddress.isEmpty) return const SizedBox();

    final formattedAddress =
        shortAddress.where((element) => element != null).join('\n');

    if (batchQuote.accountModel!.address.shortAddress != null &&
        !batchQuote.accountModel!.address.shortAddress!.contains('REMOVED')) {
      return SummaryTextColumnDisplay(
        label: context.l10n.address,
        text: formattedAddress,
      );
    }

    return const SizedBox();
  }

  String _accountName(AccountModel account) {
    if (account.accountNumber != ElvConstants.ldecashAccountNumber) {
      return account.accountNumber;
    }

    final names = <String>[
      account.accountNumber,
      '-',
      account.firstName,
      account.lastName,
    ];

    names.removeWhere((e) => e == '');
    return names.map((e) => e).join(' ').toUpperCase();
  }
}
