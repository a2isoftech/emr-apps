import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/cheque_books/cheque_books_exports.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ChequeBookRows extends StatefulWidget {
  const ChequeBookRows({
    required this.filterController,
    required this.controller,
    super.key,
  });

  final ChequeBooksFilterController filterController;

  final ChequeBooksController controller;

  @override
  State<ChequeBookRows> createState() => _ChequeBookRowsState();
}

class _ChequeBookRowsState extends State<ChequeBookRows> {
  // Outside the build method to keep data the same between open
  // and close of the form.
  final addChequeBookFormKey = GlobalKey<FormState>();
  final addChequeBookModel = AddChequeBookFormData();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.controller.chequeBooks,
      builder: (context, chequeBooks, child) {
        final hasPrimaryYard = widget.controller.primaryYard != null;

        if (chequeBooks.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          children: [
            if (hasPrimaryYard)
              ChequeBookRow(
                chequeBook: chequeBooks.first,
                addChequeBook: () async {
                  final bankAccount = widget.filterController
                      .tryGetFilter<CompanyBankAccount>(
                        key: ChequeBooksFilterController.kCompanyBankAccount,
                      )!
                      .value!;

                  await EmrDialog.modal<void>(
                    context,
                    titleText: context.l10n.addChequeBook,
                    acceptLabel: context.l10n.save,
                    builder: (BuildContext dialogContext) => AddChequeBookForm(
                      formKey: addChequeBookFormKey,
                      model: addChequeBookModel,
                      yard: widget.controller.primaryYard!,
                      bank: bankAccount,
                    ),
                    onAccept: () async {
                      if (!addChequeBookFormKey.currentState!.validate()) {
                        return;
                      }

                      final formattedUniqueNumbers = _parseUniqueNumbers(
                        addChequeBookModel.uniqueNumbers.value!,
                        addChequeBookModel.numberOfDigits.value,
                      );

                      if (formattedUniqueNumbers.isEmpty ||
                          widget.controller.primaryYard == null) {
                        Navigator.of(context).pop();
                        return;
                      }

                      final result = await context.coreApi.referenceData
                          .addChequeBook(
                            bankAccountCode: bankAccount.code,
                            yard: widget.controller.primaryYard!,
                            startNumber: addChequeBookModel.startNumber.value!,
                            uniqueNumbers: formattedUniqueNumbers,
                          );
                      if (result.success && context.mounted) {
                        await widget.controller.getChequeBooks(
                          widget.filterController
                              .tryGetFilter<CompanyBankAccount>(
                                key: ChequeBooksFilterController
                                    .kCompanyBankAccount,
                              ),
                          context,
                        );
                        if (context.mounted) {
                          Navigator.of(context).pop();
                          await EmrModal.showMessageBar(
                            context,
                            context.l10n.newChequeBookAdded,
                          );
                        }
                      } else if (context.mounted) {
                        Navigator.of(context).pop();
                        await EmrModal.showMessageBar(
                          context,
                          context.l10n.failedToAddANewChequeBook,
                          messageType: MessageBarTypes.error,
                        );
                      }
                    },
                  );
                },
                allocate: (chequeBook) async {
                  final allocateFormKey = GlobalKey<FormState>();
                  final allocateModel = AllocateChequeNumbersFormData();

                  await EmrDialog.modal<bool?>(
                    context,
                    titleText: context.l10n.allocateChequeNumbers,
                    acceptLabel: context.l10n.save,
                    builder: (BuildContext dialogContext) =>
                        AllocateChequeNumbersForm(
                          formKey: allocateFormKey,
                          model: allocateModel,
                          territory: widget.filterController
                              .tryGetFilter<Territory>(
                                key: ChequeBooksFilterController.kTerritory,
                              )!
                              .value!,
                          remaining: chequeBook.remaining,
                        ),
                    onAccept: () async {
                      if (!allocateFormKey.currentState!.validate()) {
                        return;
                      }

                      final bankAccount = widget.filterController
                          .tryGetFilter<CompanyBankAccount>(
                            key:
                                ChequeBooksFilterController.kCompanyBankAccount,
                          )!
                          .value;

                      final result = await context.coreApi.referenceData
                          .allocateChequeNumbers(
                            bankAccountCode: bankAccount!.code,
                            yardCode: allocateModel.yard.value!.yardCode,
                            parentYardCode: chequeBook.yardCode,
                            allocationSize: allocateModel.blockSize.value!,
                          );

                      if (result.success && context.mounted) {
                        await widget.controller.getChequeBooks(
                          widget.filterController
                              .tryGetFilter<CompanyBankAccount>(
                                key: ChequeBooksFilterController
                                    .kCompanyBankAccount,
                              ),
                          context,
                        );
                      } else if (context.mounted) {
                        await EmrModal.showMessageBar(
                          context,
                          context.l10n.failedToAllocateChequeNumbers,
                          messageType: MessageBarTypes.error,
                        );
                      }

                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    },
                  );
                },
              ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.gutter),
              child: Divider(height: 1),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // We only skip the first yard if we have a primary yard to
                    // to allocate cheque books from.
                    for (final chequeBook in chequeBooks.skip(
                      hasPrimaryYard ? 1 : 0,
                    )) ...[
                      ChequeBookRow(chequeBook: chequeBook),
                      const SizedBox(height: Insets.gutter),
                    ],
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Map<String, String> _parseUniqueNumbers(String input, int numberOfDigits) {
    final results = <String, String>{};

    input.replaceAll(',', '');

    final regex = RegExp(r'(\d+)(?:\s*:\s*|\s+)(\S+)');

    final matches = regex.allMatches(input);

    if (matches.isEmpty) {
      EmrModal.showMessageBar(
        context,
        context.l10n.noUniqueNumbersFound,
        messageType: MessageBarTypes.error,
      );
      return {};
    }

    for (final match in matches) {
      final key = match.group(1);
      final value = match.group(2);

      if (key == null || value == null) {
        EmrModal.showMessageBar(
          context,
          context.l10n.invalidUniqueNumbersInput,
          messageType: MessageBarTypes.error,
        );
        return {};
      }

      if (results.containsKey(key)) {
        EmrModal.showMessageBar(
          context,
          context.l10n.duplicatesFoundInUniqueNumbers,
          messageType: MessageBarTypes.error,
        );
        return {};
      }

      if (value.length != numberOfDigits) {
        EmrModal.showMessageBar(
          context,
          context.l10n.allUniqueValuesMustBe(numberOfDigits),
          messageType: MessageBarTypes.error,
        );
        return {};
      }

      results[key] = value;
    }

    return results;
  }
}
