import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/extensions/extensions.dart';
import 'package:emr_one_elv_core/models/batch_quote_search_criteria.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_dialog.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmailButton extends StatefulWidget {
  const EmailButton({
    required this.customersEmail,
    required this.onSend,
    required this.quoteStatus,
    this.emailUserEnabled = false,
    this.enabled = true,
    this.showToolTip = false,
    super.key,
  });

  final String customersEmail;
  final QuoteStatusEnum quoteStatus;
  final bool showToolTip;
  final Future<void> Function({
    required BuildContext context,
    required bool isDraft,
    required bool showBattery,
    required bool showCat,
    required bool showVehicleDetails,
    required bool showWheelDetails,
    required String email,
  }) onSend;
  final bool emailUserEnabled;
  final bool enabled;

  @override
  State<EmailButton> createState() => _EmailButtonState();
}

class _EmailButtonState extends State<EmailButton> {
  late bool showWheelDetails;
  late bool showCatDetails;
  late bool showVehicleDetails;
  late bool showBatteryDetails;
  late final TextEditingController emailController;
  bool canEmailCustomer = false;

  @override
  void initState() {
    super.initState();
    showCatDetails = true;
    showWheelDetails = true;
    showVehicleDetails = true;
    showBatteryDetails = true;
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final userInfoEmail =
        Provider.of<UserInfoService>(context).userInfo.emailAddress;
    return Tooltip(
      message: widget.showToolTip ? context.l10n.emailAddressMissing : '',
      child: OutlinedButton(
        onPressed: widget.enabled
            ? () => ElvDialog.action(
                  context,
                  content: StatefulBuilder(
                    builder: (context, setState) {
                      _setCanEmailCustomer();
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.customersEmail.isNotEmpty)
                            Text(
                              '${context.l10n.email}: ${_customersEmail()}',
                              style: EmrOneConstants.kSmallestHeadingTextStyle,
                            ),
                          if (widget.customersEmail.isEmpty)
                            Padding(
                              padding: const EdgeInsets.all(Insets.gutter / 2),
                              child: TextFormField(
                                controller: emailController,
                                onChanged: (v) =>
                                    setState(_setCanEmailCustomer),
                                decoration: InputDecoration(
                                  label:
                                      Text(context.l10n.customersEmailAddress),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: Insets.gutter * 2,
                              bottom: Insets.gutter,
                            ),
                            child: Text(
                              context.l10n.whatInformationWouldYouLikeToInclude,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  TitledCheckbox(
                                    label: context.l10n.batteryDetails,
                                    value: showBatteryDetails,
                                    onChanged: ({required bool value}) {
                                      setState(
                                        () => showBatteryDetails = value,
                                      );
                                    },
                                  ),
                                  TitledCheckbox(
                                    label: context.l10n.wheelDetails,
                                    value: showWheelDetails,
                                    onChanged: ({required bool value}) {
                                      setState(
                                        () => showWheelDetails = value,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  TitledCheckbox(
                                    label: context.l10n.catDetails,
                                    value: showCatDetails,
                                    onChanged: ({required bool value}) {
                                      setState(
                                        () => showCatDetails = value,
                                      );
                                    },
                                  ),
                                  TitledCheckbox(
                                    label: context.l10n.vehicleDetails,
                                    value: showVehicleDetails,
                                    onChanged: ({required bool value}) {
                                      setState(
                                        () => showVehicleDetails = value,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Insets.gutter),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () => context.pop(),
                                  child: Text(context.l10n.cancel),
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: canEmailCustomer
                                          ? () {
                                              EmrDialog.busy(
                                                context,
                                                titleText:
                                                    context.l10n.sendingEmail,
                                              );
                                              widget
                                                  .onSend(
                                                context: context,
                                                showBattery: showBatteryDetails,
                                                showCat: showCatDetails,
                                                showVehicleDetails:
                                                    showVehicleDetails,
                                                showWheelDetails:
                                                    showWheelDetails,
                                                isDraft: widget.quoteStatus ==
                                                    QuoteStatusEnum.draft,
                                                email: widget.customersEmail
                                                        .isNotEmpty
                                                    ? widget.customersEmail
                                                    : emailController.text,
                                              )
                                                  .then((value) {
                                                if (context.mounted) {
                                                  context.pop();
                                                  context.pop();
                                                }
                                              });
                                            }
                                          : null,
                                      child: Text(context.l10n.emailCustomer),
                                    ),
                                    if (widget.emailUserEnabled)
                                      TextButton(
                                        onPressed: () {
                                          EmrDialog.busy(
                                            context,
                                            titleText:
                                                context.l10n.sendingEmail,
                                          );
                                          widget
                                              .onSend(
                                            context: context,
                                            showBattery: showBatteryDetails,
                                            showCat: showCatDetails,
                                            showVehicleDetails:
                                                showVehicleDetails,
                                            showWheelDetails: showWheelDetails,
                                            isDraft: widget.quoteStatus ==
                                                QuoteStatusEnum.draft,
                                            email: userInfoEmail,
                                          )
                                              .then((value) {
                                            if (context.mounted) {
                                              context.pop();
                                              context.pop();
                                            }
                                          });
                                        },
                                        child: Text(
                                          context.l10n.emailSelf,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  titleText: context.l10n.email,
                )
            : null,
        child: Text(
          context.l10n.email,
        ),
      ),
    );
  }

  void _setCanEmailCustomer() {
    canEmailCustomer = widget.customersEmail.isValidEmail() ||
        emailController.text.isValidEmail();
  }

  String _customersEmail() {
    return widget.customersEmail.isValidEmail()
        ? widget.customersEmail
        : emailController.text;
  }
}
