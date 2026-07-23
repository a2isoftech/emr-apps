import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/screens/contact_us/layout_switcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({
    required this.accountService,
    required this.userInfoService,
    super.key,
  });

  final AccountServicePortal accountService;
  final CustomerUserInfoService userInfoService;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FutureBuilder(
      builder: (BuildContext ctx, AsyncSnapshot<ContactUsModel?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          if (snapshot.data == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.not_accessible,
                    size: 128,
                  ),
                  Text(
                    context.l10n.contactUsDetailsNotFoundFor(
                      userInfoService.getPartyAccountNumber(),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Column(
              children: [
                BlueHeader(
                  headingPrimary: snapshot.data?.accountName ?? 'N/A',
                  headingSecondary: context.l10n.showAccountNumber(
                    '${snapshot.data?.partyAccountNumber}',
                  ),
                ),
                BreadCrumb(
                  paths: [context.l10n.home.toUpperCase()],
                  currentPage: context.l10n.contactUs.toUpperCase(),
                ),
                BodyShell(
                  child: SingleChildScrollView(
                    child: LayoutSwitcher(
                      widgets1Text: [
                        Text(
                          context.l10n.contactUs,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          context.l10n.howCanWeHelp,
                          style: theme.textTheme.labelMedium,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          width: 200,
                          child: Image(
                            image: AssetImage(
                              'assets/images/logo.png',
                              package: 'emr_flutter_theme',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                      widgets2HoAddress: [
                        Text(
                          context.l10n.headOffice,
                          style: theme.textTheme.headlineSmall,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        for (int x = 0;
                            x < snapshot.data!.addresses.length;
                            x++) ...[
                          Text(
                            snapshot.data!.addresses[x],
                            style: theme.textTheme.labelMedium,
                          ),
                        ],
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () async {
                            final phoneno =
                                Uri.parse('tel:${snapshot.data!.phone}');
                            if (await canLaunchUrl(phoneno)) {
                              await launchUrl(phoneno);
                            }
                          },
                          child: Text(
                            snapshot.data!.phone,
                            style: theme.textTheme.labelSmall!.copyWith(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            final email = Uri.parse(
                              // ignore: lines_longer_than_80_chars
                              'mailto:${userInfoService.userInfo.isSupplier ? PortalStrings.supplierAccountContactUsEmail : snapshot.data!.email}',
                            );
                            if (await canLaunchUrl(email)) {
                              await launchUrl(email);
                            }
                          },
                          child: Text(
                            userInfoService.userInfo.isSupplier
                                ? PortalStrings.supplierAccountContactUsEmail
                                : snapshot.data!.email,
                            style: theme.textTheme.labelSmall!.copyWith(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                      widget3Image: Image.asset(
                        'assets/images/contact_us.png',
                        package: 'emr_one_portal',
                        fit: BoxFit.fill,
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
      future: accountService.getContactDetails(),
    );
  }
}
