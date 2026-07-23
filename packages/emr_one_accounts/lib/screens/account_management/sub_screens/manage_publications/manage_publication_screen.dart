import 'package:collection/collection.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_publications/widgets/allowed_product_information.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_publications/widgets/allowed_yard_information.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManagePublicationScreen extends StatefulWidget {
  const ManagePublicationScreen({
    required this.accountId,
    required this.publicationId,
    required this.controller,
    required this.publicationsFormKey,
    super.key,
  });

  final String accountId;
  final String? publicationId;
  final ManagePublicationsController controller;
  final GlobalKey<FormState> publicationsFormKey;
  @override
  State<ManagePublicationScreen> createState() =>
      _ManagePublicationScreenState();
}

class _ManagePublicationScreenState extends State<ManagePublicationScreen> {
  final GlobalKey<FormState> publicationsFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.controller.getAccount(
        widget.accountId,
        widget.publicationId,
      ),
      builder: (BuildContext ctx, AsyncSnapshot<Account?> snapshot) {
        AccountPublication? publication;
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          widget.controller.account = snapshot.data;
          publication = (widget.controller.account?.publications ?? [])
              .firstWhereOrNull(
                (c) => c.publication.id == widget.publicationId,
              );
          widget.controller.setPublication(publication);
        }

        return Column(
          children: [
            Expanded(
              child: (snapshot.connectionState != ConnectionState.done)
                  ? const Center(child: CircularProgressIndicator())
                  : (snapshot.data == null)
                  ? Center(child: Text(context.l10n.publicationNotFound))
                  : Form(
                      key: widget.publicationsFormKey,
                      child: ValueListenableBuilder(
                        valueListenable: widget.controller.data.newPublication,
                        builder: (context, selectedPublication, _) {
                          final hasSelection =
                              selectedPublication != null &&
                              selectedPublication.key.isNotEmpty;

                          return EmrTabBarVerticalView(
                            key: ValueKey(hasSelection),
                            children: [
                              PublicationInformation(
                                context,
                                title: context.l10n.publicationInformation,
                                controller: widget.controller,
                                publicationIds:
                                    (widget.controller.account?.publications ??
                                            [])
                                        .cast<AccountPublication>()
                                        .map<String>(
                                          (publication) =>
                                              publication.publication.id,
                                        )
                                        .toList(),
                              ),

                              if (hasSelection)
                                AllowedProductInformation(
                                  title: context.l10n.allowedProducts,
                                  controller: widget.controller,
                                ),

                              if (hasSelection)
                                AllowedYardInformation(
                                  title: context.l10n.allowedYards,
                                  controller: widget.controller,
                                ),
                            ],
                          );
                        },
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }
}
