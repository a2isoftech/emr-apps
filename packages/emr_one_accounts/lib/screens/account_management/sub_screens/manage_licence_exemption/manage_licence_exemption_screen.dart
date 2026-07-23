import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_licence_exemption/controllers/manage_licence_exemption_controller.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_licence_exemption/widgets/edit_licence_exemption.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageLicenceExemptionScreen extends StatefulWidget {
  const ManageLicenceExemptionScreen({
    required this.accountId,
    required this.controller,
    required this.licenceExemptionFormKey,
    super.key,
  });

  final String accountId;
  final ManageLicenceExemptionController controller;
  final GlobalKey<FormState> licenceExemptionFormKey;

  @override
  State<ManageLicenceExemptionScreen> createState() =>
      _ManageLicenceExemptionScreenState();
}

class _ManageLicenceExemptionScreenState
    extends State<ManageLicenceExemptionScreen> {
  late Future<(Account?, String?, String?)> _accountInfoFuture;
  String? _initializedAccountId;

  @override
  void initState() {
    super.initState();
    _accountInfoFuture = context.coreApi.accountService.getAccountInfo(
      widget.accountId,
    );
  }

  @override
  void didUpdateWidget(covariant ManageLicenceExemptionScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.accountId != widget.accountId) {
      _initializedAccountId = null;
      _accountInfoFuture = context.coreApi.accountService.getAccountInfo(
        widget.accountId,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<(Account?, String?, String?)>(
      future: _accountInfoFuture,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.data?.$2 == AccountAccessConstants.accountNotAuthorized) {
          return Center(child: Text(context.l10n.doNotHaveAccessToAccount));
        }
        if (snapshot.data == null || snapshot.data?.$1 == null) {
          return Center(child: Text(context.l10n.accountNotFound));
        }

        final account = snapshot.data!.$1!;
        if (_initializedAccountId != account.id) {
          widget.controller.setAccount(account);
          _initializedAccountId = account.id;
        }

        return Form(
          key: widget.licenceExemptionFormKey,
          child: EmrTabBarVerticalView(
            children: [
              EditLicenceExemption(
                context,
                title: context.l10n.handlingWaste,
                controller: widget.controller,
              ),
            ],
          ),
        );
      },
    );
  }
}
