import 'package:emr_one_elv_core/widgets/dialog/elv_selection_dialog.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyout_builder.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/common/custom_selection_box.dart';
import 'package:emr_one_elv_quotes/common/quick_quote_input_field.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/quick_quotes_widgets.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AddAccountDetails extends StatefulWidget {
    const AddAccountDetails({
    required this.controller,
    super.key,
  });

  final QuickQuoteController controller;

  @override
  State<AddAccountDetails> createState() => _AddAccountDetailsState();
}

class _AddAccountDetailsState extends State<AddAccountDetails> {
  @override
  Widget build(BuildContext context) {
    final isCashAccount = (widget.controller.baseState.temporaryAccountStore ==
                null &&
            widget.controller.baseState.batchQuote?.accountModel == null) ||
        (widget.controller.baseState.temporaryAccountStore?.code ==
            ElvConstants.ldecashAccountNumber) ||
        (widget.controller.baseState.batchQuote?.accountModel?.accountNumber ==
            ElvConstants.ldecashAccountNumber);

    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter * 2),
        child: Wrap(
          runSpacing: Insets.gutter,
          children: [
            ChangeAccount(
              accountController: widget.controller.accountController,
            ),
            if (widget.controller.activeTerritory.showPostCodeField())
              QuickQuoteInputField(
                label: context.l10n.postCode,
                textController: widget.controller.postCodeController,
                onTextDirty: (value) async {
                  if (value.isEmpty) return;

                  final isValid = await isValidPostcode(
                    widget.controller,
                    value,
                    context,
                  );

                  if (!context.mounted) return;

                  if (isValid) {
                    unawaited(
                      EmrDialog.busy(
                        context,
                        titleText: context.l10n.refreshingQuotePrice,
                      ),
                    );
                    if (!context.mounted) return;
                    await widget.controller.changePostCode(
                      context,
                    );
                    if (context.mounted && Navigator.of(context).canPop()) {
                      context.pop();
                    }
                  } 
                  else 
                  {
                    // Clear the input field if postcode is invalid
                    widget.controller.postCodeController.clear();
                  }
                },
              ),
            ChangeYard(
              yardSearchController: widget.controller.yardSearchController,
            ),
            if (isCashAccount) ...[
              QuickQuoteInputField(
                label: context.l10n.firstName,
                textController: widget.controller.firstNameController,
                onChanged: (v) => setState(() {
                  widget.controller.model.accountDetails.firstName = v;
                  widget.controller.toggleCanSubmit();
                }),
              ),
              QuickQuoteInputField(
                label: context.l10n.lastName,
                textController: widget.controller.secondNameController,
                onChanged: (v) => setState(() {
                  widget.controller.model.accountDetails.lastName = v;
                  widget.controller.toggleCanSubmit();
                }),
              ),
            ],
            if (isCashAccount ||
                widget.controller.emailController.text.isNotEmpty)
              QuickQuoteInputField(
                label: _emailText(widget.controller),
                textController: widget.controller.emailController,
                onChanged: (v) => setState(() {
                  widget.controller.model.accountDetails.email = v;
                  widget.controller.toggleCanSubmit();
                }),
                enabled: isCashAccount,
              ),
            if (isCashAccount ||
                widget.controller.contactNumberController.text.isNotEmpty)
              QuickQuoteInputField(
                label: '${context.l10n.contactNumber} '
                    '(${context.l10n.optional})',
                textController: widget.controller.contactNumberController,
                onChanged: (v) => setState(() {
                  widget.controller.model.accountDetails.contact = v;
                  widget.controller.toggleCanSubmit();
                }),
                enabled: isCashAccount,
              ),
            if (!isCashAccount &&
                widget.controller.mobileNumberController.text.isNotEmpty)
              QuickQuoteInputField(
                label: context.l10n.mobileNumber,
                textController: widget.controller.mobileNumberController,
                enabled: false,
              ),
            if (widget.controller.baseState.batchQuote?.accountModel
                        ?.accountType ==
                    AccountTypeEnum.retail &&
                widget.controller.activeTerritory == ElvTerritory.uk) ...[
              QuickQuoteInputField(
                label: context.l10n.bankSortCode,
                textController: widget.controller.bankSortCodeController,
                maxLength: 6,
                textInputType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                enabled: widget.controller.allowEditBankDetails,
              ),
              QuickQuoteInputField(
                label: context.l10n.bankAccountNumber,
                textController: widget.controller.bankAccountNumberController,
                maxLength: 8,
                textInputType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                enabled: widget.controller.allowEditBankDetails,
              ),
            ],
            QuickQuoteInputField(
              label: context.l10n.notes,
              textController: widget.controller.notesController,
              textInputType: TextInputType.multiline,
            ),
            if (widget.controller.activeTerritory.showLeadSourceField())
              ChangeLeadSource(
                controller: widget.controller,
              ),
          ],
        ),
      ),
    );
  }

  Future<bool> isValidPostcode(
    QuickQuoteController controller,
    String postcode,
    BuildContext context,
  ) async {
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

  String _emailText(QuickQuoteController controller) {
    if (controller.activeTerritory.emailIsRequired()) {
      return context.l10n.email;
    }
    return '${context.l10n.email} (${context.l10n.optional})';
  }
}

