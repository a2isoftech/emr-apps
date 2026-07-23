import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/account_models/account_models.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/services/quote_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SummaryAddAccountDetails extends StatefulWidget {
  const SummaryAddAccountDetails({
    required this.onPressed,
    super.key,
  });

  final Future<void> Function({
    required AccountDetails accountDetails,
    required QuoteService quoteService,
  }) onPressed;

  @override
  State<SummaryAddAccountDetails> createState() => _AddAccountDetailsState();
}

class _AddAccountDetailsState extends State<SummaryAddAccountDetails> {
  late final TextEditingController firstNameController;
  late final TextEditingController secondNameController;
  late final TextEditingController emailController;
  late final TextEditingController contactNumberController;

  @override
  void initState() {
    super.initState();

    firstNameController = TextEditingController();
    secondNameController = TextEditingController();
    emailController = TextEditingController();
    contactNumberController = TextEditingController();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    secondNameController.dispose();
    emailController.dispose();
    contactNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<QuickQuoteController>(context);
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              children: [
                const AccountDetailsHeader(),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AccountDetailsInputField(
                        label: context.l10n.firstName,
                        textController: firstNameController,
                        onChanged: (v) => setState(() {
                          controller.model.accountDetails.firstName = v;
                          controller.showAddAccountDetails();
                        }),
                      ),
                      AccountDetailsInputField(
                        label: context.l10n.lastName,
                        textController: secondNameController,
                        onChanged: (v) => setState(() {
                          controller.model.accountDetails.lastName = v;
                          controller.showAddAccountDetails();
                        }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AccountDetailsInputField(
                        label: context.l10n.email,
                        textController: emailController,
                        onChanged: (v) => setState(() {
                          controller.model.accountDetails.email = v;
                          controller.showAddAccountDetails();
                        }),
                      ),
                      AccountDetailsInputField(
                        label: 'Contact Number (Optional)',
                        textController: contactNumberController,
                        onChanged: (v) => setState(() {
                          controller.model.accountDetails.contact = v;
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AccountDetailsHeader extends StatelessWidget {
  const AccountDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: Text(
        'Additional Details are needed for a LDECASH Account Quote',
        style: EmrOneConstants.kSmallestHeadingTextStyle,
      ),
    );
  }
}

class AccountDetailsInputField extends StatelessWidget {
  const AccountDetailsInputField({
    required this.label,
    required this.textController,
    required this.onChanged,
    super.key,
  });

  final String label;
  final TextEditingController textController;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Insets.gutter / 2),
      child: SizedBox(
        width: 300,
        child: TextFormField(
          controller: textController,
          autofocus: true,
          onChanged: onChanged,
          decoration: InputDecoration(
            label: Text(
              label,
            ),
          ),
        ),
      ),
    );
  }
}
