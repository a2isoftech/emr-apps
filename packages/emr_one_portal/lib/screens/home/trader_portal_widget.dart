import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class TraderPortalWidget extends StatelessWidget {
  const TraderPortalWidget({
    required this.userInfo,
    super.key,
  });

  final AccountUserInfo userInfo;

  Widget _getQrCode(String partyAccountNumber, Color? colour) => EmrQrCode(
        value: partyAccountNumber,
        colour: colour,
      );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brandColours =
        theme.extension<EOBrandTheme>() ?? const EOBrandTheme();
    final qrCodeHeight = context.qrCodeHeight();
    final partyAccountNumber = userInfo.partyAccountNumber ?? '';

    return Column(
      children: [
        BlueHeader(
          headingPrimary: userInfo.name,
          headingSecondary: 'Account # : '
              '${userInfo.partyAccountNumber}',
        ),
        const BreadCrumb(
          paths: [''],
          currentPage: 'HOME',
        ),
        BodyShell(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            'Welcome ${userInfo.name}',
                            style: theme.textTheme.headlineSmall,
                          ),
                          verticalSpacer(height: Insets.gutter * 2),
                          HelpPopup(
                            addPopupIndication: false,
                            clickable: Container(
                              width: 250,
                              height: 250,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: brandColours.brandColour,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    context.l10n.accountQrCode,
                                    style: theme.textTheme.labelLarge!.copyWith(
                                      color: brandColours.onBrandColour,
                                    ),
                                  ),
                                  verticalSpacer(),
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: HelpPopup(
                                      addPopupIndication: false,
                                      clickable: Align(
                                        alignment: Alignment.centerLeft,
                                        child: _getQrCode(
                                          partyAccountNumber,
                                          brandColours.onBrandColour,
                                        ),
                                      ),
                                      title: context.l10n.accountQrCode,
                                      popup: SizedBox(
                                        height: qrCodeHeight,
                                        width: qrCodeHeight,
                                        child: _getQrCode(
                                          partyAccountNumber,
                                          null,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
