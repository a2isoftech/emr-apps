import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageProductEWCScreen extends StatefulWidget {
  const ManageProductEWCScreen({
    required this.accountId,
    required this.productId,
    required this.productEwcFormKey,
    this.controller,
    super.key,
  });

  final String accountId;
  final String? productId;
  final ManageProductEWCController? controller;
  final GlobalKey<FormState> productEwcFormKey;

  @override
  State<ManageProductEWCScreen> createState() => _ManageProductEWCScreenState();
}

class _ManageProductEWCScreenState extends State<ManageProductEWCScreen> {
  @override
  Widget build(BuildContext context) {
    final controller =
        widget.controller ??
        Provider.of<ManageProductEWCController>(context, listen: false);

    return FutureBuilder<(Account?, String?, String?)>(
      future: context.coreApi.accountService.getAccountInfo(widget.accountId),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            child: const Center(child: CircularProgressIndicator()),
          );
        }

        final account = snapshot.data?.$1;
        if (account == null) {
          return Center(child: Text(context.l10n.productEwcNotFound));
        }

        controller.setAccount(account);

        final productEWC = account.productEWCCodes.firstWhereOrNull(
          (c) => c.product.id == widget.productId,
        );

        if (controller.productEWC == null) {
          controller.setProductEWC(productEWC);
        }

        return Form(
          key: widget.productEwcFormKey,
          child: EmrTabBarVerticalView(
            children: [
              EditProductEWC(
                context,
                controller: controller,
                title: context.l10n.productEwc,
              ),
            ],
          ),
        );
      },
    );
  }
}
