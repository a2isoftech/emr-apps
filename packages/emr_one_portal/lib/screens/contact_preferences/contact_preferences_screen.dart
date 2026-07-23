import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactPreferncesScreen extends StatefulWidget {
  const ContactPreferncesScreen({
    required this.userInfoService,
    super.key,
  });
  final CustomerUserInfoService userInfoService;
  @override
  State<ContactPreferncesScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ContactPreferncesScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = Provider.of<ContactPreferencesController>(
      context,
      listen: false,
    );
    return FutureBuilder(
      future: controller.loadSignupModel(),
      builder: (BuildContext ctx, AsyncSnapshot<AccountModel?> snapshot) {
        if (ConnectionState.done != snapshot.connectionState) {
          return const Center(
            child: SizedBox(
              height: Insets.gutter * 2,
              width: Insets.gutter * 2,
              child: CircularProgressIndicator(),
            ),
          );
        }
        final model = snapshot.data;
        return Column(
          children: [
            BlueHeader(
              headingPrimary: widget.userInfoService.userInfo.name,
              headingSecondary: context.l10n.showAccountNumber(
                '${widget.userInfoService.userInfo.partyAccountNumber}',
              ),
            ),
            BreadCrumb(
              paths: [context.l10n.home.toUpperCase()],
              currentPage: context.l10n.contactPreferences,
            ),
            BodyShell(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.l10n.contactPreferences,
                                style: theme.textTheme.headlineSmall,
                              ),
                              Text(
                                context.l10n.updateYourPreferences,
                                style: theme.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Form(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(
                              Insets.gutter,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: theme.colorScheme.inverseSurface,
                              ),
                              borderRadius:
                                  BorderRadius.circular(Insets.gutter),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  context.l10n.personalPreferences,
                                  style: theme.textTheme.headlineSmall,
                                ),
                                verticalSpacer(),
                                SizedBox(
                                  width: 600,
                                  child: FutureBuilder<List<Yard>>(
                                    future: controller.yardsAvalaible(),
                                    builder: (context, yardSnapshot) {
                                      if (yardSnapshot.connectionState !=
                                          ConnectionState.done) {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      final yards = yardSnapshot.data ?? [];
                                      return DropdownButtonFormField(
                                        items: yards.map(
                                          (yard) {
                                            return DropdownMenuItem<String>(
                                              value: yard.yardCode,
                                              child: Text(yard.yardName),
                                            );
                                          },
                                        ).toList(),
                                        hint: Text(context.l10n.preferedSite),
                                        initialValue: model?.yardCode != null &&
                                                yards.any(
                                                  (yard) =>
                                                      yard.yardCode ==
                                                      model?.yardCode,
                                                )
                                            ? yards
                                                .firstWhere(
                                                  (yard) =>
                                                      yard.yardCode ==
                                                      model?.yardCode,
                                                )
                                                .yardCode
                                            : null,
                                        onChanged: (value) {
                                          controller.setDefaultYardCode(
                                            model: model!,
                                            val: value,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                verticalSpacer(),
                                Text(
                                  context.l10n.marketingPreferences,
                                  style: theme.textTheme.headlineSmall,
                                ),
                                verticalSpacer(),
                                Consumer<ContactPreferencesController>(
                                  builder: (context, ctrlThatListens, child) {
                                    return Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 250,
                                              child: CheckboxListTile(
                                                tristate: true,
                                                title: Text(
                                                  context.l10n.email,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                                value: model?.canEmail ?? false,
                                                onChanged: (value) => {
                                                  controller.setCanEmail(
                                                    model: model!,
                                                    val: value,
                                                  ),
                                                },
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150,
                                              child: CheckboxListTile(
                                                tristate: true,
                                                title: Text(
                                                  context.l10n.sms,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                                value: model?.canSms ?? false,
                                                onChanged: (value) => {
                                                  controller.setCanSms(
                                                    model: model!,
                                                    val: value,
                                                  ),
                                                },
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 250,
                                              child: CheckboxListTile(
                                                tristate: true,
                                                title: Text(
                                                  context.l10n.phone,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                                value: model?.canPhone ?? false,
                                                onChanged: (value) => {
                                                  controller.setCanPhone(
                                                    model: model!,
                                                    val: value,
                                                  ),
                                                },
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 150,
                                              child: CheckboxListTile(
                                                tristate: true,
                                                title: Text(
                                                  context.l10n.post,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                                value: model?.canPost ?? false,
                                                onChanged: (value) => {
                                                  controller.setCanPost(
                                                    model: model!,
                                                    val: value,
                                                  ),
                                                },
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                              ),
                                            ),
                                          ],
                                        ),
                                        verticalSpacer(),
                                        colouredButton(
                                          text: context.l10n.save,
                                          color: ctrlThatListens.canSubmit()
                                              ? theme.primaryColor
                                              : theme.disabledColor,
                                          onPressed: ctrlThatListens.canSubmit()
                                              ? () async {
                                                  await ctrlThatListens
                                                      .updateContactPreferences(
                                                    onError: (err) async {
                                                      if (context.mounted) {
                                                        await EmrModal
                                                            .showMessageBar(
                                                          context,
                                                          err,
                                                          messageType:
                                                              MessageBarTypes
                                                                  .error,
                                                        );
                                                      }
                                                    },
                                                    onSuccess:
                                                        (accountNumber) async {
                                                      if (context.mounted) {
                                                        if (accountNumber
                                                            .isEmpty) {
                                                          await EmrModal
                                                              .showMessageBar(
                                                            context,
                                                            context
                                                                .l10n
                                                                // ignore: lines_longer_than_80_chars
                                                                .preferenceErrMsg,
                                                            messageType:
                                                                MessageBarTypes
                                                                    .error,
                                                          );
                                                        } else {
                                                          context.goToHome();
                                                        }
                                                      }
                                                    },
                                                  );
                                                }
                                              : null,
                                        ),
                                        verticalSpacer(),
                                        colouredButton(
                                          text: context.l10n.cancel,
                                          color: ctrlThatListens.canSubmit()
                                              ? theme.primaryColor
                                              : theme.disabledColor,
                                          onPressed: () {
                                            context.goToHome();
                                          },
                                        ),
                                      ],
                                    );
                                  },
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
          ],
        );
      },
    );
  }
}
