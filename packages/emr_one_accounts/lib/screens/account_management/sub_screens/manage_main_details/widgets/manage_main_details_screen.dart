import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_main_details/widgets/edit_account_settings.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageMainDetailsScreen extends StatefulWidget {
  const ManageMainDetailsScreen({
    required this.accountId,
    required this.controller,
    required this.mainDetailFormKey,
    super.key,
  });

  final String accountId;
  final ManageMainDetailsController controller;
  final GlobalKey<FormState> mainDetailFormKey;

  @override
  State<ManageMainDetailsScreen> createState() =>
      _ManageMainDetailsScreenState();
}

class _ManageMainDetailsScreenState extends State<ManageMainDetailsScreen> {
  Future<void>? _referenceDataFuture;

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
            final referenceDataFuture = _referenceDataFuture ??=
                _prepareController(account);

            return FutureBuilder<void>(
              future: referenceDataFuture,
              builder: (context, referenceDataSnapshot) {
                if (referenceDataSnapshot.connectionState !=
                    ConnectionState.done) {
                  return const Center(child: CircularProgressIndicator());
                }

                return Column(
              children: [
                Expanded(
                  child: Form(
                    key: widget.mainDetailFormKey,
                    child: EmrTabBarVerticalView(
                      children: [
                        EditMainDetails(
                          context,
                          title: context.l10n.mainDetails,
                          controller: widget.controller,
                        ),
                        EditAccountSettings(
                          context,
                          title: context.l10n.settings,
                          controller: widget.controller,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
              },
            );
          },
    );
  }

  Future<void> _prepareController(Account? account) async {
    widget.controller.setAccount(account);
    await widget.controller.loadReferenceData();
  }
}
