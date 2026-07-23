import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountDetailsScreen extends StatelessWidget {
  AccountDetailsScreen({
    super.key,
  });

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final controllerDeaf = Provider.of<AccountDetailsController>(
      context,
      listen: false,
    );

    return FutureBuilder(
      builder: (
        BuildContext ctx,
        AsyncSnapshot<ChangeRequestViewModel> snapshot,
      ) {
        if (ConnectionState.done == snapshot.connectionState) {
          if (snapshot.data == null || snapshot.data!.model == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.not_accessible,
                    size: 128,
                  ),
                  Text(
                    'Account details not found for '
                    '${controllerDeaf.userInfoService.getPartyAccountNumber()}',
                  ),
                ],
              ),
            );
          } else {
            final newModel = snapshot.data!.model;
            final existingModel = AccountDetailsModel.clone(newModel!);
            return Column(
              children: [
                BlueHeader(
                  headingPrimary: snapshot.data?.model?.accountName ?? 'N/A',
                  headingSecondary: context.l10n.showAccountNumber(
                    '${snapshot.data?.model?.partyAccountNumber}',
                  ),
                ),
                BreadCrumb(
                  paths: [context.l10n.home.toUpperCase()],
                  currentPage: context.l10n.accountDetails.toUpperCase(),
                ),
                BodyShell(
                  child: SingleChildScrollView(
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKey,
                      child: Consumer<AccountDetailsController>(
                        builder: (context, controller, child) {
                          if (controller.isSubmitting()) {
                            return Padding(
                              padding: const EdgeInsets.all(
                                Insets.gutter,
                              ),
                              child: processingIndicator(),
                            );
                          }

                          if (controller.detailsSubmitted) {
                            return SizedBox(
                              height: context.screenHeight() / 2,
                              child: Center(
                                child: Text(
                                  'Request to change account details '
                                  'submitted successfully',
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    color: theme.primaryColor,
                                  ),
                                ),
                              ),
                            );
                          }

                          final hasPendingChangeRequest = snapshot
                                  .data
                                  ?.changeRequestSummary
                                  .hasPendingChangeRequest ??
                              false;

                          final headerWidgets = [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                Insets.gutter,
                                Insets.gutter,
                                0,
                                Insets.gutter * 2,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.l10n.accountDetails,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  Text(
                                    context.l10n.accountEditNote,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ],
                              ),
                            ),
                            if (!controller
                                .userInfoService.userInfo.isRetail) ...{
                              Padding(
                                padding: const EdgeInsets.all(
                                  Insets.gutter,
                                ),
                                child: Wrap(
                                  children: [
                                    colouredButton(
                                      width: 200,
                                      text: hasPendingChangeRequest
                                          ? context.l10n.changeRequestPending
                                          : (controller.isInReadOnlyModel()
                                              ? context.l10n.requestChange
                                              : context.l10n.cancel),
                                      color: hasPendingChangeRequest
                                          ? theme.disabledColor
                                          : theme.primaryColor,
                                      textColor: theme.colorScheme.onSecondary,
                                      onPressed: hasPendingChangeRequest
                                          ? null
                                          : () {
                                              controller.toggleReadOnlyMode(
                                                value: !controller
                                                    .isInReadOnlyModel(),
                                              );
                                            },
                                      tooltip: snapshot
                                          .data?.changeRequestSummary.tooltip,
                                    ),
                                  ],
                                ),
                              ),
                            },
                          ];
                          return Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (context.isInPortraitMode()) ...{
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: headerWidgets,
                                    ),
                                  } else ...{
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: headerWidgets,
                                    ),
                                  },
                                  if (controller.isInReadOnlyModel()) ...{
                                    ReadOnlyDetails(
                                      controller: controller,
                                      model: existingModel,
                                    ),
                                  } else ...{
                                    EditDetails(
                                      controller: controller,
                                      existingModel: existingModel,
                                      newModel: newModel,
                                      formKey: _formKey,
                                      countryId:
                                          snapshot.data?.country?.shortName ??
                                              PortalStrings.defaultCountry,
                                    ),
                                  },
                                ],
                              ),
                              FeedbackBar(
                                showMessage: controller.showFeedback(),
                                message: controller.feedbackModel.message ?? '',
                                feedbackType:
                                    controller.feedbackModel.feedbackType,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        } else {
          return processingIndicator();
        }
      },
      future: controllerDeaf.getAccountDetails(Localizations.localeOf(context)),
    );
  }
}
