import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageHeadOfficeDetailsScreen extends StatefulWidget {
  const ManageHeadOfficeDetailsScreen({
    required this.accountId,
    required this.manageheadOfficeController,
    required this.headOfficeDetailsFormKey,
    super.key,
  });

  final String accountId;
  final ManageHeadOfficeDetailsController manageheadOfficeController;
  final GlobalKey<FormState> headOfficeDetailsFormKey;

  @override
  State<ManageHeadOfficeDetailsScreen> createState() =>
      _ManageHeadOfficeDetailsScreenState();
}

class _ManageHeadOfficeDetailsScreenState
    extends State<ManageHeadOfficeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<(Account?, String?, String?)>(
      future: context.coreApi.accountService.getAccountInfo(widget.accountId),
      builder:
          (
            BuildContext ctx,
            AsyncSnapshot<(Account?, String?, String?)> snapshot,
          ) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.data?.$2 ==
                AccountAccessConstants.accountNotAuthorized) {
              return Center(child: Text(context.l10n.doNotHaveAccessToAccount));
            }
            if (snapshot.data == null) {
              return Center(child: Text(context.l10n.accountNotFound));
            }
            final account = snapshot.data?.$1;

            widget.manageheadOfficeController.setAccount(account);

            return Form(
              key: widget.headOfficeDetailsFormKey,
              child: EmrTabBarVerticalView(
                children: [
                  EditGeneralHeadOfficeDetails(
                    context,
                    title: context.l10n.general,
                    controller: widget.manageheadOfficeController,
                  ),
                  EditInvoiceHeadOfficeDetails(
                    context,
                    title: '${context.l10n.sales} - ${context.l10n.invoice}',
                    controller: widget.manageheadOfficeController,
                  ),
                  EditSelfBillingHeadOfficeDetails(
                    context,
                    title: context.l10n.selfBilling,
                    controller: widget.manageheadOfficeController,
                  ),
                  EditCreditControlHeadOfficeDetails(
                    context,
                    title: context.l10n.creditControl,
                    controller: widget.manageheadOfficeController,
                  ),
                  EditPaymentTermsHeadOfficeDetails(
                    context,
                    title: context.l10n.paymentTerms,
                    controller: widget.manageheadOfficeController,
                  ),
                  EditCreditTermsHeadOfficeDetails(
                    context,
                    title:
                        '${context.l10n.sales} - '
                        '${context.l10n.creditTerms}',
                    controller: widget.manageheadOfficeController,
                  ),
                  EditReportingHeadOfficeDetails(
                    context,
                    title: context.l10n.reporting1099,
                    controller: widget.manageheadOfficeController,
                  ),
                  EditFinancialGroupHeadOfficeDetails(
                    context,
                    title: context.l10n.financialGroups,
                    controller: widget.manageheadOfficeController,
                  ),
                ],
              ),
            );
          },
    );
  }
}