class ChangeYard extends StatelessWidget {
  const ChangeYard({required this.yardSearchController, super.key});

  final TextEditingController yardSearchController;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuickQuoteController>(context);

    return QuickQuoteInputField(
      label: context.l10n.yard,
      readOnly: true,
      textController: TextEditingController(
        text: controller.getYardName(),
      ),
      onClear: (controller.model.selectedYard == null ||
              controller.activeTerritory == ElvTerritory.usa)
          ? null
          : () {
              yardSearchController.text = '';
              EmrDialog.busy(
                context,
                titleText: context.l10n.refreshingQuotePrice,
              );
              controller
                  .setYard(
                null,
              )
                  .then((value) {
                if (context.mounted && Navigator.of(context).canPop()) {
                  context.pop();
                }
              });
            },
      // disable until other yards are loaded
      onTap: () => controller.baseState.otherYards.isNotEmpty
          ? showElvSelectionDialog<Yard>(
              context: context,
              items: controller.baseState.otherYards,
              displayString: (yard) => '${yard.name} (${yard.yardCode})',
              onTap: (Yard yard) {
                context.pop();
                if (yard.yardCode !=
                    controller.baseState.batchQuote?.yard?.yardCode) {
                  EmrDialog.busy(
                    context,
                    titleText: context.l10n.refreshingQuotePrice,
                  );
                  controller
                      .setYard(
                    yard,
                  )
                      .then((value) {
                    if (context.mounted && Navigator.of(context).canPop()) {
                      context.pop();
                    }
                  });
                }
              },
              searchController: yardSearchController,
              title: context.l10n.changeYard,
              label: context.l10n.yardCode,
            )
          : null,
    );
  }
}

class ChangeAccount extends StatelessWidget {
  const ChangeAccount({
    required this.accountController,
    super.key,
  });

  final TextEditingController accountController;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuickQuoteController>(context);

    return QuickQuoteInputField(
      label: context.l10n.quotingFor,
      textController: accountController,
      readOnly: true,
      onTap: () => elvStandardFlyout(
        context: context,
        body: AccountSearch(
          controller: controller,
        ),
        heading: context.l10n.pleaseSelectAccount,
      ),
    );
  }
}

class ChangeLeadSource extends StatelessWidget {
  const ChangeLeadSource({
    required this.controller,
    super.key,
  });

  final QuickQuoteController controller;

  @override
  Widget build(BuildContext context) {
    const textBoxWidth = 320.0;

    return Padding(
      padding: const EdgeInsets.only(right: Insets.gutter / 2),
      child: SizedBox(
        width: textBoxWidth,
        child: CustomSelectBox<LeadSource>(
          label: context.l10n.leadSource,
          value: controller.model.selectedLeadSource,
          items: CustomControlItems.fromMap<LeadSource>(
            controller.leadSourceHashMap,
          ),
          sorted: false,
          onChanged: controller.leadSourceHashMap.isEmpty
              ? null
              : (value) async {
                  unawaited(
                    EmrDialog.busy(
                      context,
                      titleText: context.l10n.refreshingQuotePrice,
                    ),
                  );
                  await controller.setLeadSource(value!);
                  if (context.mounted && Navigator.of(context).canPop()) {
                    context.pop();
                  }
                },
          decoration: InputDecoration(
            label: Text(
              context.l10n.leadSource,
            ),
          ),
        ),
      ),
    );
  }
}
